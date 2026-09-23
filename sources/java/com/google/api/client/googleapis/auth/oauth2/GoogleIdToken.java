package com.google.api.client.googleapis.auth.oauth2;

import com.google.android.gms.common.Scopes;
import com.google.api.client.auth.openidconnect.IdToken;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Key;
import java.util.List;

@Beta
/* loaded from: classes3.dex */
public class GoogleIdToken extends IdToken {

    @Beta
    /* loaded from: classes3.dex */
    public static class Payload extends IdToken.Payload {

        @Key(Scopes.EMAIL)
        private String email;

        @Key("email_verified")
        private Object emailVerified;

        @Key("hd")
        private String hostedDomain;

        public String getEmail() {
            return this.email;
        }

        public Boolean getEmailVerified() {
            Object obj = this.emailVerified;
            if (obj == null) {
                return null;
            }
            if (obj instanceof Boolean) {
                return (Boolean) obj;
            }
            return Boolean.valueOf((String) obj);
        }

        public String getHostedDomain() {
            return this.hostedDomain;
        }

        @Deprecated
        public String getIssuee() {
            return getAuthorizedParty();
        }

        @Deprecated
        public String getUserId() {
            return getSubject();
        }

        public Payload setEmail(String str) {
            this.email = str;
            return this;
        }

        public Payload setEmailVerified(Boolean bool) {
            this.emailVerified = bool;
            return this;
        }

        public Payload setHostedDomain(String str) {
            this.hostedDomain = str;
            return this;
        }

        @Deprecated
        public Payload setIssuee(String str) {
            return setAuthorizedParty(str);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public /* bridge */ /* synthetic */ IdToken.Payload setMethodsReferences(List list) {
            return setMethodsReferences((List<String>) list);
        }

        @Deprecated
        public Payload setUserId(String str) {
            return setSubject(str);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setAccessTokenHash(String str) {
            super.setAccessTokenHash(str);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setAuthorizationTimeSeconds(Long l) {
            super.setAuthorizationTimeSeconds(l);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setAuthorizedParty(String str) {
            super.setAuthorizedParty(str);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setClassReference(String str) {
            super.setClassReference(str);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setMethodsReferences(List<String> list) {
            super.setMethodsReferences((List) list);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setNonce(String str) {
            super.setNonce(str);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setAudience(Object obj) {
            super.setAudience(obj);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setExpirationTimeSeconds(Long l) {
            super.setExpirationTimeSeconds(l);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuedAtTimeSeconds(Long l) {
            super.setIssuedAtTimeSeconds(l);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuer(String str) {
            super.setIssuer(str);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setJwtId(String str) {
            super.setJwtId(str);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setNotBeforeTimeSeconds(Long l) {
            super.setNotBeforeTimeSeconds(l);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setSubject(String str) {
            super.setSubject(str);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setType(String str) {
            super.setType(str);
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
        public Payload set(String str, Object obj) {
            return (Payload) super.set(str, obj);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Payload clone() {
            return (Payload) super.clone();
        }
    }

    public GoogleIdToken(JsonWebSignature.Header header, Payload payload, byte[] bArr, byte[] bArr2) {
        super(header, payload, bArr, bArr2);
    }

    public static GoogleIdToken parse(JsonFactory jsonFactory, String str) {
        JsonWebSignature.Parser parser = JsonWebSignature.parser(jsonFactory);
        parser.b = Payload.class;
        JsonWebSignature a2 = parser.a(str);
        return new GoogleIdToken(a2.getHeader(), (Payload) a2.getPayload(), a2.getSignatureBytes(), a2.getSignedContentBytes());
    }

    public boolean verify(GoogleIdTokenVerifier googleIdTokenVerifier) {
        return googleIdTokenVerifier.verify(this);
    }

    @Override // com.google.api.client.auth.openidconnect.IdToken, com.google.api.client.json.webtoken.JsonWebToken
    public Payload getPayload() {
        return (Payload) super.getPayload();
    }
}
