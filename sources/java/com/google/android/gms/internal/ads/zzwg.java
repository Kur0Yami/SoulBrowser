package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzwg {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9337a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9338c;
    public final long d;
    public final int e;

    public zzwg(Object obj, int i, int i2, long j, int i3) {
        this.f9337a = obj;
        this.b = i;
        this.f9338c = i2;
        this.d = j;
        this.e = i3;
    }

    public final zzwg a(Object obj) {
        if (this.f9337a.equals(obj)) {
            return this;
        }
        return new zzwg(obj, this.b, this.f9338c, this.d, this.e);
    }

    public final boolean b() {
        return this.b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzwg)) {
            return false;
        }
        zzwg zzwgVar = (zzwg) obj;
        if (this.f9337a.equals(zzwgVar.f9337a) && this.b == zzwgVar.b && this.f9338c == zzwgVar.f9338c && this.d == zzwgVar.d && this.e == zzwgVar.e) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.f9337a.hashCode() + 527) * 31) + this.b) * 31) + this.f9338c) * 31) + ((int) this.d)) * 31) + this.e;
    }

    public zzwg(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }

    public zzwg(int i, long j, Object obj) {
        this(obj, -1, -1, j, i);
    }
}
