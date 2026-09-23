package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcoa implements com.google.android.gms.ads.nonagon.signalgeneration.zzab {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5331a;
    public zzczt b;

    /* renamed from: c, reason: collision with root package name */
    public com.google.android.gms.ads.nonagon.signalgeneration.zzay f5332c;

    public /* synthetic */ zzcoa(zzcmv zzcmvVar) {
        this.f5331a = zzcmvVar;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzab
    public final com.google.android.gms.ads.nonagon.signalgeneration.zzac zza() {
        zzijo.b(zzczt.class, this.b);
        zzijo.b(com.google.android.gms.ads.nonagon.signalgeneration.zzay.class, this.f5332c);
        return new zzcob(this.f5331a, this.f5332c, this.b);
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzab
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.nonagon.signalgeneration.zzab zzb(com.google.android.gms.ads.nonagon.signalgeneration.zzay zzayVar) {
        this.f5332c = zzayVar;
        return this;
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzab
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.nonagon.signalgeneration.zzab zzc(zzczt zzcztVar) {
        this.b = zzcztVar;
        return this;
    }
}
