package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzbma extends zzbli {

    /* renamed from: c, reason: collision with root package name */
    public final OnAdManagerAdViewLoadedListener f4764c;

    public zzbma(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        super("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
        this.f4764c = onAdManagerAdViewLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void g0(com.google.android.gms.ads.internal.client.zzbx zzbxVar, IObjectWrapper iObjectWrapper) {
        AdListener adListener;
        if (zzbxVar != null && iObjectWrapper != null) {
            AdManagerAdView adManagerAdView = new AdManagerAdView((Context) ObjectWrapper.f2(iObjectWrapper));
            AppEventListener appEventListener = null;
            try {
                if (zzbxVar.zzw() instanceof com.google.android.gms.ads.internal.client.zzg) {
                    com.google.android.gms.ads.internal.client.zzg zzgVar = (com.google.android.gms.ads.internal.client.zzg) zzbxVar.zzw();
                    if (zzgVar != null) {
                        adListener = zzgVar.zzk();
                    } else {
                        adListener = null;
                    }
                    adManagerAdView.setAdListener(adListener);
                }
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            }
            try {
                if (zzbxVar.zzv() instanceof zzbcz) {
                    zzbcz zzbczVar = (zzbcz) zzbxVar.zzv();
                    if (zzbczVar != null) {
                        appEventListener = zzbczVar.f4556c;
                    }
                    adManagerAdView.setAppEventListener(appEventListener);
                }
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
            }
            com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzblz(this, adManagerAdView, zzbxVar));
        }
    }
}
