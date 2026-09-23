package com.google.android.gms.internal.consent_sdk;

/* loaded from: classes.dex */
final class zzsu extends zzsv {
    @Override // com.google.android.gms.internal.consent_sdk.zzsv
    public final double a(long j, Object obj) {
        return Double.longBitsToDouble(this.f10116a.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsv
    public final float b(long j, Object obj) {
        return Float.intBitsToFloat(this.f10116a.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsv
    public final void c(Object obj, long j, boolean z) {
        if (zzsw.g) {
            zzsw.c(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzsw.d(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsv
    public final void d(Object obj, long j, byte b) {
        if (zzsw.g) {
            zzsw.c(obj, j, b);
        } else {
            zzsw.d(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsv
    public final void e(Object obj, long j, double d) {
        this.f10116a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsv
    public final void f(Object obj, long j, float f) {
        this.f10116a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsv
    public final boolean g(long j, Object obj) {
        if (zzsw.g) {
            return zzsw.n(j, obj);
        }
        return zzsw.o(j, obj);
    }
}
