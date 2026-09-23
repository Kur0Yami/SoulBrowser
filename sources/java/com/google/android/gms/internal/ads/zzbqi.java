package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzbqi extends AdManagerInterstitialAd {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4826a;
    public final com.google.android.gms.ads.internal.client.zzq b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzbx f4827c;
    public final AtomicReference d;
    public final long e;
    public AppEventListener f;
    public FullScreenContentCallback g;
    public OnPaidEventListener h;
    public final AtomicLong i;

    public zzbqi(Context context, com.google.android.gms.ads.internal.client.zzbx zzbxVar) {
        new zzbsv();
        this.e = System.currentTimeMillis();
        this.i = new AtomicLong();
        this.f4826a = context;
        this.d = new AtomicReference();
        this.b = com.google.android.gms.ads.internal.client.zzq.zza;
        this.f4827c = zzbxVar;
    }

    public final void a(com.google.android.gms.ads.internal.client.zzek zzekVar, AdLoadCallback adLoadCallback) {
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f4827c;
            if (zzbxVar != null) {
                zzekVar.zzp(this.e);
                zzbxVar.zzQ(this.b.zza(this.f4826a, zzekVar), new com.google.android.gms.ads.internal.client.zzh(adLoadCallback, this));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final String getAdUnitId() {
        String str;
        String str2;
        AtomicReference atomicReference = this.d;
        if (atomicReference.get() != null) {
            return (String) atomicReference.get();
        }
        synchronized (this) {
            try {
                str = this.f4827c.zzu();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                str = null;
            }
            if (str == null) {
                this.d.set(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            } else {
                this.d.set(str);
            }
            str2 = (String) this.d.get();
        }
        return str2;
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final AppEventListener getAppEventListener() {
        return this.f;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.g;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.h;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final long getPlacementId() {
        AtomicLong atomicLong = this.i;
        if (atomicLong.get() != 0) {
            return atomicLong.get();
        }
        synchronized (this) {
            try {
                try {
                    com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f4827c;
                    if (zzbxVar != null) {
                        long zzU = zzbxVar.zzU();
                        AtomicLong atomicLong2 = this.i;
                        atomicLong2.set(zzU);
                        return atomicLong2.get();
                    }
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                }
                return 0L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzea zzeaVar = null;
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f4827c;
            if (zzbxVar != null) {
                zzeaVar = zzbxVar.zzt();
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zzc(zzeaVar);
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final void setAppEventListener(AppEventListener appEventListener) {
        zzbcz zzbczVar;
        try {
            this.f = appEventListener;
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f4827c;
            if (zzbxVar != null) {
                if (appEventListener != null) {
                    zzbczVar = new zzbcz(appEventListener);
                } else {
                    zzbczVar = null;
                }
                zzbxVar.zzi(zzbczVar);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.g = fullScreenContentCallback;
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f4827c;
            if (zzbxVar != null) {
                zzbxVar.zzS(new com.google.android.gms.ads.internal.client.zzbe(fullScreenContentCallback));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z) {
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f4827c;
            if (zzbxVar != null) {
                zzbxVar.zzK(z);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.h = onPaidEventListener;
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f4827c;
            if (zzbxVar != null) {
                zzbxVar.zzP(new com.google.android.gms.ads.internal.client.zzfs(onPaidEventListener));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setPlacementId(long j) {
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f4827c;
            if (zzbxVar != null) {
                zzbxVar.zzT(j);
                this.i.set(j);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void show(Activity activity) {
        if (activity == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.f4827c;
            if (zzbxVar != null) {
                zzbxVar.zzR(new ObjectWrapper(activity));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public zzbqi(Context context, String str) {
        zzbsv zzbsvVar = new zzbsv();
        this.e = System.currentTimeMillis();
        this.i = new AtomicLong();
        this.f4826a = context;
        this.d = new AtomicReference(str);
        this.b = com.google.android.gms.ads.internal.client.zzq.zza;
        this.f4827c = com.google.android.gms.ads.internal.client.zzbb.zzb().zzb(context, new com.google.android.gms.ads.internal.client.zzr(), str, zzbsvVar);
    }

    public zzbqi(Context context, String str, com.google.android.gms.ads.internal.client.zzbx zzbxVar) {
        com.google.android.gms.ads.internal.client.zzq zzqVar = com.google.android.gms.ads.internal.client.zzq.zza;
        new zzbsv();
        this.e = System.currentTimeMillis();
        this.i = new AtomicLong();
        this.f4826a = context;
        this.d = new AtomicReference(str);
        this.b = zzqVar;
        this.f4827c = zzbxVar;
    }
}
