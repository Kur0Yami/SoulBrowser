package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzeli extends zzbuo {

    /* renamed from: c, reason: collision with root package name */
    public final zzejj f6638c;

    public zzeli(zzelj zzeljVar, zzejj zzejjVar) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
        this.f6638c = zzejjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        ((zzekv) this.f6638c.f6560c).Q(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void zze() {
        ((zzekv) this.f6638c.f6560c).zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void zzf(String str) {
        ((zzekv) this.f6638c.f6560c).U4(0, str);
    }
}
