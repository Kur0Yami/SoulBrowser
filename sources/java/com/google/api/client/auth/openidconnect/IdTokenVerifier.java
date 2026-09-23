package com.google.api.client.auth.openidconnect;

import android.support.v4.media.a;
import com.google.api.client.googleapis.auth.oauth2.GoogleIdTokenVerifier;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.util.Base64;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Strings;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.util.concurrent.UncheckedExecutionException;
import j$.util.DesugarCollections;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
/* loaded from: classes3.dex */
public class IdTokenVerifier {
    public static final long DEFAULT_TIME_SKEW_SECONDS = 300;
    private static final String FEDERATED_SIGNON_CERT_URL = "https://www.googleapis.com/oauth2/v3/certs";
    private static final String IAP_CERT_URL = "https://www.gstatic.com/iap/verify/public_key-jwk";
    private static final String NOT_SUPPORTED_ALGORITHM = "Unexpected signing algorithm %s: expected either RS256 or ES256";
    static final String SKIP_SIGNATURE_ENV_VAR = "OAUTH_CLIENT_SKIP_SIGNATURE";
    private final long acceptableTimeSkewSeconds;
    private final Collection<String> audience;
    private final String certificatesLocation;
    private final Clock clock;
    private final Environment environment;
    private final Collection<String> issuers;
    private final LoadingCache<String, Map<String, PublicKey>> publicKeyCache;
    private static final Logger LOGGER = Logger.getLogger(IdTokenVerifier.class.getName());
    private static final Set<String> SUPPORTED_ALGORITHMS = ImmutableSet.s(2, "RS256", "ES256");
    static final HttpTransport HTTP_TRANSPORT = new NetHttpTransport();

    @Beta
    /* loaded from: classes3.dex */
    public static class Builder {
        Collection<String> audience;
        String certificatesLocation;
        Environment environment;
        HttpTransportFactory httpTransportFactory;
        Collection<String> issuers;
        Clock clock = Clock.SYSTEM;
        long acceptableTimeSkewSeconds = 300;

        public final long getAcceptableTimeSkewSeconds() {
            return this.acceptableTimeSkewSeconds;
        }

        public final Collection<String> getAudience() {
            return this.audience;
        }

        public final Clock getClock() {
            return this.clock;
        }

        public final Environment getEnvironment() {
            return this.environment;
        }

        public final String getIssuer() {
            Collection<String> collection = this.issuers;
            if (collection == null) {
                return null;
            }
            return collection.iterator().next();
        }

        public final Collection<String> getIssuers() {
            return this.issuers;
        }

        public Builder setAcceptableTimeSkewSeconds(long j) {
            boolean z;
            if (j >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.acceptableTimeSkewSeconds = j;
            return this;
        }

        public Builder setAudience(Collection collection) {
            this.audience = collection;
            return this;
        }

        public Builder setCertificatesLocation(String str) {
            this.certificatesLocation = str;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) Preconditions.checkNotNull(clock);
            return this;
        }

        public Builder setEnvironment(Environment environment) {
            this.environment = environment;
            return this;
        }

        public Builder setHttpTransportFactory(HttpTransportFactory httpTransportFactory) {
            this.httpTransportFactory = httpTransportFactory;
            return this;
        }

        public Builder setIssuers(Collection collection) {
            boolean z;
            if (collection != null && collection.isEmpty()) {
                z = false;
            } else {
                z = true;
            }
            Preconditions.checkArgument(z, "Issuers must not be empty");
            this.issuers = collection;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static class DefaultHttpTransportFactory implements HttpTransportFactory {
        @Override // com.google.api.client.auth.openidconnect.HttpTransportFactory
        public final HttpTransport a() {
            return IdTokenVerifier.HTTP_TRANSPORT;
        }
    }

    /* loaded from: classes3.dex */
    public static class PublicKeyLoader extends CacheLoader<String, Map<String, PublicKey>> {

        /* renamed from: c, reason: collision with root package name */
        public final HttpTransportFactory f12078c;

        /* loaded from: classes3.dex */
        public static class JsonWebKey {

            @Key
            public String alg;

            @Key
            public String crv;

            @Key
            public String e;

            @Key
            public String kid;

            @Key
            public String kty;

            @Key
            public String n;

            @Key
            public String use;

            @Key
            public String x;

            @Key
            public String y;
        }

        /* loaded from: classes3.dex */
        public static class JsonWebKeySet extends GenericJson {

            @Key
            public List<JsonWebKey> keys;
        }

        public PublicKeyLoader(HttpTransportFactory httpTransportFactory) {
            this.f12078c = httpTransportFactory;
        }

        public static PublicKey d(JsonWebKey jsonWebKey) {
            if ("ES256".equals(jsonWebKey.alg)) {
                com.google.common.base.Preconditions.d("EC".equals(jsonWebKey.kty));
                com.google.common.base.Preconditions.d("P-256".equals(jsonWebKey.crv));
                ECPoint eCPoint = new ECPoint(new BigInteger(1, Base64.decodeBase64(jsonWebKey.x)), new BigInteger(1, Base64.decodeBase64(jsonWebKey.y)));
                AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("EC");
                algorithmParameters.init(new ECGenParameterSpec("secp256r1"));
                return KeyFactory.getInstance("EC").generatePublic(new ECPublicKeySpec(eCPoint, (ECParameterSpec) algorithmParameters.getParameterSpec(ECParameterSpec.class)));
            }
            if ("RS256".equals(jsonWebKey.alg)) {
                com.google.common.base.Preconditions.d("RSA".equals(jsonWebKey.kty));
                jsonWebKey.e.getClass();
                jsonWebKey.n.getClass();
                return KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger(1, Base64.decodeBase64(jsonWebKey.n)), new BigInteger(1, Base64.decodeBase64(jsonWebKey.e))));
            }
            return null;
        }

        @Override // com.google.common.cache.CacheLoader
        public final Object b(Object obj) {
            String str = (String) obj;
            try {
                JsonWebKeySet jsonWebKeySet = (JsonWebKeySet) this.f12078c.a().createRequestFactory().buildGetRequest(new GenericUrl(str)).setParser(GsonFactory.getDefaultInstance().createJsonObjectParser()).execute().parseAs(JsonWebKeySet.class);
                ImmutableMap.Builder builder = new ImmutableMap.Builder(4);
                List<JsonWebKey> list = jsonWebKeySet.keys;
                if (list == null) {
                    for (String str2 : jsonWebKeySet.keySet()) {
                        builder.d(str2, CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(((String) jsonWebKeySet.get(str2)).getBytes("UTF-8"))).getPublicKey());
                    }
                } else {
                    for (JsonWebKey jsonWebKey : list) {
                        try {
                            builder.d(jsonWebKey.kid, d(jsonWebKey));
                        } catch (NoSuchAlgorithmException | InvalidKeySpecException | InvalidParameterSpecException e) {
                            IdTokenVerifier.LOGGER.log(Level.WARNING, "Failed to put a key into the cache", e);
                        }
                    }
                }
                if (!builder.b(true).isEmpty()) {
                    return builder.b(true);
                }
                throw new Exception(a.C("No valid public key returned by the keystore: ", str));
            } catch (IOException e2) {
                IdTokenVerifier.LOGGER.log(Level.WARNING, "Failed to get a certificate from certificate location " + str, (Throwable) e2);
                throw e2;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class VerificationException extends Exception {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public IdTokenVerifier(GoogleIdTokenVerifier.Builder builder) {
        Collection<String> unmodifiableCollection;
        boolean z;
        this.certificatesLocation = builder.certificatesLocation;
        this.clock = builder.clock;
        this.acceptableTimeSkewSeconds = builder.acceptableTimeSkewSeconds;
        Collection<String> collection = builder.issuers;
        if (collection == null) {
            unmodifiableCollection = null;
        } else {
            unmodifiableCollection = DesugarCollections.unmodifiableCollection(collection);
        }
        this.issuers = unmodifiableCollection;
        Collection<String> collection2 = builder.audience;
        this.audience = collection2 != null ? DesugarCollections.unmodifiableCollection(collection2) : null;
        HttpTransportFactory httpTransportFactory = builder.httpTransportFactory;
        HttpTransportFactory obj = httpTransportFactory == null ? new Object() : httpTransportFactory;
        CacheBuilder b = CacheBuilder.b();
        TimeUnit timeUnit = TimeUnit.HOURS;
        long j = b.b;
        if (j == -1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            b.b = timeUnit.toNanos(1L);
            this.publicKeyCache = b.a(new PublicKeyLoader(obj));
            Environment environment = builder.environment;
            this.environment = environment == null ? new Object() : environment;
            return;
        }
        throw new IllegalStateException(Strings.a("expireAfterWrite was already set to %s ns", Long.valueOf(j)));
    }

    public final String a(JsonWebSignature.Header header) {
        String str = this.certificatesLocation;
        if (str != null) {
            return str;
        }
        String d = header.d();
        d.getClass();
        if (!d.equals("ES256")) {
            if (d.equals("RS256")) {
                return FEDERATED_SIGNON_CERT_URL;
            }
            throw new Exception(a.l("Unexpected signing algorithm ", header.d(), ": expected either RS256 or ES256"));
        }
        return IAP_CERT_URL;
    }

    public final long getAcceptableTimeSkewSeconds() {
        return this.acceptableTimeSkewSeconds;
    }

    public final Collection<String> getAudience() {
        return this.audience;
    }

    public final Clock getClock() {
        return this.clock;
    }

    public final String getIssuer() {
        Collection<String> collection = this.issuers;
        if (collection == null) {
            return null;
        }
        return collection.iterator().next();
    }

    public final Collection<String> getIssuers() {
        return this.issuers;
    }

    public boolean verify(IdToken idToken) {
        if (!verifyPayload(idToken)) {
            return false;
        }
        try {
            return verifySignature(idToken);
        } catch (VerificationException e) {
            LOGGER.log(Level.SEVERE, "id token signature verification failed. Please see docs for IdTokenVerifier for default settings and configuration options", (Throwable) e);
            return false;
        }
    }

    public boolean verifyPayload(IdToken idToken) {
        Collection<String> collection = this.issuers;
        if (collection == null || idToken.verifyIssuer(collection)) {
            Collection<String> collection2 = this.audience;
            if ((collection2 == null || idToken.verifyAudience(collection2)) && idToken.verifyTime(this.clock.currentTimeMillis(), this.acceptableTimeSkewSeconds)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @VisibleForTesting
    public boolean verifySignature(IdToken idToken) {
        this.environment.getClass();
        if (!Boolean.parseBoolean(System.getenv(SKIP_SIGNATURE_ENV_VAR))) {
            if (SUPPORTED_ALGORITHMS.contains(idToken.getHeader().d())) {
                try {
                    PublicKey publicKey = (PublicKey) ((Map) this.publicKeyCache.get(a(idToken.getHeader()))).get(idToken.getHeader().e());
                    if (publicKey != null) {
                        try {
                            if (idToken.verifySignature(publicKey)) {
                                return true;
                            }
                            throw new Exception("Invalid signature");
                        } catch (GeneralSecurityException e) {
                            throw new Exception("Error validating token", e);
                        }
                    }
                    throw new Exception("Could not find public key for provided keyId: " + idToken.getHeader().e());
                } catch (UncheckedExecutionException | ExecutionException e2) {
                    throw new Exception("Error fetching public key from certificate location " + this.certificatesLocation, e2);
                }
            }
            throw new Exception(a.l("Unexpected signing algorithm ", idToken.getHeader().d(), ": expected either RS256 or ES256"));
        }
        return true;
    }
}
