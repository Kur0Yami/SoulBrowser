package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
final class zzig extends zzii {
    @Override // com.google.android.gms.internal.play_billing.zzii
    public final double a(long j, Object obj) {
        return Double.longBitsToDouble(this.f11539a.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.play_billing.zzii
    public final float b(long j, Object obj) {
        return Float.intBitsToFloat(this.f11539a.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.play_billing.zzii
    public final void c(Object obj, long j, boolean z) {
        if (zzij.g) {
            zzij.c(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzij.d(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzii
    public final void d(Object obj, long j, byte b) {
        if (zzij.g) {
            zzij.c(obj, j, b);
        } else {
            zzij.d(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzii
    public final void e(Object obj, long j, double d) {
        this.f11539a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.play_billing.zzii
    public final void f(Object obj, long j, float f) {
        this.f11539a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.play_billing.zzii
    public final boolean g(long j, Object obj) {
        if (zzij.g) {
            return zzij.m(j, obj);
        }
        return zzij.n(j, obj);
    }
}
