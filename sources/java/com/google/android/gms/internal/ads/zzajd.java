package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzajd extends zzaee implements zzajk {
    public final long g;
    public final int h;
    public final int i;
    public final long j;

    public zzajd(int i, int i2, long j, long j2) {
        super(i, i2, j, j2);
        long j3;
        this.g = j2;
        this.h = i;
        this.i = i2;
        if (j != -1) {
            j3 = j;
        } else {
            j3 = -1;
        }
        this.j = j3;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final long a(long j) {
        return (Math.max(0L, j - this.b) * 8000000) / this.e;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final long zzf() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final int zzg() {
        return this.h;
    }
}
