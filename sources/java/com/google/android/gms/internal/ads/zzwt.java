package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzwt extends zzzy {
    public final zzbg b;

    public zzwt(zzzw zzzwVar, zzbg zzbgVar) {
        super(zzzwVar);
        this.b = zzbgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzy
    public final boolean equals(Object obj) {
        if (super.equals(obj) && (obj instanceof zzwt)) {
            return this.b.equals(((zzwt) obj).b);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzzy
    public final int hashCode() {
        return this.b.hashCode() + (this.f9422a.hashCode() * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzzy, com.google.android.gms.internal.ads.zzaab
    public final zzbg zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzzy, com.google.android.gms.internal.ads.zzaab
    public final zzv zzb(int i) {
        return this.b.d[this.f9422a.zzf(i)];
    }

    @Override // com.google.android.gms.internal.ads.zzzy, com.google.android.gms.internal.ads.zzzw
    public final zzv zzc() {
        return this.b.d[this.f9422a.zzh()];
    }
}
