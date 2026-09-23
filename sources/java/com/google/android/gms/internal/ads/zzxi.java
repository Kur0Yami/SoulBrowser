package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzxi {

    /* renamed from: a, reason: collision with root package name */
    public final int f9362a;
    public final boolean b;

    public zzxi(int i, boolean z) {
        this.f9362a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && zzxi.class == obj.getClass()) {
                zzxi zzxiVar = (zzxi) obj;
                if (this.f9362a == zzxiVar.f9362a && this.b == zzxiVar.b) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (this.f9362a * 31) + (this.b ? 1 : 0);
    }
}
