package com.google.android.gms.internal.auth;

/* loaded from: classes.dex */
final class zzhh extends zzhi {
    @Override // com.google.android.gms.internal.auth.zzhi
    public final double a(long j, Object obj) {
        return Double.longBitsToDouble(this.f9569a.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final float b(long j, Object obj) {
        return Float.intBitsToFloat(this.f9569a.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final void c(Object obj, long j, boolean z) {
        if (zzhj.f) {
            zzhj.f(obj, j, z);
        } else {
            zzhj.g(obj, j, z);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final void d(Object obj, long j, double d) {
        this.f9569a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final void e(Object obj, long j, float f) {
        this.f9569a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.auth.zzhi
    public final boolean f(long j, Object obj) {
        if (zzhj.f) {
            return zzhj.k(j, obj);
        }
        return zzhj.l(j, obj);
    }
}
