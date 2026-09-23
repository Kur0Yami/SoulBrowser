package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzdzb extends zzcah {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzdzc f6271c;

    public zzdzb(zzdzc zzdzcVar) {
        this.f6271c = zzdzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void R(zzcac zzcacVar) {
        zzdzc zzdzcVar = this.f6271c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onUserEarnedReward";
        zzdyqVar.e = zzcacVar.zze();
        zzdyqVar.f = Integer.valueOf(zzcacVar.zzf());
        zzdyrVar.b(zzdyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void c4(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzdzc zzdzcVar = this.f6271c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        int i = zzeVar.zza;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onRewardedAdFailedToShow";
        zzdyqVar.d = Integer.valueOf(i);
        zzdyrVar.b(zzdyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void e(int i) {
        zzdzc zzdzcVar = this.f6271c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onRewardedAdFailedToShow";
        zzdyqVar.d = Integer.valueOf(i);
        zzdyrVar.b(zzdyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zze() {
        zzdzc zzdzcVar = this.f6271c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onRewardedAdOpened";
        zzdyrVar.b(zzdyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zzf() {
        zzdzc zzdzcVar = this.f6271c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onRewardedAdClosed";
        zzdyrVar.b(zzdyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zzj() {
        zzdzc zzdzcVar = this.f6271c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onAdImpression";
        zzdyrVar.b(zzdyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcai
    public final void zzk() {
        zzdzc zzdzcVar = this.f6271c;
        zzdyr zzdyrVar = zzdzcVar.b;
        long j = zzdzcVar.f6272a;
        zzdyq zzdyqVar = new zzdyq("rewarded");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "onAdClicked";
        zzdyrVar.b(zzdyqVar);
    }
}
