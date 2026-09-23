package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzel extends zzbc {
    public final /* synthetic */ zzen g;

    public zzel(zzen zzenVar) {
        this.g = zzenVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbc, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        zzen zzenVar = this.g;
        zzenVar.d.zza(zzenVar.zzz());
        super.onAdFailedToLoad(loadAdError);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbc, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        zzen zzenVar = this.g;
        zzenVar.d.zza(zzenVar.zzz());
        super.onAdLoaded();
    }
}
