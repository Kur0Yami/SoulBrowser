package com.google.api.client.auth.openidconnect;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Key;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@Beta
/* loaded from: classes3.dex */
public class IdToken extends JsonWebSignature {
    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.api.client.auth.openidconnect.IdToken, com.google.api.client.json.webtoken.JsonWebSignature] */
    public static IdToken parse(JsonFactory jsonFactory, String str) {
        JsonWebSignature.Parser parser = JsonWebSignature.parser(jsonFactory);
        parser.b = Payload.class;
        JsonWebSignature a2 = parser.a(str);
        return new JsonWebSignature(a2.getHeader(), (Payload) a2.getPayload(), a2.getSignatureBytes(), a2.getSignedContentBytes());
    }

    public final boolean verifyAudience(Collection<String> collection) {
        List<String> audienceAsList = getPayload().getAudienceAsList();
        if (audienceAsList.isEmpty()) {
            return false;
        }
        return collection.containsAll(audienceAsList);
    }

    public final boolean verifyExpirationTime(long j, long j2) {
        if (j <= (getPayload().getExpirationTimeSeconds().longValue() + j2) * 1000) {
            return true;
        }
        return false;
    }

    public final boolean verifyIssuedAtTime(long j, long j2) {
        if (j >= (getPayload().getIssuedAtTimeSeconds().longValue() - j2) * 1000) {
            return true;
        }
        return false;
    }

    public final boolean verifyIssuer(String str) {
        return verifyIssuer(Collections.singleton(str));
    }

    public final boolean verifyTime(long j, long j2) {
        if (verifyExpirationTime(j, j2) && verifyIssuedAtTime(j, j2)) {
            return true;
        }
        return false;
    }

    @Override // com.google.api.client.json.webtoken.JsonWebToken
    public Payload getPayload() {
        return (Payload) super.getPayload();
    }

    public final boolean verifyIssuer(Collection<String> collection) {
        return collection.contains(getPayload().getIssuer());
    }

    @Beta
    /* loaded from: classes3.dex */
    public static class Payload extends JsonWebToken.Payload {

        @Key("at_hash")
        private String accessTokenHash;

        @Key("auth_time")
        private Long authorizationTimeSeconds;

        @Key("azp")
        private String authorizedParty;

        @Key("acr")
        private String classReference;

        @Key("amr")
        private List<String> methodsReferences;

        @Key
        private String nonce;

        public final String getAccessTokenHash() {
            return this.accessTokenHash;
        }

        public final Long getAuthorizationTimeSeconds() {
            return this.authorizationTimeSeconds;
        }

        public final String getAuthorizedParty() {
            return this.authorizedParty;
        }

        public final String getClassReference() {
            return this.classReference;
        }

        public final List<String> getMethodsReferences() {
            return this.methodsReferences;
        }

        public final String getNonce() {
            return this.nonce;
        }

        public Payload setAccessTokenHash(String str) {
            this.accessTokenHash = str;
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setAudience(Object obj) {
            super.setAudience(obj);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public /* bridge */ /* synthetic */ JsonWebToken.Payload setAudience(Object obj) {
            throw null;
        }

        public Payload setAuthorizationTimeSeconds(Long l) {
            this.authorizationTimeSeconds = l;
            return this;
        }

        public Payload setAuthorizedParty(String str) {
            this.authorizedParty = str;
            return this;
        }

        public Payload setClassReference(String str) {
            this.classReference = str;
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setExpirationTimeSeconds(Long l) {
            super.setExpirationTimeSeconds(l);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public /* bridge */ /* synthetic */ JsonWebToken.Payload setExpirationTimeSeconds(Long l) {
            throw null;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuedAtTimeSeconds(Long l) {
            super.setIssuedAtTimeSeconds(l);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public /* bridge */ /* synthetic */ JsonWebToken.Payload setIssuedAtTimeSeconds(Long l) {
            throw null;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuer(String str) {
            super.setIssuer(str);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public /* bridge */ /* synthetic */ JsonWebToken.Payload setIssuer(String str) {
            throw null;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setJwtId(String str) {
            super.setJwtId(str);
            return this;
        }

        public Payload setMethodsReferences(List list) {
            this.methodsReferences = list;
            return this;
        }

        public Payload setNonce(String str) {
            this.nonce = str;
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setNotBeforeTimeSeconds(Long l) {
            super.setNotBeforeTimeSeconds(l);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setSubject(String str) {
            super.setSubject(str);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public /* bridge */ /* synthetic */ JsonWebToken.Payload setSubject(String str) {
            throw null;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setType(String str) {
            super.setType(str);
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
        public Payload set(String str, Object obj) {
            return (Payload) super.set(str, obj);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Payload clone() {
            return (Payload) super.clone();
        }
    }
}
