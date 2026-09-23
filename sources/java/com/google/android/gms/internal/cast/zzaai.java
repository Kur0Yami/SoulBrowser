package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
final class zzaai extends zzaaj {
    @Override // com.google.android.gms.internal.cast.zzaaj
    public final void a(Object obj, long j, byte b) {
        if (zzaak.g) {
            zzaak.c(obj, j, b);
        } else {
            zzaak.d(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final boolean b(long j, Object obj) {
        if (zzaak.g) {
            return zzaak.n(j, obj);
        }
        return zzaak.o(j, obj);
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final void c(Object obj, long j, boolean z) {
        if (zzaak.g) {
            zzaak.c(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzaak.d(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final float d(long j, Object obj) {
        return Float.intBitsToFloat(this.f9607a.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final void e(Object obj, long j, float f) {
        this.f9607a.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final double f(long j, Object obj) {
        return Double.longBitsToDouble(this.f9607a.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.cast.zzaaj
    public final void g(Object obj, long j, double d) {
        this.f9607a.putLong(obj, j, Double.doubleToLongBits(d));
    }
}
