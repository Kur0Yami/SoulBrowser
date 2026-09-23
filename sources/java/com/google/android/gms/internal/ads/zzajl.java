package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzajl implements zzajk {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f4092a;
    public final long[] b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4093c;
    public final long d;
    public final int e;

    public zzajl(long[] jArr, long[] jArr2, long j, long j2, int i) {
        this.f4092a = jArr;
        this.b = jArr2;
        this.f4093c = j;
        this.d = j2;
        this.e = i;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final long a(long j) {
        return this.f4092a[zzfj.q(this.b, j, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        long[] jArr = this.f4092a;
        int q = zzfj.q(jArr, j, true);
        long j2 = jArr[q];
        long[] jArr2 = this.b;
        zzafs zzafsVar = new zzafs(j2, jArr2[q]);
        if (j2 < j && q != jArr.length - 1) {
            int i = q + 1;
            return new zzafp(zzafsVar, new zzafs(jArr[i], jArr2[i]));
        }
        return new zzafp(zzafsVar, zzafsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f4093c;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final long zzf() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final int zzg() {
        return this.e;
    }
}
