package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzdza extends zzcal {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzdzc f6270c;

    public zzdza(zzdzc zzdzcVar) {
        this.f6270c = zzdzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzdzc zzdzcVar = this.f6270c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        int i = zzeVar.zza;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onRewardedAdFailedToLoad";
        zzdyqVar.d = Integer.valueOf(i);
        zzdyrVar.b(zzdyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zze() {
        zzdzc zzdzcVar = this.f6270c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onRewardedAdLoaded";
        zzdyrVar.b(zzdyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcam
    public final void zzf(int i) {
        zzdzc zzdzcVar = this.f6270c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onRewardedAdFailedToLoad";
        zzdyqVar.d = Integer.valueOf(i);
        zzdyrVar.b(zzdyqVar);
    }
}
