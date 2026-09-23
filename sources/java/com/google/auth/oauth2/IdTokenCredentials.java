package com.google.auth.oauth2;

import com.google.auth.oauth2.OAuth2Credentials;
import com.google.common.base.MoreObjects;
import j$.util.Objects;

/* loaded from: classes3.dex */
public class IdTokenCredentials extends OAuth2Credentials {

    /* loaded from: classes3.dex */
    public static class Builder extends OAuth2Credentials.Builder {
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final boolean equals(Object obj) {
        if (!(obj instanceof IdTokenCredentials)) {
            return false;
        }
        return true;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final int hashCode() {
        return Objects.hash(null, null);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        throw null;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final String toString() {
        return MoreObjects.b(this).toString();
    }
}
