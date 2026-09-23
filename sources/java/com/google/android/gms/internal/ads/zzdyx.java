package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzdyx extends com.google.android.gms.ads.internal.client.zzbj {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzdyr f6268c;
    public final /* synthetic */ zzdyy f;

    public zzdyx(zzdyy zzdyyVar, zzdyr zzdyrVar) {
        this.f6268c = zzdyrVar;
        this.f = zzdyyVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzb() {
        long j = this.f.f6269a;
        zzdyq zzdyqVar = new zzdyq("interstitial");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onAdClosed";
        this.f6268c.b(zzdyqVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzc(int i) {
        long j = this.f.f6269a;
        zzdyq zzdyqVar = new zzdyq("interstitial");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onAdFailedToLoad";
        zzdyqVar.d = Integer.valueOf(i);
        this.f6268c.b(zzdyqVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzd(com.google.android.gms.ads.internal.client.zze zzeVar) {
        long j = this.f.f6269a;
        int i = zzeVar.zza;
        zzdyq zzdyqVar = new zzdyq("interstitial");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onAdFailedToLoad";
        zzdyqVar.d = Integer.valueOf(i);
        this.f6268c.b(zzdyqVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzf() {
        long j = this.f.f6269a;
        zzdyq zzdyqVar = new zzdyq("interstitial");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onAdLoaded";
        this.f6268c.b(zzdyqVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzg() {
        long j = this.f.f6269a;
        zzdyq zzdyqVar = new zzdyq("interstitial");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onAdOpened";
        this.f6268c.b(zzdyqVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzh() {
        long j = this.f.f6269a;
        zzdyq zzdyqVar = new zzdyq("interstitial");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onAdClicked";
        this.f6268c.f6265a.a(zzdyqVar.a());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzi() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzj() {
    }
}
