package com.google.auth.oauth2;

import com.google.common.base.MoreObjects;
import j$.util.Objects;
import java.io.Serializable;

/* loaded from: classes3.dex */
public class IdToken extends AccessToken implements Serializable {
    @Override // com.google.auth.oauth2.AccessToken
    public final boolean equals(Object obj) {
        if (!(obj instanceof IdToken) || !Objects.equals(this.f12101c, ((IdToken) obj).f12101c)) {
            return false;
        }
        throw null;
    }

    @Override // com.google.auth.oauth2.AccessToken
    public final int hashCode() {
        throw null;
    }

    @Override // com.google.auth.oauth2.AccessToken
    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(this.f12101c, "tokenValue");
        b.b(null, "JsonWebSignature");
        return b.toString();
    }
}
