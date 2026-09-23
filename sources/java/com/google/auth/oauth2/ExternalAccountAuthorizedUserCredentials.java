package com.google.auth.oauth2;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.OAuth2Credentials;
import com.google.common.base.MoreObjects;
import j$.util.Objects;
import java.util.Map;

/* loaded from: classes3.dex */
public class ExternalAccountAuthorizedUserCredentials extends GoogleCredentials {

    /* loaded from: classes3.dex */
    public static class Builder extends GoogleCredentials.Builder {
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final boolean equals(Object obj) {
        if (obj instanceof ExternalAccountAuthorizedUserCredentials) {
            ExternalAccountAuthorizedUserCredentials externalAccountAuthorizedUserCredentials = (ExternalAccountAuthorizedUserCredentials) obj;
            if (super.equals(externalAccountAuthorizedUserCredentials) && Objects.equals(d(), externalAccountAuthorizedUserCredentials.d()) && Objects.equals(null, null)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), d(), null, null, null, null, null, null, null, null, null);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        throw new IllegalStateException("Unable to refresh ExternalAccountAuthorizedUserCredentials. All of 'refresh_token','token_url', 'client_id', 'client_secret' are required to refresh.");
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final String toString() {
        Map map;
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        OAuth2Credentials.OAuthValue oAuthValue = this.h;
        if (oAuthValue != null) {
            map = oAuthValue.f;
        } else {
            map = null;
        }
        b.b(map, "requestMetadata");
        b.b(d(), "temporaryAccess");
        b.b(null, "clientId");
        b.b(null, "clientSecret");
        b.b(null, "refreshToken");
        b.b(null, "tokenUrl");
        b.b(null, "tokenInfoUrl");
        b.b(null, "revokeUrl");
        b.b(null, "audience");
        b.b(null, "transportFactoryClassName");
        b.b(null, "quotaProjectId");
        return b.toString();
    }
}
