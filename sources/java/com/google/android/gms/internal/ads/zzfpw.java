package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzfpw extends zzbef {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgzf f7550c;
    public final /* synthetic */ com.google.android.gms.ads.internal.client.zzft f;
    public final /* synthetic */ zzfpx g;

    public zzfpw(zzfpx zzfpxVar, zzgzf zzgzfVar, com.google.android.gms.ads.internal.client.zzft zzftVar) {
        this.f7550c = zzgzfVar;
        this.f = zzftVar;
        this.g = zzfpxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbeg
    public final void r4(zzbed zzbedVar) {
        Objects.requireNonNull(this.g);
        this.f7550c.c(zzbedVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbeg
    public final void zzc(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbeg
    public final void zzd(com.google.android.gms.ads.internal.client.zze zzeVar) {
        String loadAdError = zzeVar.zzb().toString();
        String str = this.f.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(loadAdError).length() + 60 + String.valueOf(str).length());
        sb.append("Failed to load app open ad with error parcel: ");
        sb.append(loadAdError);
        sb.append(" for ad unit: ");
        sb.append(str);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        zzfpx zzfpxVar = this.g;
        Objects.requireNonNull(zzfpxVar);
        zzfpxVar.a(zzeVar);
    }
}
