package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbds {

    /* renamed from: a, reason: collision with root package name */
    public final long f4579a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4580c;

    public zzbds(int i, String str, long j) {
        this.f4579a = j;
        this.b = str;
        this.f4580c = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbds)) {
            return false;
        }
        zzbds zzbdsVar = (zzbds) obj;
        if (zzbdsVar.f4579a != this.f4579a || zzbdsVar.f4580c != this.f4580c) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (int) this.f4579a;
    }
}
