package com.google.auth.oauth2;

import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.auth.http.HttpTransportFactory;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import j$.util.Objects;
import java.net.URI;

/* loaded from: classes3.dex */
public class GdchCredentials extends GoogleCredentials {

    /* loaded from: classes3.dex */
    public static class Builder extends GoogleCredentials.Builder {
    }

    /* loaded from: classes3.dex */
    public static class TransportFactoryForGdch implements HttpTransportFactory {
        @Override // com.google.auth.http.HttpTransportFactory
        public final HttpTransport a() {
            return null;
        }
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final boolean equals(Object obj) {
        Object obj2 = 0;
        if (!(obj instanceof GdchCredentials) || !obj2.equals(obj2)) {
            return false;
        }
        return true;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final int hashCode() {
        return Objects.hash(null, null, null, null, null, null, null, null, 0);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        Preconditions.h(null, "Audience are not configured for GDCH service account. Specify the audience by calling createWithGDCHAudience.");
        URI uri = OAuth2Utils.f12137a;
        long currentTimeMillis = this.j.currentTimeMillis();
        JsonWebSignature.Header header = new JsonWebSignature.Header();
        header.g();
        header.c();
        header.h(null);
        JsonWebToken.Payload payload = new JsonWebToken.Payload();
        payload.setIssuer("system:serviceaccount:null:null");
        payload.setSubject("system:serviceaccount:null:null");
        long j = currentTimeMillis / 1000;
        payload.setIssuedAtTimeSeconds(Long.valueOf(j));
        payload.setExpirationTimeSeconds(Long.valueOf(j + 0));
        throw null;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "projectId");
        b.b(null, "privateKeyId");
        b.b(null, "serviceIdentityName");
        b.b(null, "tokenServerUri");
        b.b(null, "transportFactoryClassName");
        b.b(null, "caCertPath");
        b.b(null, "apiAudience");
        b.a(0, "lifetime");
        return b.toString();
    }
}
