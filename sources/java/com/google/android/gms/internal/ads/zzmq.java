package com.google.android.gms.internal.ads;

import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public final class zzmq {

    /* renamed from: c, reason: collision with root package name */
    public static final zzmq f9122c;
    public static final zzmq d;

    /* renamed from: a, reason: collision with root package name */
    public final long f9123a;
    public final long b;

    static {
        zzmq zzmqVar = new zzmq(0L, 0L);
        new zzmq(LongCompanionObject.MAX_VALUE, LongCompanionObject.MAX_VALUE);
        f9122c = new zzmq(LongCompanionObject.MAX_VALUE, 0L);
        new zzmq(0L, LongCompanionObject.MAX_VALUE);
        d = zzmqVar;
    }

    public zzmq(long j, long j2) {
        boolean z;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        zzgqa.a(j2 >= 0);
        this.f9123a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzmq.class == obj.getClass()) {
            zzmq zzmqVar = (zzmq) obj;
            if (this.f9123a == zzmqVar.f9123a && this.b == zzmqVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f9123a) * 31) + ((int) this.b);
    }
}
