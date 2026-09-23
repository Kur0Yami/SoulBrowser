package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzajn implements zzajk {

    /* renamed from: a, reason: collision with root package name */
    public final long f4095a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4096c;
    public final int d;
    public final long e;
    public final long f;
    public final long[] g;

    public zzajn(long j, int i, long j2, int i2, long j3, long[] jArr) {
        this.f4095a = j;
        this.b = i;
        this.f4096c = j2;
        this.d = i2;
        this.e = j3;
        this.g = jArr;
        this.f = j3 != -1 ? j + j3 : -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final long a(long j) {
        long j2;
        double d;
        if (zzb()) {
            long j3 = j - this.f4095a;
            if (j3 > this.b) {
                long[] jArr = this.g;
                jArr.getClass();
                double d2 = (j3 * 256.0d) / this.e;
                int q = zzfj.q(jArr, (long) d2, true);
                long j4 = this.f4096c;
                long j5 = (q * j4) / 100;
                long j6 = jArr[q];
                int i = q + 1;
                long j7 = (j4 * i) / 100;
                if (q == 99) {
                    j2 = 256;
                } else {
                    j2 = jArr[i];
                }
                if (j6 == j2) {
                    d = 0.0d;
                } else {
                    d = (d2 - j6) / (j2 - j6);
                }
                return Math.round(d * (j7 - j5)) + j5;
            }
            return 0L;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        double d;
        double d2;
        boolean zzb = zzb();
        int i = this.b;
        long j2 = this.f4095a;
        if (!zzb) {
            zzafs zzafsVar = new zzafs(0L, j2 + i);
            return new zzafp(zzafsVar, zzafsVar);
        }
        String str = zzfj.f7405a;
        long j3 = this.f4096c;
        long max = Math.max(0L, Math.min(j, j3));
        double d3 = (max * 100.0d) / j3;
        double d4 = 0.0d;
        if (d3 <= 0.0d) {
            d = 256.0d;
        } else if (d3 >= 100.0d) {
            d = 256.0d;
            d4 = 256.0d;
        } else {
            int i2 = (int) d3;
            long[] jArr = this.g;
            jArr.getClass();
            double d5 = jArr[i2];
            if (i2 == 99) {
                d = 256.0d;
                d2 = 256.0d;
            } else {
                d = 256.0d;
                d2 = jArr[i2 + 1];
            }
            d4 = ((d2 - d5) * (d3 - i2)) + d5;
        }
        long j4 = this.e;
        zzafs zzafsVar2 = new zzafs(max, j2 + Math.max(i, Math.min(Math.round((d4 / d) * j4), j4 - 1)));
        return new zzafp(zzafsVar2, zzafsVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f4096c;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return this.g != null;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final long zzf() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final int zzg() {
        return this.d;
    }
}
