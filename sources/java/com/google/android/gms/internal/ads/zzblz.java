package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzblz implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AdManagerAdView f4761c;
    public final /* synthetic */ com.google.android.gms.ads.internal.client.zzbx f;
    public final /* synthetic */ zzbma g;

    public zzblz(zzbma zzbmaVar, AdManagerAdView adManagerAdView, com.google.android.gms.ads.internal.client.zzbx zzbxVar) {
        this.f4761c = adManagerAdView;
        this.f = zzbxVar;
        this.g = zzbmaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f;
        AdManagerAdView adManagerAdView = this.f4761c;
        if (adManagerAdView.zza(zzbxVar)) {
            this.g.f4764c.onAdManagerAdViewLoaded(adManagerAdView);
        } else {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not bind.");
        }
    }
}
