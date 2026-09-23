package com.google.android.gms.auth.api;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;

@Deprecated
/* loaded from: classes.dex */
public final class zbd implements Api.ApiOptions.Optional {
    public static final zbd g;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3399c;
    public final String f;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.auth.api.zbc] */
    static {
        ?? obj = new Object();
        obj.f3398a = Boolean.FALSE;
        g = new zbd(obj);
    }

    public zbd(zbc zbcVar) {
        this.f3399c = zbcVar.f3398a.booleanValue();
        this.f = zbcVar.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zbd)) {
            return false;
        }
        zbd zbdVar = (zbd) obj;
        if (Objects.equal(null, null) && this.f3399c == zbdVar.f3399c && Objects.equal(this.f, zbdVar.f)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(null, Boolean.valueOf(this.f3399c), this.f);
    }
}
