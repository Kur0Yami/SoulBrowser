package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

/* loaded from: classes.dex */
public final class zzbvr implements MediationInterstitialAdapter {

    /* renamed from: a, reason: collision with root package name */
    public Activity f4928a;
    public MediationInterstitialListener b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f4929c;

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.b = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Listener not set for mediation. Returning.");
            return;
        }
        if (context instanceof Activity) {
            if (!zzbhl.a(context)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Default browser does not support custom tabs. Bailing out.");
                this.b.onAdFailedToLoad(this, 0);
                return;
            }
            String string = bundle.getString("tab_url");
            if (TextUtils.isEmpty(string)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("The tab_url retrieved from mediation metadata is empty. Bailing out.");
                this.b.onAdFailedToLoad(this, 0);
                return;
            } else {
                this.f4928a = (Activity) context;
                this.f4929c = Uri.parse(string);
                this.b.onAdLoaded(this);
                return;
            }
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzi("AdMobCustomTabs can only work with Activity context. Bailing out.");
        this.b.onAdFailedToLoad(this, 0);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        CustomTabsIntent a2 = new CustomTabsIntent.Builder().a();
        a2.f421a.setData(this.f4929c);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzbvq(this, new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.zzc(a2.f421a, null), null, new zzbvp(this), null, new VersionInfoParcel(0, 0, false), null, null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)));
        zzccz zzcczVar = com.google.android.gms.ads.internal.zzt.zzh().m;
        zzcczVar.getClass();
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        synchronized (zzcczVar.f5049a) {
            try {
                if (zzcczVar.f5050c == 3) {
                    if (zzcczVar.b + ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O6)).longValue() <= currentTimeMillis) {
                        zzcczVar.f5050c = 1;
                    }
                }
            } finally {
            }
        }
        long currentTimeMillis2 = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        synchronized (zzcczVar.f5049a) {
            try {
                if (zzcczVar.f5050c != 2) {
                    return;
                }
                zzcczVar.f5050c = 3;
                if (zzcczVar.f5050c == 3) {
                    zzcczVar.b = currentTimeMillis2;
                }
            } finally {
            }
        }
    }
}
