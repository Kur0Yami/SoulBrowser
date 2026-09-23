package com.google.api.client.json.webtoken;

import android.support.v4.media.a;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.util.Base64;
import com.google.api.client.util.Beta;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.SecurityUtils;
import com.google.api.client.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* loaded from: classes3.dex */
public class JsonWebSignature extends JsonWebToken {
    private final byte[] signatureBytes;
    private final byte[] signedContentBytes;

    /* loaded from: classes3.dex */
    public static class Header extends JsonWebToken.Header {

        @Key("alg")
        private String algorithm;

        @Key("crit")
        private List<String> critical;

        @Key("jwk")
        private String jwk;

        @Key("jku")
        private String jwkUrl;

        @Key("kid")
        private String keyId;

        @Key("x5c")
        private ArrayList<String> x509Certificates;

        @Key("x5t")
        private String x509Thumbprint;

        @Key("x5u")
        private String x509Url;

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header
        /* renamed from: a */
        public final JsonWebToken.Header clone() {
            return (Header) super.clone();
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header
        /* renamed from: b */
        public final JsonWebToken.Header set(Object obj, String str) {
            return (Header) super.set(obj, str);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public final GenericJson clone() {
            return (Header) super.clone();
        }

        public final String d() {
            return this.algorithm;
        }

        public final String e() {
            return this.keyId;
        }

        public final ArrayList f() {
            return new ArrayList(this.x509Certificates);
        }

        public final void g() {
            this.algorithm = "RS256";
        }

        public final void h(String str) {
            this.keyId = str;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
        public final GenericJson set(String str, Object obj) {
            return (Header) super.set(obj, str);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public final GenericData clone() {
            return (Header) super.clone();
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
        public final GenericData set(String str, Object obj) {
            return (Header) super.set(obj, str);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Header, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public final Object clone() {
            return (Header) super.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static final class Parser {

        /* renamed from: a, reason: collision with root package name */
        public final JsonFactory f12087a;
        public Class b = JsonWebToken.Payload.class;

        public Parser(JsonFactory jsonFactory) {
            this.f12087a = (JsonFactory) Preconditions.checkNotNull(jsonFactory);
        }

        public final JsonWebSignature a(String str) {
            boolean z;
            boolean z2;
            boolean z3;
            int indexOf = str.indexOf(46);
            boolean z4 = false;
            if (indexOf != -1) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            byte[] decodeBase64 = Base64.decodeBase64(str.substring(0, indexOf));
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(46, i);
            if (indexOf2 != -1) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.checkArgument(z2);
            int i2 = indexOf2 + 1;
            if (str.indexOf(46, i2) == -1) {
                z3 = true;
            } else {
                z3 = false;
            }
            Preconditions.checkArgument(z3);
            byte[] decodeBase642 = Base64.decodeBase64(str.substring(i, indexOf2));
            byte[] decodeBase643 = Base64.decodeBase64(str.substring(i2));
            byte[] bytesUtf8 = StringUtils.getBytesUtf8(str.substring(0, indexOf2));
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(decodeBase64);
            JsonFactory jsonFactory = this.f12087a;
            Header header = (Header) jsonFactory.fromInputStream(byteArrayInputStream, Header.class);
            if (header.d() != null) {
                z4 = true;
            }
            Preconditions.checkArgument(z4);
            return new JsonWebSignature(header, (JsonWebToken.Payload) jsonFactory.fromInputStream(new ByteArrayInputStream(decodeBase642), this.b), decodeBase643, bytesUtf8);
        }
    }

    public JsonWebSignature(Header header, JsonWebToken.Payload payload, byte[] bArr, byte[] bArr2) {
        super(header, payload);
        this.signatureBytes = (byte[]) Preconditions.checkNotNull(bArr);
        this.signedContentBytes = (byte[]) Preconditions.checkNotNull(bArr2);
    }

    public static JsonWebSignature parse(JsonFactory jsonFactory, String str) {
        return parser(jsonFactory).a(str);
    }

    public static Parser parser(JsonFactory jsonFactory) {
        return new Parser(jsonFactory);
    }

    public static String signUsingRsaSha256(PrivateKey privateKey, JsonFactory jsonFactory, Header header, JsonWebToken.Payload payload) {
        String str = Base64.encodeBase64URLSafeString(jsonFactory.toByteArray(header)) + "." + Base64.encodeBase64URLSafeString(jsonFactory.toByteArray(payload));
        byte[] sign = SecurityUtils.sign(SecurityUtils.getSha256WithRsaSignatureAlgorithm(), privateKey, StringUtils.getBytesUtf8(str));
        StringBuilder v = a.v(str, ".");
        v.append(Base64.encodeBase64URLSafeString(sign));
        return v.toString();
    }

    public final byte[] getSignatureBytes() {
        byte[] bArr = this.signatureBytes;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final byte[] getSignedContentBytes() {
        byte[] bArr = this.signedContentBytes;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final boolean verifySignature(PublicKey publicKey) {
        String d = getHeader().d();
        if ("RS256".equals(d)) {
            return SecurityUtils.verify(SecurityUtils.getSha256WithRsaSignatureAlgorithm(), publicKey, this.signatureBytes, this.signedContentBytes);
        }
        if ("ES256".equals(d)) {
            return SecurityUtils.verify(SecurityUtils.getEs256SignatureAlgorithm(), publicKey, DerEncoder.a(this.signatureBytes), this.signedContentBytes);
        }
        return false;
    }

    @Override // com.google.api.client.json.webtoken.JsonWebToken
    public Header getHeader() {
        return (Header) super.getHeader();
    }

    @Beta
    public final X509Certificate verifySignature(X509TrustManager x509TrustManager) {
        ArrayList f = getHeader().f();
        if (f.isEmpty()) {
            return null;
        }
        String d = getHeader().d();
        if ("RS256".equals(d)) {
            return SecurityUtils.verify(SecurityUtils.getSha256WithRsaSignatureAlgorithm(), x509TrustManager, f, this.signatureBytes, this.signedContentBytes);
        }
        if ("ES256".equals(d)) {
            return SecurityUtils.verify(SecurityUtils.getEs256SignatureAlgorithm(), x509TrustManager, f, DerEncoder.a(this.signatureBytes), this.signedContentBytes);
        }
        return null;
    }

    @Beta
    public final X509Certificate verifySignature() {
        X509TrustManager x509TrustManager;
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
                if (trustManager instanceof X509TrustManager) {
                    x509TrustManager = (X509TrustManager) trustManager;
                    break;
                }
            }
        } catch (KeyStoreException | NoSuchAlgorithmException unused) {
        }
        x509TrustManager = null;
        if (x509TrustManager == null) {
            return null;
        }
        return verifySignature(x509TrustManager);
    }
}
