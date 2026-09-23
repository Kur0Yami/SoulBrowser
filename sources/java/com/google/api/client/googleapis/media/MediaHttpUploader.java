package com.google.api.client.googleapis.media;

import com.google.api.client.googleapis.MethodOverride;
import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.ByteArrayContent;
import com.google.api.client.http.EmptyContent;
import com.google.api.client.http.GZipEncoding;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.InputStreamContent;
import com.google.api.client.http.MultipartContent;
import com.google.api.client.util.Beta;
import com.google.api.client.util.ByteStreams;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sleeper;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class MediaHttpUploader {
    public static final String CONTENT_LENGTH_HEADER = "X-Upload-Content-Length";
    public static final String CONTENT_TYPE_HEADER = "X-Upload-Content-Type";
    public static final int DEFAULT_CHUNK_SIZE = 10485760;
    private static final int KB = 1024;
    static final int MB = 1048576;
    public static final int MINIMUM_CHUNK_SIZE = 262144;
    private Byte cachedByte;
    private InputStream contentInputStream;
    private int currentChunkLength;
    private HttpRequest currentRequest;
    private byte[] currentRequestContentBuffer;
    private boolean directUploadEnabled;
    private boolean disableGZipContent;
    private boolean isMediaContentLengthCalculated;
    private final AbstractInputStreamContent mediaContent;
    private long mediaContentLength;
    private HttpContent metadata;
    private MediaHttpUploaderProgressListener progressListener;
    private final HttpRequestFactory requestFactory;
    private long totalBytesClientSent;
    private long totalBytesServerReceived;
    private final HttpTransport transport;
    private UploadState uploadState = UploadState.NOT_STARTED;
    private String initiationRequestMethod = HttpMethods.POST;
    private HttpHeaders initiationHeaders = new HttpHeaders();
    String mediaContentLengthStr = "*";
    private int chunkSize = DEFAULT_CHUNK_SIZE;
    Sleeper sleeper = Sleeper.DEFAULT;

    /* loaded from: classes3.dex */
    public static class ContentChunk {
        private final AbstractInputStreamContent content;
        private final String contentRange;

        public ContentChunk(AbstractInputStreamContent abstractInputStreamContent, String str) {
            this.content = abstractInputStreamContent;
            this.contentRange = str;
        }

        public AbstractInputStreamContent getContent() {
            return this.content;
        }

        public String getContentRange() {
            return this.contentRange;
        }
    }

    /* loaded from: classes3.dex */
    public enum UploadState {
        NOT_STARTED,
        INITIATION_STARTED,
        INITIATION_COMPLETE,
        MEDIA_IN_PROGRESS,
        MEDIA_COMPLETE
    }

    public MediaHttpUploader(AbstractInputStreamContent abstractInputStreamContent, HttpTransport httpTransport, HttpRequestInitializer httpRequestInitializer) {
        HttpRequestFactory createRequestFactory;
        this.mediaContent = (AbstractInputStreamContent) Preconditions.checkNotNull(abstractInputStreamContent);
        this.transport = (HttpTransport) Preconditions.checkNotNull(httpTransport);
        if (httpRequestInitializer == null) {
            createRequestFactory = httpTransport.createRequestFactory();
        } else {
            createRequestFactory = httpTransport.createRequestFactory(httpRequestInitializer);
        }
        this.requestFactory = createRequestFactory;
    }

    private ContentChunk buildContentChunk() {
        int i;
        int i2;
        int i3;
        AbstractInputStreamContent byteArrayContent;
        String str;
        if (isMediaLengthKnown()) {
            i = (int) Math.min(this.chunkSize, getMediaContentLength() - this.totalBytesServerReceived);
        } else {
            i = this.chunkSize;
        }
        if (isMediaLengthKnown()) {
            this.contentInputStream.mark(i);
            long j = i;
            byteArrayContent = new InputStreamContent(this.mediaContent.getType(), ByteStreams.limit(this.contentInputStream, j)).setRetrySupported(true).setLength(j).setCloseInputStream(false);
            this.mediaContentLengthStr = String.valueOf(getMediaContentLength());
        } else {
            byte[] bArr = this.currentRequestContentBuffer;
            if (bArr == null) {
                Byte b = this.cachedByte;
                if (b == null) {
                    i2 = i + 1;
                } else {
                    i2 = i;
                }
                byte[] bArr2 = new byte[i + 1];
                this.currentRequestContentBuffer = bArr2;
                if (b != null) {
                    bArr2[0] = b.byteValue();
                }
                i3 = 0;
            } else {
                int i4 = (int) (this.totalBytesClientSent - this.totalBytesServerReceived);
                System.arraycopy(bArr, this.currentChunkLength - i4, bArr, 0, i4);
                Byte b2 = this.cachedByte;
                if (b2 != null) {
                    this.currentRequestContentBuffer[i4] = b2.byteValue();
                }
                i2 = i - i4;
                i3 = i4;
            }
            int read = ByteStreams.read(this.contentInputStream, this.currentRequestContentBuffer, (i + 1) - i2, i2);
            if (read < i2) {
                i = Math.max(0, read) + i3;
                if (this.cachedByte != null) {
                    i++;
                    this.cachedByte = null;
                }
                if (this.mediaContentLengthStr.equals("*")) {
                    this.mediaContentLengthStr = String.valueOf(this.totalBytesServerReceived + i);
                }
            } else {
                this.cachedByte = Byte.valueOf(this.currentRequestContentBuffer[i]);
            }
            byteArrayContent = new ByteArrayContent(this.mediaContent.getType(), this.currentRequestContentBuffer, 0, i);
            this.totalBytesClientSent = this.totalBytesServerReceived + i;
        }
        this.currentChunkLength = i;
        if (i == 0) {
            str = "bytes */" + this.mediaContentLengthStr;
        } else {
            str = "bytes " + this.totalBytesServerReceived + "-" + ((this.totalBytesServerReceived + i) - 1) + "/" + this.mediaContentLengthStr;
        }
        return new ContentChunk(byteArrayContent, str);
    }

    private HttpResponse directUpload(GenericUrl genericUrl) {
        updateStateAndNotifyListener(UploadState.MEDIA_IN_PROGRESS);
        HttpContent httpContent = this.mediaContent;
        if (this.metadata != null) {
            httpContent = new MultipartContent().setContentParts(Arrays.asList(this.metadata, this.mediaContent));
            genericUrl.put("uploadType", "multipart");
        } else {
            genericUrl.put("uploadType", "media");
        }
        HttpRequest buildRequest = this.requestFactory.buildRequest(this.initiationRequestMethod, genericUrl, httpContent);
        buildRequest.getHeaders().putAll(this.initiationHeaders);
        HttpResponse executeCurrentRequest = executeCurrentRequest(buildRequest);
        try {
            if (isMediaLengthKnown()) {
                this.totalBytesServerReceived = getMediaContentLength();
            }
            updateStateAndNotifyListener(UploadState.MEDIA_COMPLETE);
            return executeCurrentRequest;
        } catch (Throwable th) {
            executeCurrentRequest.disconnect();
            throw th;
        }
    }

    private HttpResponse executeCurrentRequest(HttpRequest httpRequest) {
        if (!this.disableGZipContent && !(httpRequest.getContent() instanceof EmptyContent)) {
            httpRequest.setEncoding(new GZipEncoding());
        }
        return executeCurrentRequestWithoutGZip(httpRequest);
    }

    private HttpResponse executeCurrentRequestWithoutGZip(HttpRequest httpRequest) {
        new MethodOverride().intercept(httpRequest);
        httpRequest.setThrowExceptionOnExecuteError(false);
        return httpRequest.execute();
    }

    private HttpResponse executeUploadInitiation(GenericUrl genericUrl) {
        updateStateAndNotifyListener(UploadState.INITIATION_STARTED);
        genericUrl.put("uploadType", "resumable");
        HttpContent httpContent = this.metadata;
        if (httpContent == null) {
            httpContent = new EmptyContent();
        }
        HttpRequest buildRequest = this.requestFactory.buildRequest(this.initiationRequestMethod, genericUrl, httpContent);
        this.initiationHeaders.set(CONTENT_TYPE_HEADER, (Object) this.mediaContent.getType());
        if (isMediaLengthKnown()) {
            this.initiationHeaders.set(CONTENT_LENGTH_HEADER, (Object) Long.valueOf(getMediaContentLength()));
        }
        buildRequest.getHeaders().putAll(this.initiationHeaders);
        HttpResponse executeCurrentRequest = executeCurrentRequest(buildRequest);
        try {
            updateStateAndNotifyListener(UploadState.INITIATION_COMPLETE);
            return executeCurrentRequest;
        } catch (Throwable th) {
            executeCurrentRequest.disconnect();
            throw th;
        }
    }

    private long getMediaContentLength() {
        if (!this.isMediaContentLengthCalculated) {
            this.mediaContentLength = this.mediaContent.getLength();
            this.isMediaContentLengthCalculated = true;
        }
        return this.mediaContentLength;
    }

    private long getNextByteIndex(String str) {
        if (str == null) {
            return 0L;
        }
        return Long.parseLong(str.substring(str.indexOf(45) + 1)) + 1;
    }

    private boolean isMediaLengthKnown() {
        if (getMediaContentLength() >= 0) {
            return true;
        }
        return false;
    }

    private HttpResponse resumableUpload(GenericUrl genericUrl) {
        HttpResponse executeCurrentRequest;
        boolean z;
        HttpResponse executeUploadInitiation = executeUploadInitiation(genericUrl);
        if (!executeUploadInitiation.isSuccessStatusCode()) {
            return executeUploadInitiation;
        }
        try {
            GenericUrl genericUrl2 = new GenericUrl(executeUploadInitiation.getHeaders().getLocation());
            executeUploadInitiation.disconnect();
            InputStream inputStream = this.mediaContent.getInputStream();
            this.contentInputStream = inputStream;
            if (!inputStream.markSupported() && isMediaLengthKnown()) {
                this.contentInputStream = new BufferedInputStream(this.contentInputStream);
            }
            while (true) {
                ContentChunk buildContentChunk = buildContentChunk();
                HttpRequest buildPutRequest = this.requestFactory.buildPutRequest(genericUrl2, null);
                this.currentRequest = buildPutRequest;
                buildPutRequest.setContent(buildContentChunk.getContent());
                this.currentRequest.getHeaders().setContentRange(buildContentChunk.getContentRange());
                new MediaUploadErrorHandler(this, this.currentRequest);
                if (isMediaLengthKnown()) {
                    executeCurrentRequest = executeCurrentRequestWithoutGZip(this.currentRequest);
                } else {
                    executeCurrentRequest = executeCurrentRequest(this.currentRequest);
                }
                try {
                    if (executeCurrentRequest.isSuccessStatusCode()) {
                        this.totalBytesServerReceived = getMediaContentLength();
                        if (this.mediaContent.getCloseInputStream()) {
                            this.contentInputStream.close();
                        }
                        updateStateAndNotifyListener(UploadState.MEDIA_COMPLETE);
                        return executeCurrentRequest;
                    }
                    if (executeCurrentRequest.getStatusCode() != 308) {
                        if (this.mediaContent.getCloseInputStream()) {
                            this.contentInputStream.close();
                        }
                        return executeCurrentRequest;
                    }
                    String location = executeCurrentRequest.getHeaders().getLocation();
                    if (location != null) {
                        genericUrl2 = new GenericUrl(location);
                    }
                    long nextByteIndex = getNextByteIndex(executeCurrentRequest.getHeaders().getRange());
                    long j = nextByteIndex - this.totalBytesServerReceived;
                    boolean z2 = false;
                    if (j >= 0 && j <= this.currentChunkLength) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.checkState(z);
                    long j2 = this.currentChunkLength - j;
                    if (isMediaLengthKnown()) {
                        if (j2 > 0) {
                            this.contentInputStream.reset();
                            if (j == this.contentInputStream.skip(j)) {
                                z2 = true;
                            }
                            Preconditions.checkState(z2);
                        }
                    } else if (j2 == 0) {
                        this.currentRequestContentBuffer = null;
                    }
                    this.totalBytesServerReceived = nextByteIndex;
                    updateStateAndNotifyListener(UploadState.MEDIA_IN_PROGRESS);
                    executeCurrentRequest.disconnect();
                } catch (Throwable th) {
                    executeCurrentRequest.disconnect();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            executeUploadInitiation.disconnect();
            throw th2;
        }
    }

    private void updateStateAndNotifyListener(UploadState uploadState) {
        this.uploadState = uploadState;
        MediaHttpUploaderProgressListener mediaHttpUploaderProgressListener = this.progressListener;
        if (mediaHttpUploaderProgressListener != null) {
            mediaHttpUploaderProgressListener.progressChanged(this);
        }
    }

    public int getChunkSize() {
        return this.chunkSize;
    }

    public boolean getDisableGZipContent() {
        return this.disableGZipContent;
    }

    public HttpHeaders getInitiationHeaders() {
        return this.initiationHeaders;
    }

    public String getInitiationRequestMethod() {
        return this.initiationRequestMethod;
    }

    public HttpContent getMediaContent() {
        return this.mediaContent;
    }

    public HttpContent getMetadata() {
        return this.metadata;
    }

    public long getNumBytesUploaded() {
        return this.totalBytesServerReceived;
    }

    public double getProgress() {
        Preconditions.checkArgument(isMediaLengthKnown(), "Cannot call getProgress() if the specified AbstractInputStreamContent has no content length. Use  getNumBytesUploaded() to denote progress instead.");
        if (getMediaContentLength() == 0) {
            return 0.0d;
        }
        return this.totalBytesServerReceived / getMediaContentLength();
    }

    public MediaHttpUploaderProgressListener getProgressListener() {
        return this.progressListener;
    }

    public Sleeper getSleeper() {
        return this.sleeper;
    }

    public HttpTransport getTransport() {
        return this.transport;
    }

    public UploadState getUploadState() {
        return this.uploadState;
    }

    public boolean isDirectUploadEnabled() {
        return this.directUploadEnabled;
    }

    @Beta
    public void serverErrorCallback() {
        Preconditions.checkNotNull(this.currentRequest, "The current request should not be null");
        this.currentRequest.setContent(new EmptyContent());
        this.currentRequest.getHeaders().setContentRange("bytes */" + this.mediaContentLengthStr);
    }

    public MediaHttpUploader setChunkSize(int i) {
        boolean z;
        if (i > 0 && i % MINIMUM_CHUNK_SIZE == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "chunkSize must be a positive multiple of 262144.");
        this.chunkSize = i;
        return this;
    }

    public MediaHttpUploader setDirectUploadEnabled(boolean z) {
        this.directUploadEnabled = z;
        return this;
    }

    public MediaHttpUploader setDisableGZipContent(boolean z) {
        this.disableGZipContent = z;
        return this;
    }

    public MediaHttpUploader setInitiationHeaders(HttpHeaders httpHeaders) {
        this.initiationHeaders = httpHeaders;
        return this;
    }

    public MediaHttpUploader setInitiationRequestMethod(String str) {
        boolean z;
        if (!str.equals(HttpMethods.POST) && !str.equals(HttpMethods.PUT) && !str.equals(HttpMethods.PATCH)) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.checkArgument(z);
        this.initiationRequestMethod = str;
        return this;
    }

    public MediaHttpUploader setMetadata(HttpContent httpContent) {
        this.metadata = httpContent;
        return this;
    }

    public MediaHttpUploader setProgressListener(MediaHttpUploaderProgressListener mediaHttpUploaderProgressListener) {
        this.progressListener = mediaHttpUploaderProgressListener;
        return this;
    }

    public MediaHttpUploader setSleeper(Sleeper sleeper) {
        this.sleeper = sleeper;
        return this;
    }

    public HttpResponse upload(GenericUrl genericUrl) {
        boolean z;
        if (this.uploadState == UploadState.NOT_STARTED) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        if (this.directUploadEnabled) {
            return directUpload(genericUrl);
        }
        return resumableUpload(genericUrl);
    }
}
