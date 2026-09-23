package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.bumptech.glide.util.LogTime;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpUrlFetcher implements DataFetcher<InputStream> {

    /* renamed from: c, reason: collision with root package name */
    public final GlideUrl f2169c;
    public final int f;
    public HttpURLConnection g;
    public InputStream h;
    public volatile boolean i;

    /* loaded from: classes.dex */
    public static class DefaultHttpUrlConnectionFactory implements HttpUrlConnectionFactory {
    }

    /* loaded from: classes.dex */
    public interface HttpUrlConnectionFactory {
    }

    public HttpUrlFetcher(GlideUrl glideUrl, int i) {
        this.f2169c = glideUrl;
        this.f = i;
    }

    public static int c(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to get a response code", e);
                return -1;
            }
            return -1;
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void b() {
        InputStream inputStream = this.h;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.g;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.g = null;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void cancel() {
        this.i = true;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final DataSource d() {
        return DataSource.f;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void e(Priority priority, DataFetcher.DataCallback dataCallback) {
        GlideUrl glideUrl = this.f2169c;
        int i = LogTime.b;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            try {
                dataCallback.f(f(glideUrl.d(), 0, null, glideUrl.b.a()));
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + LogTime.a(elapsedRealtimeNanos));
                }
            } catch (IOException e) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Failed to load data for url", e);
                }
                dataCallback.c(e);
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + LogTime.a(elapsedRealtimeNanos));
                }
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + LogTime.a(elapsedRealtimeNanos));
            }
            throw th;
        }
    }

    public final InputStream f(URL url, int i, URL url2, Map map) {
        if (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new HttpException(-1, null, "In re-direct loop");
                    }
                } catch (URISyntaxException unused) {
                }
            }
            int i2 = this.f;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                for (Map.Entry entry : map.entrySet()) {
                    httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                httpURLConnection.setConnectTimeout(i2);
                httpURLConnection.setReadTimeout(i2);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setInstanceFollowRedirects(false);
                this.g = httpURLConnection;
                try {
                    httpURLConnection.connect();
                    this.h = this.g.getInputStream();
                    if (this.i) {
                        return null;
                    }
                    int c2 = c(this.g);
                    int i3 = c2 / 100;
                    if (i3 == 2) {
                        HttpURLConnection httpURLConnection2 = this.g;
                        try {
                            if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                                this.h = new ContentLengthInputStream(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                            } else {
                                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                    Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection2.getContentEncoding());
                                }
                                this.h = httpURLConnection2.getInputStream();
                            }
                            return this.h;
                        } catch (IOException e) {
                            throw new HttpException(c(httpURLConnection2), e, "Failed to obtain InputStream");
                        }
                    }
                    if (i3 == 3) {
                        String headerField = this.g.getHeaderField("Location");
                        if (!TextUtils.isEmpty(headerField)) {
                            try {
                                URL url3 = new URL(url, headerField);
                                b();
                                return f(url3, i + 1, url, map);
                            } catch (MalformedURLException e2) {
                                throw new HttpException(c2, e2, a.C("Bad redirect url: ", headerField));
                            }
                        }
                        throw new HttpException(c2, null, "Received empty or null redirect url");
                    }
                    if (c2 == -1) {
                        throw new HttpException(c2, null, "Http request failed");
                    }
                    try {
                        throw new HttpException(c2, null, this.g.getResponseMessage());
                    } catch (IOException e3) {
                        throw new HttpException(c2, e3, "Failed to get a response message");
                    }
                } catch (IOException e4) {
                    throw new HttpException(c(this.g), e4, "Failed to connect or obtain data");
                }
            } catch (IOException e5) {
                throw new HttpException(0, e5, "URL.openConnection threw");
            }
        }
        throw new HttpException(-1, null, "Too many (> 5) redirects!");
    }
}
