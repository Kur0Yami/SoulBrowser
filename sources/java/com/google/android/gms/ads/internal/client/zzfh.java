package com.google.android.gms.ads.internal.client;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfh extends zzbp {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfi f3034c;

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zze(zzm zzmVar) {
        zzi(zzmVar, 1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final String zzf() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final boolean zzg() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final String zzh() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzi(zzm zzmVar, int i) {
        com.google.android.gms.ads.internal.util.client.zzo.zzf("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzfg(this));
    }
}
