package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzll {

    /* renamed from: a, reason: collision with root package name */
    public final zzwg f9091a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9092c;
    public final long d;
    public final long e;
    public final boolean f;
    public final boolean g;
    public final boolean h;

    public zzll(zzwg zzwgVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3) {
        boolean z4;
        if (!z3 || z) {
            z4 = true;
        } else {
            z4 = false;
        }
        zzgqa.a(z4);
        zzgqa.a(!z2 || z);
        this.f9091a = zzwgVar;
        this.b = j;
        this.f9092c = j2;
        this.d = j3;
        this.e = j4;
        this.f = z;
        this.g = z2;
        this.h = z3;
    }

    public final zzll a(long j) {
        if (j == this.b) {
            return this;
        }
        return new zzll(this.f9091a, j, this.f9092c, this.d, this.e, this.f, this.g, this.h);
    }

    public final zzll b(long j) {
        if (j == this.f9092c) {
            return this;
        }
        return new zzll(this.f9091a, this.b, j, this.d, this.e, this.f, this.g, this.h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzll.class == obj.getClass()) {
            zzll zzllVar = (zzll) obj;
            if (this.b == zzllVar.b && this.f9092c == zzllVar.f9092c && this.d == zzllVar.d && this.e == zzllVar.e && this.f == zzllVar.f && this.g == zzllVar.g && this.h == zzllVar.h && Objects.equals(this.f9091a, zzllVar.f9091a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.f9091a.hashCode() + 527) * 31) + ((int) this.b)) * 31) + ((int) this.f9092c)) * 31) + ((int) this.d)) * 31) + ((int) this.e)) * 29791) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.h ? 1 : 0);
    }
}
