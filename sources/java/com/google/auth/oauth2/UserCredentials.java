package com.google.auth.oauth2;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.OAuth2Credentials;
import com.google.common.base.MoreObjects;
import j$.util.Objects;
import java.util.Map;

/* loaded from: classes3.dex */
public class UserCredentials extends GoogleCredentials implements IdTokenProvider {

    /* loaded from: classes3.dex */
    public static class Builder extends GoogleCredentials.Builder {
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final boolean equals(Object obj) {
        if (obj instanceof UserCredentials) {
            UserCredentials userCredentials = (UserCredentials) obj;
            if (super.equals(userCredentials) && Objects.equals(d(), userCredentials.d())) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), d(), null, null, null, null, null, null);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        throw new IllegalStateException("UserCredentials instance cannot refresh because there is no refresh token.");
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
        b.b(null, "refreshToken");
        b.b(null, "tokenServerUri");
        b.b(null, "transportFactoryClassName");
        b.b(null, "quotaProjectId");
        return b.toString();
    }
}
