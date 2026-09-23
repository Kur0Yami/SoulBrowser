package com.google.auth.oauth2;

import com.google.common.base.MoreObjects;
import j$.util.Objects;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* loaded from: classes3.dex */
public class AccessToken implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final String f12101c;
    public final Long f;
    public final List g;

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    public AccessToken(String str, Date date) {
        Long valueOf;
        this.f12101c = str;
        if (date == null) {
            valueOf = null;
        } else {
            valueOf = Long.valueOf(date.getTime());
        }
        this.f = valueOf;
        this.g = new ArrayList();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        if (!Objects.equals(this.f12101c, accessToken.f12101c) || !Objects.equals(this.f, accessToken.f) || !Objects.equals(this.g, accessToken.g)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hash(this.f12101c, this.f, this.g);
    }

    public String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(this.f12101c, "tokenValue");
        b.b(this.f, "expirationTimeMillis");
        b.b(this.g, "scopes");
        return b.toString();
    }
}
