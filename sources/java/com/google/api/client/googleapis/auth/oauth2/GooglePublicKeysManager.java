package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.SecurityUtils;
import com.google.api.client.util.StringUtils;
import j$.util.DesugarCollections;
import java.io.ByteArrayInputStream;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Beta
/* loaded from: classes3.dex */
public class GooglePublicKeysManager {
    private static final Pattern MAX_AGE_PATTERN = Pattern.compile("\\s*max-age\\s*=\\s*(\\d+)\\s*");
    private static final long REFRESH_SKEW_MILLIS = 300000;
    private final Clock clock;
    private long expirationTimeMilliseconds;
    private final JsonFactory jsonFactory;
    private final Lock lock;
    private final String publicCertsEncodedUrl;
    private List<PublicKey> publicKeys;
    private final HttpTransport transport;

    @Beta
    /* loaded from: classes3.dex */
    public static class Builder {
        final JsonFactory jsonFactory;
        final HttpTransport transport;
        Clock clock = Clock.SYSTEM;
        String publicCertsEncodedUrl = GoogleOAuthConstants.DEFAULT_PUBLIC_CERTS_ENCODED_URL;

        public Builder(HttpTransport httpTransport, JsonFactory jsonFactory) {
            this.transport = (HttpTransport) Preconditions.checkNotNull(httpTransport);
            this.jsonFactory = (JsonFactory) Preconditions.checkNotNull(jsonFactory);
        }

        public GooglePublicKeysManager build() {
            return new GooglePublicKeysManager(this);
        }

        public final Clock getClock() {
            return this.clock;
        }

        public final JsonFactory getJsonFactory() {
            return this.jsonFactory;
        }

        public final String getPublicCertsEncodedUrl() {
            return this.publicCertsEncodedUrl;
        }

        public final HttpTransport getTransport() {
            return this.transport;
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) Preconditions.checkNotNull(clock);
            return this;
        }

        public Builder setPublicCertsEncodedUrl(String str) {
            this.publicCertsEncodedUrl = (String) Preconditions.checkNotNull(str);
            return this;
        }
    }

    public GooglePublicKeysManager(HttpTransport httpTransport, JsonFactory jsonFactory) {
        this(new Builder(httpTransport, jsonFactory));
    }

    public long getCacheTimeInSec(HttpHeaders httpHeaders) {
        long j;
        if (httpHeaders.getCacheControl() != null) {
            for (String str : httpHeaders.getCacheControl().split(",")) {
                Matcher matcher = MAX_AGE_PATTERN.matcher(str);
                if (matcher.matches()) {
                    j = Long.parseLong(matcher.group(1));
                    break;
                }
            }
        }
        j = 0;
        if (httpHeaders.getAge() != null) {
            j -= httpHeaders.getAge().longValue();
        }
        return Math.max(0L, j);
    }

    public final Clock getClock() {
        return this.clock;
    }

    public final long getExpirationTimeMilliseconds() {
        return this.expirationTimeMilliseconds;
    }

    public final JsonFactory getJsonFactory() {
        return this.jsonFactory;
    }

    public final String getPublicCertsEncodedUrl() {
        return this.publicCertsEncodedUrl;
    }

    public final List<PublicKey> getPublicKeys() {
        this.lock.lock();
        try {
            if (this.publicKeys != null) {
                if (this.clock.currentTimeMillis() + REFRESH_SKEW_MILLIS > this.expirationTimeMilliseconds) {
                }
                List<PublicKey> list = this.publicKeys;
                this.lock.unlock();
                return list;
            }
            refresh();
            List<PublicKey> list2 = this.publicKeys;
            this.lock.unlock();
            return list2;
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    public final HttpTransport getTransport() {
        return this.transport;
    }

    public GooglePublicKeysManager refresh() {
        boolean z;
        this.lock.lock();
        try {
            this.publicKeys = new ArrayList();
            CertificateFactory x509CertificateFactory = SecurityUtils.getX509CertificateFactory();
            HttpResponse execute = this.transport.createRequestFactory().buildGetRequest(new GenericUrl(this.publicCertsEncodedUrl)).execute();
            this.expirationTimeMilliseconds = (getCacheTimeInSec(execute.getHeaders()) * 1000) + this.clock.currentTimeMillis();
            JsonParser createJsonParser = this.jsonFactory.createJsonParser(execute.getContent());
            JsonToken f = createJsonParser.f();
            if (f == null) {
                f = createJsonParser.v();
            }
            if (f == JsonToken.g) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            while (createJsonParser.v() != JsonToken.h) {
                try {
                    createJsonParser.v();
                    this.publicKeys.add(((X509Certificate) x509CertificateFactory.generateCertificate(new ByteArrayInputStream(StringUtils.getBytesUtf8(createJsonParser.u())))).getPublicKey());
                } catch (Throwable th) {
                    createJsonParser.close();
                    throw th;
                }
            }
            this.publicKeys = DesugarCollections.unmodifiableList(this.publicKeys);
            createJsonParser.close();
            this.lock.unlock();
            return this;
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    public GooglePublicKeysManager(Builder builder) {
        this.lock = new ReentrantLock();
        this.transport = builder.transport;
        this.jsonFactory = builder.jsonFactory;
        this.clock = builder.clock;
        this.publicCertsEncodedUrl = builder.publicCertsEncodedUrl;
    }
}
