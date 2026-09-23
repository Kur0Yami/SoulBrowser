package com.google.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpBackOffIOExceptionHandler;
import com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.util.Clock;
import com.google.api.client.util.ExponentialBackOff;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Joiner;
import com.google.api.client.util.Preconditions;
import com.google.auth.CredentialTypeForMetrics;
import com.google.auth.ServiceAccountSigner;
import com.google.auth.http.HttpTransportFactory;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.MetricsUtils;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import j$.util.Objects;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class ServiceAccountCredentials extends GoogleCredentials implements ServiceAccountSigner, IdTokenProvider, JwtProvider {
    public static final LoggerProvider y = new LoggerProvider(ServiceAccountCredentials.class);
    public final String q;
    public final PrivateKey r;
    public final String s;
    public final URI t;
    public final ImmutableSet u;
    public final ImmutableSet v;
    public final transient HttpTransportFactory w;
    public transient JwtCredentials x;

    /* loaded from: classes3.dex */
    public static class Builder extends GoogleCredentials.Builder {
        public String e;
        public PrivateKey f;
        public URI g;
        public Collection h;
        public HttpTransportFactory i;
    }

    public ServiceAccountCredentials(Builder builder) {
        super(builder);
        ImmutableSet t;
        this.x = null;
        this.q = (String) Preconditions.checkNotNull(builder.e);
        this.r = (PrivateKey) Preconditions.checkNotNull(builder.f);
        Collection collection = builder.h;
        if (collection == null) {
            t = ImmutableSet.w();
        } else {
            t = ImmutableSet.t(collection);
        }
        this.u = t;
        this.v = ImmutableSet.w();
        HttpTransportFactory httpTransportFactory = (HttpTransportFactory) MoreObjects.a(builder.i, OAuth2Credentials.f(OAuth2Utils.f12138c));
        this.w = httpTransportFactory;
        this.s = httpTransportFactory.getClass().getName();
        URI uri = builder.g;
        this.t = uri == null ? OAuth2Utils.f12137a : uri;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials, com.google.auth.Credentials
    public final Map a(URI uri) {
        if (o() && uri == null) {
            throw new IOException("Scopes and uri are not configured for service account. Specify the scopes by calling createScoped or passing scopes to constructor or providing uri to getRequestMetadata.");
        }
        if (m().equals("googleapis.com")) {
            if (q()) {
                return super.a(uri);
            }
            return p(uri);
        }
        return p(uri);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final boolean equals(Object obj) {
        Object obj2 = 0;
        if ((obj instanceof ServiceAccountCredentials) && super.equals(obj)) {
            ServiceAccountCredentials serviceAccountCredentials = (ServiceAccountCredentials) obj;
            if (Objects.equals(this.q, serviceAccountCredentials.q) && Objects.equals(this.r, serviceAccountCredentials.r) && Objects.equals(this.s, serviceAccountCredentials.s) && Objects.equals(this.t, serviceAccountCredentials.t) && Objects.equals(this.u, serviceAccountCredentials.u) && Objects.equals(this.v, serviceAccountCredentials.v) && obj2.equals(obj2)) {
                Object obj3 = Boolean.FALSE;
                if (obj3.equals(obj3) && obj3.equals(obj3)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final int hashCode() {
        Integer valueOf = Integer.valueOf(super.hashCode());
        Boolean bool = Boolean.FALSE;
        return Objects.hash(null, this.q, this.r, null, this.s, this.t, this.u, this.v, 0, bool, bool, valueOf);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object, com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler$BackOffRequired] */
    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        CredentialTypeForMetrics credentialTypeForMetrics;
        GsonFactory gsonFactory = OAuth2Utils.d;
        Clock clock = this.j;
        long currentTimeMillis = clock.currentTimeMillis();
        JsonWebSignature.Header header = new JsonWebSignature.Header();
        header.g();
        header.c();
        header.h(null);
        JsonWebToken.Payload payload = new JsonWebToken.Payload();
        String str = this.q;
        payload.setIssuer(str);
        long j = currentTimeMillis / 1000;
        payload.setIssuedAtTimeSeconds(Long.valueOf(j));
        payload.setExpirationTimeSeconds(Long.valueOf(j + 0));
        payload.setSubject(null);
        ImmutableSet immutableSet = this.u;
        if (immutableSet.isEmpty()) {
            payload.put("scope", (Object) Joiner.on(' ').join(this.v));
        } else {
            payload.put("scope", (Object) Joiner.on(' ').join(immutableSet));
        }
        payload.setAudience(OAuth2Utils.f12137a.toString());
        try {
            String signUsingRsaSha256 = JsonWebSignature.signUsingRsaSha256(this.r, gsonFactory, header, payload);
            GenericData genericData = new GenericData();
            genericData.set("grant_type", "urn:ietf:params:oauth:grant-type:jwt-bearer");
            genericData.set("assertion", signUsingRsaSha256);
            HttpRequest buildPostRequest = this.w.a().createRequestFactory().buildPostRequest(new GenericUrl(this.t), new UrlEncodedContent(genericData));
            if (q()) {
                credentialTypeForMetrics = CredentialTypeForMetrics.SERVICE_ACCOUNT_CREDENTIALS_AT;
            } else {
                credentialTypeForMetrics = CredentialTypeForMetrics.SERVICE_ACCOUNT_CREDENTIALS_JWT;
            }
            buildPostRequest.getHeaders().set("x-goog-api-client", (Object) MetricsUtils.a(MetricsUtils.RequestType.ACCESS_TOKEN_REQUEST, credentialTypeForMetrics));
            buildPostRequest.setNumberOfRetries(0);
            buildPostRequest.setParser(new JsonObjectParser(gsonFactory));
            LoggerProvider loggerProvider = y;
            LoggingUtils.a(buildPostRequest, loggerProvider, "Sending request to refresh access token");
            ExponentialBackOff build = new ExponentialBackOff.Builder().setInitialIntervalMillis(1000).setRandomizationFactor(0.1d).setMultiplier(2.0d).build();
            buildPostRequest.setUnsuccessfulResponseHandler(new HttpBackOffUnsuccessfulResponseHandler(build).setBackOffRequired(new Object()));
            buildPostRequest.setIOExceptionHandler(new HttpBackOffIOExceptionHandler(build));
            try {
                HttpResponse execute = buildPostRequest.execute();
                LoggingUtils.b(execute, loggerProvider, "Received response for refresh access token");
                GenericData genericData2 = (GenericData) execute.parseAs(GenericData.class);
                LoggingUtils.c(genericData2, loggerProvider, "Response payload");
                return new AccessToken(OAuth2Utils.b("access_token", "Error parsing token refresh response. ", genericData2), new Date((OAuth2Utils.a(genericData2) * 1000) + clock.currentTimeMillis()));
            } catch (HttpResponseException e) {
                throw GoogleAuthException.a(e, android.support.v4.media.a.m("Error getting access token for service account: ", e.getMessage(), ", iss: ", str));
            } catch (IOException e2) {
                String m = android.support.v4.media.a.m("Error getting access token for service account: ", e2.getMessage(), ", iss: ", str);
                if (m == null) {
                    throw new IOException(e2);
                }
                throw new IOException(m, e2);
            }
        } catch (GeneralSecurityException e3) {
            throw new IOException("Error signing service account access token request with private key.", e3);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.auth.oauth2.GoogleCredentials$Builder, com.google.auth.oauth2.ServiceAccountCredentials$Builder, com.google.auth.oauth2.OAuth2Credentials$Builder] */
    @Override // com.google.auth.oauth2.GoogleCredentials
    public final GoogleCredentials l(List list) {
        ?? builder = new GoogleCredentials.Builder(this);
        builder.e = this.q;
        builder.f = this.r;
        builder.i = this.w;
        builder.g = this.t;
        builder.h = list;
        builder.f12131a = null;
        return new ServiceAccountCredentials(builder);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public final MoreObjects.ToStringHelper n() {
        MoreObjects.ToStringHelper n = super.n();
        n.b(null, "clientId");
        n.b(this.q, "clientEmail");
        n.b(null, "privateKeyId");
        n.b(this.s, "transportFactoryClassName");
        n.b(this.t, "tokenServerUri");
        n.b(this.u, "scopes");
        n.b(this.v, "defaultScopes");
        n.b(null, "serviceAccountUser");
        n.a(0, "lifetime");
        n.d("useJwtAccessWithScope", false);
        n.d("defaultRetriesEnabled", false);
        return n;
    }

    public final boolean o() {
        if (this.u.isEmpty() && this.v.isEmpty()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.auth.oauth2.JwtCredentials$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.auth.oauth2.AutoValue_JwtClaims$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v18, types: [com.google.auth.oauth2.AutoValue_JwtClaims$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v5, types: [com.google.auth.oauth2.JwtCredentials$Builder, java.lang.Object] */
    public final Map p(URI uri) {
        JwtCredentials jwtCredentials;
        boolean o = o();
        Clock clock = this.j;
        PrivateKey privateKey = this.r;
        String str = this.q;
        ImmutableSet immutableSet = this.v;
        ImmutableSet immutableSet2 = this.u;
        if (!o) {
            if (this.x == null) {
                if (!immutableSet2.isEmpty()) {
                    immutableSet = immutableSet2;
                }
                ?? obj = new Object();
                obj.d = ImmutableMap.k();
                obj.b = str;
                obj.f12104c = str;
                Map singletonMap = Collections.singletonMap("scope", Joiner.on(' ').join(immutableSet));
                if (singletonMap != null) {
                    obj.d = singletonMap;
                    int i = JwtCredentials.m;
                    ?? obj2 = new Object();
                    obj2.f12123c = Clock.SYSTEM;
                    obj2.d = Long.valueOf(TimeUnit.HOURS.toSeconds(1L));
                    privateKey.getClass();
                    obj2.f12122a = privateKey;
                    Map map = obj.d;
                    if (map != null) {
                        obj2.b = new AutoValue_JwtClaims(obj.f12103a, obj.b, obj.f12104c, map);
                        clock.getClass();
                        obj2.f12123c = clock;
                        this.x = new JwtCredentials(obj2);
                    } else {
                        throw new IllegalStateException("Missing required properties: additionalClaims");
                    }
                } else {
                    throw new NullPointerException("Null additionalClaims");
                }
            }
            jwtCredentials = this.x;
        } else {
            if (!immutableSet2.isEmpty()) {
                immutableSet = immutableSet2;
            }
            ?? obj3 = new Object();
            obj3.d = ImmutableMap.k();
            obj3.b = str;
            obj3.f12104c = str;
            if (uri == null) {
                Map singletonMap2 = Collections.singletonMap("scope", Joiner.on(' ').join(immutableSet));
                if (singletonMap2 != null) {
                    obj3.d = singletonMap2;
                } else {
                    throw new NullPointerException("Null additionalClaims");
                }
            } else {
                if (uri.getScheme() != null && uri.getHost() != null) {
                    try {
                        uri = new URI(uri.getScheme(), uri.getHost(), "/", null);
                    } catch (URISyntaxException unused) {
                    }
                }
                obj3.f12103a = uri.toString();
            }
            int i2 = JwtCredentials.m;
            ?? obj4 = new Object();
            obj4.f12123c = Clock.SYSTEM;
            obj4.d = Long.valueOf(TimeUnit.HOURS.toSeconds(1L));
            privateKey.getClass();
            obj4.f12122a = privateKey;
            Map map2 = obj3.d;
            if (map2 != null) {
                obj4.b = new AutoValue_JwtClaims(obj3.f12103a, obj3.b, obj3.f12104c, map2);
                clock.getClass();
                obj4.f12123c = clock;
                jwtCredentials = new JwtCredentials(obj4);
            } else {
                throw new IllegalStateException("Missing required properties: additionalClaims");
            }
        }
        return GoogleCredentials.k(jwtCredentials.a(null));
    }

    public final boolean q() {
        if (!o()) {
            return true;
        }
        return false;
    }
}
