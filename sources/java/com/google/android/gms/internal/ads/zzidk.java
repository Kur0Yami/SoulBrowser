package com.google.android.gms.internal.ads;

import libcore.io.Memory;

/* loaded from: classes.dex */
final class zzidk extends zzidl {
    @Override // com.google.android.gms.internal.ads.zzidl
    public final void a(Object obj, long j, byte b) {
        if (zzidm.h) {
            zzidm.d(obj, j, b);
        } else {
            zzidm.e(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzidl
    public final boolean b(long j, Object obj) {
        if (zzidm.h) {
            return zzidm.q(j, obj);
        }
        return zzidm.r(j, obj);
    }

    @Override // com.google.android.gms.internal.ads.zzidl
    public final void c(Object obj, long j, boolean z) {
        if (zzidm.h) {
            zzidm.d(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzidm.e(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzidl
    public final float d(long j, Object obj) {
        return Float.intBitsToFloat(this.f8952a.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzidl
    public final void e(Object obj, long j, float f) {
        this.f8952a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.ads.zzidl
    public final double f(long j, Object obj) {
        return Double.longBitsToDouble(this.f8952a.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.ads.zzidl
    public final void g(Object obj, long j, double d) {
        this.f8952a.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.ads.zzidl
    public final byte h(long j) {
        return Memory.peekByte(j);
    }

    @Override // com.google.android.gms.internal.ads.zzidl
    public final void i(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray(j, bArr, (int) j2, (int) j3);
    }
}
