package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzfrc extends zzcal {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgzf f7589c;
    public final /* synthetic */ zzcaf f;
    public final /* synthetic */ zzfrd g;

    public zzfrc(zzfrd zzfrdVar, zzgzf zzgzfVar, zzcaf zzcafVar) {
        this.f7589c = zzgzfVar;
        this.f = zzcafVar;
        this.g = zzfrdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        String loadAdError = zzeVar.zzb().toString();
        zzfrd zzfrdVar = this.g;
        String str = zzfrdVar.e.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(loadAdError).length() + 51 + String.valueOf(str).length());
        sb.append("Failed to load rewarded ad with error: ");
        sb.append(loadAdError);
        sb.append(", adUnitId: ");
        sb.append(str);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        zzfrdVar.a(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zze() {
        Objects.requireNonNull(this.g);
        this.f7589c.c(this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zzf(int i) {
    }
}
