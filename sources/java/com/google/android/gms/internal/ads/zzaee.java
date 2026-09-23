package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public class zzaee implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final long f3948a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3949c;
    public final long d;
    public final int e;
    public final long f;

    public zzaee(int i, int i2, long j, long j2) {
        this.f3948a = j;
        this.b = j2;
        this.f3949c = i2 == -1 ? 1 : i2;
        this.e = i;
        if (j == -1) {
            this.d = -1L;
            this.f = -9223372036854775807L;
        } else {
            long j3 = j - j2;
            this.d = j3;
            this.f = (Math.max(0L, j3) * 8000000) / i;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        long j2 = this.d;
        long j3 = this.b;
        if (j2 != -1) {
            int i = this.e;
            long j4 = this.f3949c;
            long j5 = (((i * j) / 8000000) / j4) * j4;
            if (j2 != -1) {
                j5 = Math.min(j5, j2 - j4);
            }
            long max = Math.max(j5, 0L) + j3;
            long max2 = (Math.max(0L, max - j3) * 8000000) / i;
            zzafs zzafsVar = new zzafs(max2, max);
            if (j2 != -1 && max2 < j) {
                long j6 = max + j4;
                if (j6 < this.f3948a) {
                    return new zzafp(zzafsVar, new zzafs((Math.max(0L, j6 - j3) * 8000000) / i, j6));
                }
            }
            return new zzafp(zzafsVar, zzafsVar);
        }
        zzafs zzafsVar2 = new zzafs(0L, j3);
        return new zzafp(zzafsVar2, zzafsVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return this.d != -1;
    }
}
