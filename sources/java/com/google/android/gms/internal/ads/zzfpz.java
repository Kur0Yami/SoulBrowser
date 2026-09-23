package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzfpz extends com.google.android.gms.ads.internal.client.zzbm {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgzf f7553c;
    public final /* synthetic */ com.google.android.gms.ads.internal.client.zzbx f;
    public final /* synthetic */ zzfqa g;

    public zzfpz(zzfqa zzfqaVar, zzgzf zzgzfVar, com.google.android.gms.ads.internal.client.zzbx zzbxVar) {
        this.f7553c = zzgzfVar;
        this.f = zzbxVar;
        this.g = zzfqaVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void zzb() {
        Objects.requireNonNull(this.g);
        this.f7553c.c(this.f);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        String loadAdError = zzeVar.zzb().toString();
        zzfqa zzfqaVar = this.g;
        String str = zzfqaVar.e.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(loadAdError).length() + 57 + String.valueOf(str).length());
        sb.append("Failed to load interstitial ad with error: ");
        sb.append(loadAdError);
        sb.append(" for ad unit: ");
        sb.append(str);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        zzfqaVar.a(zzeVar);
    }
}
