package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaez implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final zzafb f3964a;
    public final long b;

    public zzaez(zzafb zzafbVar, long j) {
        this.f3964a = zzafbVar;
        this.b = j;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        long j2;
        zzafb zzafbVar = this.f3964a;
        zzafa zzafaVar = zzafbVar.k;
        zzafaVar.getClass();
        String str = zzfj.f7405a;
        long j3 = 0;
        long max = Math.max(0L, Math.min((zzafbVar.e * j) / 1000000, zzafbVar.j - 1));
        long[] jArr = zzafaVar.f3965a;
        int q = zzfj.q(jArr, max, false);
        if (q == -1) {
            j2 = 0;
        } else {
            j2 = jArr[q];
        }
        long[] jArr2 = zzafaVar.b;
        if (q != -1) {
            j3 = jArr2[q];
        }
        int i = zzafbVar.e;
        long j4 = (j2 * 1000000) / i;
        long j5 = this.b;
        zzafs zzafsVar = new zzafs(j4, j3 + j5);
        if (j4 != j && q != jArr.length - 1) {
            int i2 = q + 1;
            return new zzafp(zzafsVar, new zzafs((jArr[i2] * 1000000) / i, j5 + jArr2[i2]));
        }
        return new zzafp(zzafsVar, zzafsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f3964a.a();
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return true;
    }
}
