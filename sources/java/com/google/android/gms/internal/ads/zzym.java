package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzym {

    /* renamed from: a, reason: collision with root package name */
    public final long f9390a;
    public final long b;

    public zzym(long j, long j2) {
        this.f9390a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzym)) {
            return false;
        }
        zzym zzymVar = (zzym) obj;
        if (this.f9390a == zzymVar.f9390a && this.b == zzymVar.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f9390a) * 31) + ((int) this.b);
    }
}
