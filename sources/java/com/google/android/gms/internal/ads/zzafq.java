package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public class zzafq implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final long f3985a;
    public final zzafp b;

    public zzafq(long j, long j2) {
        zzafs zzafsVar;
        this.f3985a = j;
        if (j2 == 0) {
            zzafsVar = zzafs.f3986c;
        } else {
            zzafsVar = new zzafs(0L, j2);
        }
        this.b = new zzafp(zzafsVar, zzafsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f3985a;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return false;
    }
}
