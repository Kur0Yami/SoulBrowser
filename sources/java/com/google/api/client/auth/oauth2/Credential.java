package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.HttpUnsuccessfulResponseHandler;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Lists;
import com.google.api.client.util.Objects;
import com.google.api.client.util.Preconditions;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class Credential implements HttpExecuteInterceptor, HttpRequestInitializer, HttpUnsuccessfulResponseHandler {
    static final Logger LOGGER = Logger.getLogger(Credential.class.getName());
    private String accessToken;
    private final HttpExecuteInterceptor clientAuthentication;
    private final Clock clock;
    private Long expirationTimeMilliseconds;
    private final JsonFactory jsonFactory;
    private final Lock lock = new ReentrantLock();
    private final AccessMethod method;
    private final Collection<CredentialRefreshListener> refreshListeners;
    private String refreshToken;
    private final HttpRequestInitializer requestInitializer;
    private final String tokenServerEncodedUrl;
    private final HttpTransport transport;

    /* loaded from: classes3.dex */
    public interface AccessMethod {
        void a(HttpRequest httpRequest, String str);

        String b(HttpRequest httpRequest);
    }

    /* loaded from: classes3.dex */
    public static class Builder {
        HttpExecuteInterceptor clientAuthentication;
        JsonFactory jsonFactory;
        final AccessMethod method;
        HttpRequestInitializer requestInitializer;
        GenericUrl tokenServerUrl;
        HttpTransport transport;
        Clock clock = Clock.SYSTEM;
        Collection<CredentialRefreshListener> refreshListeners = Lists.newArrayList();

        public Builder(AccessMethod accessMethod) {
            this.method = (AccessMethod) Preconditions.checkNotNull(accessMethod);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder addRefreshListener(CredentialRefreshListener credentialRefreshListener) {
            this.refreshListeners.add(Preconditions.checkNotNull(credentialRefreshListener));
            return this;
        }

        public final HttpExecuteInterceptor getClientAuthentication() {
            return this.clientAuthentication;
        }

        public final Clock getClock() {
            return this.clock;
        }

        public final JsonFactory getJsonFactory() {
            return this.jsonFactory;
        }

        public final AccessMethod getMethod() {
            return this.method;
        }

        public final Collection<CredentialRefreshListener> getRefreshListeners() {
            return this.refreshListeners;
        }

        public final HttpRequestInitializer getRequestInitializer() {
            return this.requestInitializer;
        }

        public final GenericUrl getTokenServerUrl() {
            return this.tokenServerUrl;
        }

        public final HttpTransport getTransport() {
            return this.transport;
        }

        public Builder setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
            this.clientAuthentication = httpExecuteInterceptor;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) Preconditions.checkNotNull(clock);
            return this;
        }

        public Builder setJsonFactory(JsonFactory jsonFactory) {
            this.jsonFactory = jsonFactory;
            return this;
        }

        public Builder setRefreshListeners(Collection collection) {
            this.refreshListeners = (Collection) Preconditions.checkNotNull(collection);
            return this;
        }

        public Builder setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
            this.requestInitializer = httpRequestInitializer;
            return this;
        }

        public Builder setTokenServerEncodedUrl(String str) {
            GenericUrl genericUrl;
            if (str == null) {
                genericUrl = null;
            } else {
                genericUrl = new GenericUrl(str);
            }
            this.tokenServerUrl = genericUrl;
            return this;
        }

        public Builder setTokenServerUrl(GenericUrl genericUrl) {
            this.tokenServerUrl = genericUrl;
            return this;
        }

        public Builder setTransport(HttpTransport httpTransport) {
            this.transport = httpTransport;
            return this;
        }
    }

    public Credential(Builder builder) {
        String build;
        this.method = (AccessMethod) Preconditions.checkNotNull(builder.method);
        this.transport = builder.transport;
        this.jsonFactory = builder.jsonFactory;
        GenericUrl genericUrl = builder.tokenServerUrl;
        if (genericUrl == null) {
            build = null;
        } else {
            build = genericUrl.build();
        }
        this.tokenServerEncodedUrl = build;
        this.clientAuthentication = builder.clientAuthentication;
        this.requestInitializer = builder.requestInitializer;
        this.refreshListeners = DesugarCollections.unmodifiableCollection(builder.refreshListeners);
        this.clock = (Clock) Preconditions.checkNotNull(builder.clock);
    }

    public TokenResponse executeRefreshToken() {
        if (this.refreshToken == null) {
            return null;
        }
        RefreshTokenRequest refreshTokenRequest = new RefreshTokenRequest(this.transport, this.jsonFactory, new GenericUrl(this.tokenServerEncodedUrl), this.refreshToken);
        refreshTokenRequest.clientAuthentication = this.clientAuthentication;
        refreshTokenRequest.requestInitializer = this.requestInitializer;
        return refreshTokenRequest.execute();
    }

    public final String getAccessToken() {
        this.lock.lock();
        try {
            return this.accessToken;
        } finally {
            this.lock.unlock();
        }
    }

    public final HttpExecuteInterceptor getClientAuthentication() {
        return this.clientAuthentication;
    }

    public final Clock getClock() {
        return this.clock;
    }

    public final Long getExpirationTimeMilliseconds() {
        this.lock.lock();
        try {
            return this.expirationTimeMilliseconds;
        } finally {
            this.lock.unlock();
        }
    }

    public final Long getExpiresInSeconds() {
        this.lock.lock();
        try {
            Long l = this.expirationTimeMilliseconds;
            if (l == null) {
                this.lock.unlock();
                return null;
            }
            return Long.valueOf((l.longValue() - this.clock.currentTimeMillis()) / 1000);
        } finally {
            this.lock.unlock();
        }
    }

    public final JsonFactory getJsonFactory() {
        return this.jsonFactory;
    }

    public final AccessMethod getMethod() {
        return this.method;
    }

    public final Collection<CredentialRefreshListener> getRefreshListeners() {
        return this.refreshListeners;
    }

    public final String getRefreshToken() {
        this.lock.lock();
        try {
            return this.refreshToken;
        } finally {
            this.lock.unlock();
        }
    }

    public final HttpRequestInitializer getRequestInitializer() {
        return this.requestInitializer;
    }

    public final String getTokenServerEncodedUrl() {
        return this.tokenServerEncodedUrl;
    }

    public final HttpTransport getTransport() {
        return this.transport;
    }

    @Override // com.google.api.client.http.HttpUnsuccessfulResponseHandler
    public boolean handleResponse(HttpRequest httpRequest, HttpResponse httpResponse, boolean z) {
        boolean z2;
        boolean z3;
        List<String> authenticateAsList = httpResponse.getHeaders().getAuthenticateAsList();
        boolean z4 = true;
        if (authenticateAsList != null) {
            for (String str : authenticateAsList) {
                if (str.startsWith("Bearer ")) {
                    z2 = BearerToken.f12070a.matcher(str).find();
                    z3 = true;
                    break;
                }
            }
        }
        z2 = false;
        z3 = false;
        if (!z3) {
            if (httpResponse.getStatusCode() == 401) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (z2) {
            try {
                this.lock.lock();
                try {
                    if (Objects.equal(this.accessToken, this.method.b(httpRequest))) {
                        if (!refreshToken()) {
                            z4 = false;
                        }
                    }
                    return z4;
                } finally {
                    this.lock.unlock();
                }
            } catch (IOException e) {
                LOGGER.log(Level.SEVERE, "unable to refresh token", (Throwable) e);
            }
        }
        return false;
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public void initialize(HttpRequest httpRequest) {
        httpRequest.setInterceptor(this);
        httpRequest.setUnsuccessfulResponseHandler(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0021, code lost:
    
        if (r4.accessToken == null) goto L13;
     */
    @Override // com.google.api.client.http.HttpExecuteInterceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void intercept(com.google.api.client.http.HttpRequest r5) {
        /*
            r4 = this;
            java.util.concurrent.locks.Lock r0 = r4.lock
            r0.lock()
            java.lang.Long r0 = r4.getExpiresInSeconds()     // Catch: java.lang.Throwable -> L1a
            java.lang.String r1 = r4.accessToken     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L1c
            if (r0 == 0) goto L29
            long r0 = r0.longValue()     // Catch: java.lang.Throwable -> L1a
            r2 = 60
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 > 0) goto L29
            goto L1c
        L1a:
            r5 = move-exception
            goto L31
        L1c:
            r4.refreshToken()     // Catch: java.lang.Throwable -> L1a
            java.lang.String r0 = r4.accessToken     // Catch: java.lang.Throwable -> L1a
            if (r0 != 0) goto L29
        L23:
            java.util.concurrent.locks.Lock r5 = r4.lock
            r5.unlock()
            return
        L29:
            com.google.api.client.auth.oauth2.Credential$AccessMethod r0 = r4.method     // Catch: java.lang.Throwable -> L1a
            java.lang.String r1 = r4.accessToken     // Catch: java.lang.Throwable -> L1a
            r0.a(r5, r1)     // Catch: java.lang.Throwable -> L1a
            goto L23
        L31:
            java.util.concurrent.locks.Lock r0 = r4.lock
            r0.unlock()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.auth.oauth2.Credential.intercept(com.google.api.client.http.HttpRequest):void");
    }

    public final boolean refreshToken() {
        this.lock.lock();
        boolean z = true;
        try {
            try {
                TokenResponse executeRefreshToken = executeRefreshToken();
                if (executeRefreshToken != null) {
                    setFromTokenResponse(executeRefreshToken);
                    Iterator<CredentialRefreshListener> it = this.refreshListeners.iterator();
                    while (it.hasNext()) {
                        it.next().a(this);
                    }
                    return true;
                }
            } catch (TokenResponseException e) {
                if (400 > e.getStatusCode() || e.getStatusCode() >= 500) {
                    z = false;
                }
                if (e.f12077c != null && z) {
                    setAccessToken(null);
                    setExpiresInSeconds(null);
                }
                Iterator<CredentialRefreshListener> it2 = this.refreshListeners.iterator();
                while (it2.hasNext()) {
                    it2.next().b(this);
                }
                if (z) {
                    throw e;
                }
            }
            return false;
        } finally {
            this.lock.unlock();
        }
    }

    public Credential setAccessToken(String str) {
        this.lock.lock();
        try {
            this.accessToken = str;
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    public Credential setExpirationTimeMilliseconds(Long l) {
        this.lock.lock();
        try {
            this.expirationTimeMilliseconds = l;
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    public Credential setExpiresInSeconds(Long l) {
        Long valueOf;
        if (l == null) {
            valueOf = null;
        } else {
            valueOf = Long.valueOf((l.longValue() * 1000) + this.clock.currentTimeMillis());
        }
        return setExpirationTimeMilliseconds(valueOf);
    }

    public Credential setFromTokenResponse(TokenResponse tokenResponse) {
        setAccessToken(tokenResponse.getAccessToken());
        if (tokenResponse.getRefreshToken() != null) {
            setRefreshToken(tokenResponse.getRefreshToken());
        }
        setExpiresInSeconds(tokenResponse.getExpiresInSeconds());
        return this;
    }

    public Credential setRefreshToken(String str) {
        boolean z;
        this.lock.lock();
        if (str != null) {
            try {
                if (this.jsonFactory != null && this.transport != null && this.clientAuthentication != null && this.tokenServerEncodedUrl != null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument(z, "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl");
            } catch (Throwable th) {
                this.lock.unlock();
                throw th;
            }
        }
        this.refreshToken = str;
        this.lock.unlock();
        return this;
    }
}
