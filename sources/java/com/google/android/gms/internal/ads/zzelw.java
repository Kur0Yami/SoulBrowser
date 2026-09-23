package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzelw extends zzbur {

    /* renamed from: c, reason: collision with root package name */
    public final zzejj f6657c;
    public final /* synthetic */ zzelx f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzelw(zzelx zzelxVar, zzejj zzejjVar) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
        this.f = zzelxVar;
        this.f6657c = zzejjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void U2(zzbto zzbtoVar) {
        this.f.f6659c = zzbtoVar;
        ((zzekv) this.f6657c.f6560c).zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        ((zzekv) this.f6657c.f6560c).Q(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzf(String str) {
        ((zzekv) this.f6657c.f6560c).U4(0, str);
    }
}
