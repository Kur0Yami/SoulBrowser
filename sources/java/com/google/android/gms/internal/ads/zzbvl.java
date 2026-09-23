package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbvl extends zzbux {
    public final RtbAdapter f;
    public MediationInterstitialAd g;
    public MediationRewardedAd h;
    public MediationAppOpenAd i;
    public String j;

    public zzbvl(RtbAdapter rtbAdapter) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        this.j = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f = rtbAdapter;
    }

    public static final Bundle d5(String str) {
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Server parameters: ".concat(String.valueOf(str)));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
                return bundle2;
            }
            return bundle;
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            throw new RemoteException();
        }
    }

    public static final boolean e5(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        if (!zzmVar.zzf) {
            com.google.android.gms.ads.internal.client.zzbb.zza();
            if (!com.google.android.gms.ads.internal.util.client.zzf.zzw()) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static final String f5(com.google.android.gms.ads.internal.client.zzm zzmVar, String str) {
        String str2 = zzmVar.zzu;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void D1(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbuv zzbuvVar, zzbtf zzbtfVar) {
        try {
            this.f.loadRtbRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), str, d5(str2), c5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str2), this.j), new zzbvk(this, zzbuvVar, zzbtfVar));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Adapter failed to render rewarded ad.", th);
            zzbsw.a(iObjectWrapper, th, "adapter.loadRtbRewardedAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void H2(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbuj zzbujVar, zzbtf zzbtfVar) {
        try {
            this.f.loadRtbAppOpenAd(new MediationAppOpenAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), str, d5(str2), c5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str2), this.j), new zzbvi(this, zzbujVar, zzbtfVar));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Adapter failed to render app open ad.", th);
            zzbsw.a(iObjectWrapper, th, "adapter.loadRtbAppOpenAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void L3(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, ObjectWrapper objectWrapper, zzbus zzbusVar, zzbtf zzbtfVar) {
        N(str, str2, zzmVar, objectWrapper, zzbusVar, zzbtfVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void N(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbus zzbusVar, zzbtf zzbtfVar, zzbjn zzbjnVar) {
        RtbAdapter rtbAdapter = this.f;
        try {
            rtbAdapter.loadRtbNativeAdMapper(new MediationNativeAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), str, d5(str2), c5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str2), this.j, zzbjnVar), new zzbvg(this, zzbusVar, zzbtfVar));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Adapter failed to render native ad.", th);
            zzbsw.a(iObjectWrapper, th, "adapter.loadRtbNativeAdMapper");
            String message = th.getMessage();
            if (!TextUtils.isEmpty(message) && message.equals("Method is not found")) {
                try {
                    rtbAdapter.loadRtbNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), str, d5(str2), c5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str2), this.j, zzbjnVar), new zzbvh(this, zzbusVar, zzbtfVar));
                    return;
                } catch (Throwable th2) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Adapter failed to render native ad.", th2);
                    zzbsw.a(iObjectWrapper, th2, "adapter.loadRtbNativeAd");
                    throw new RemoteException();
                }
            }
            throw new RemoteException();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000d. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void O1(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzr zzrVar, zzbvb zzbvbVar) {
        AdFormat adFormat;
        try {
            zzbvj zzbvjVar = new zzbvj(this, zzbvbVar);
            RtbAdapter rtbAdapter = this.f;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        adFormat = AdFormat.BANNER;
                        MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(mediationConfiguration);
                        rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.f2(iObjectWrapper), arrayList, bundle, com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), zzbvjVar);
                        return;
                    }
                    throw new IllegalArgumentException("Internal Error");
                case -1052618729:
                    if (str.equals("native")) {
                        adFormat = AdFormat.NATIVE;
                        MediationConfiguration mediationConfiguration2 = new MediationConfiguration(adFormat, bundle2);
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(mediationConfiguration2);
                        rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.f2(iObjectWrapper), arrayList2, bundle, com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), zzbvjVar);
                        return;
                    }
                    throw new IllegalArgumentException("Internal Error");
                case -239580146:
                    if (str.equals("rewarded")) {
                        adFormat = AdFormat.REWARDED;
                        MediationConfiguration mediationConfiguration22 = new MediationConfiguration(adFormat, bundle2);
                        ArrayList arrayList22 = new ArrayList();
                        arrayList22.add(mediationConfiguration22);
                        rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.f2(iObjectWrapper), arrayList22, bundle, com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), zzbvjVar);
                        return;
                    }
                    throw new IllegalArgumentException("Internal Error");
                case 604727084:
                    if (str.equals("interstitial")) {
                        adFormat = AdFormat.INTERSTITIAL;
                        MediationConfiguration mediationConfiguration222 = new MediationConfiguration(adFormat, bundle2);
                        ArrayList arrayList222 = new ArrayList();
                        arrayList222.add(mediationConfiguration222);
                        rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.f2(iObjectWrapper), arrayList222, bundle, com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), zzbvjVar);
                        return;
                    }
                    throw new IllegalArgumentException("Internal Error");
                case 1167692200:
                    if (str.equals("app_open")) {
                        adFormat = AdFormat.APP_OPEN_AD;
                        MediationConfiguration mediationConfiguration2222 = new MediationConfiguration(adFormat, bundle2);
                        ArrayList arrayList2222 = new ArrayList();
                        arrayList2222.add(mediationConfiguration2222);
                        rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.f2(iObjectWrapper), arrayList2222, bundle, com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), zzbvjVar);
                        return;
                    }
                    throw new IllegalArgumentException("Internal Error");
                case 1778294298:
                    if (str.equals("app_open_ad")) {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.id)).booleanValue()) {
                            adFormat = AdFormat.APP_OPEN_AD;
                            MediationConfiguration mediationConfiguration22222 = new MediationConfiguration(adFormat, bundle2);
                            ArrayList arrayList22222 = new ArrayList();
                            arrayList22222.add(mediationConfiguration22222);
                            rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.f2(iObjectWrapper), arrayList22222, bundle, com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), zzbvjVar);
                            return;
                        }
                    }
                    throw new IllegalArgumentException("Internal Error");
                case 1911491517:
                    if (str.equals("rewarded_interstitial")) {
                        adFormat = AdFormat.REWARDED_INTERSTITIAL;
                        MediationConfiguration mediationConfiguration222222 = new MediationConfiguration(adFormat, bundle2);
                        ArrayList arrayList222222 = new ArrayList();
                        arrayList222222.add(mediationConfiguration222222);
                        rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.f2(iObjectWrapper), arrayList222222, bundle, com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), zzbvjVar);
                        return;
                    }
                    throw new IllegalArgumentException("Internal Error");
                default:
                    throw new IllegalArgumentException("Internal Error");
            }
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error generating signals for RTB", th);
            zzbsw.a(iObjectWrapper, th, "adapter.collectSignals");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final boolean S2(IObjectWrapper iObjectWrapper) {
        MediationInterstitialAd mediationInterstitialAd = this.g;
        if (mediationInterstitialAd != null) {
            try {
                mediationInterstitialAd.showAd((Context) ObjectWrapper.f2(iObjectWrapper));
                return true;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                zzbsw.a(iObjectWrapper, th, "adapter.showRtbInterstitialAd");
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void W3(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbuv zzbuvVar, zzbtf zzbtfVar) {
        try {
            this.f.loadRtbRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), str, d5(str2), c5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str2), this.j), new zzbvk(this, zzbuvVar, zzbtfVar));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Adapter failed to render rewarded interstitial ad.", th);
            zzbsw.a(iObjectWrapper, th, "adapter.loadRtbRewardedInterstitialAd");
            throw new RemoteException();
        }
    }

    public final Bundle c5(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        Bundle bundle;
        Bundle bundle2 = zzmVar.zzm;
        if (bundle2 != null && (bundle = bundle2.getBundle(this.f.getClass().getName())) != null) {
            return bundle;
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final boolean i4(IObjectWrapper iObjectWrapper) {
        MediationRewardedAd mediationRewardedAd = this.h;
        if (mediationRewardedAd != null) {
            try {
                mediationRewardedAd.showAd((Context) ObjectWrapper.f2(iObjectWrapper));
                return true;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                zzbsw.a(iObjectWrapper, th, "adapter.showRtbRewardedAd");
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void j2(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbum zzbumVar, zzbtf zzbtfVar, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        try {
            this.f.loadRtbBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), str, d5(str2), c5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str2), com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza), this.j), new zzbvd(this, zzbumVar, zzbtfVar));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Adapter failed to render banner ad.", th);
            zzbsw.a(iObjectWrapper, th, "adapter.loadRtbBannerAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void m1(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbum zzbumVar, zzbtf zzbtfVar, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        try {
            zzbve zzbveVar = new zzbve(this, zzbumVar, zzbtfVar);
            RtbAdapter rtbAdapter = this.f;
            d5(str2);
            c5(zzmVar);
            e5(zzmVar);
            f5(zzmVar, str2);
            com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza);
            zzbveVar.onFailure(new AdError(7, rtbAdapter.getClass().getSimpleName().concat(" does not support interscroller ads."), MobileAds.ERROR_DOMAIN));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Adapter failed to render interscroller ad.", th);
            zzbsw.a(iObjectWrapper, th, "adapter.loadRtbInterscrollerAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final boolean q(IObjectWrapper iObjectWrapper) {
        MediationAppOpenAd mediationAppOpenAd = this.i;
        if (mediationAppOpenAd != null) {
            try {
                mediationAppOpenAd.showAd((Context) ObjectWrapper.f2(iObjectWrapper));
                return true;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                zzbsw.a(iObjectWrapper, th, "adapter.showRtbAppOpenAd");
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void s1(String str, String str2, com.google.android.gms.ads.internal.client.zzm zzmVar, IObjectWrapper iObjectWrapper, zzbup zzbupVar, zzbtf zzbtfVar) {
        try {
            this.f.loadRtbInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), str, d5(str2), c5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str2), this.j), new zzbvf(this, zzbupVar, zzbtfVar));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Adapter failed to render interstitial ad.", th);
            zzbsw.a(iObjectWrapper, th, "adapter.loadRtbInterstitialAd");
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final zzbvn zzf() {
        return zzbvn.F(this.f.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final zzbvn zzg() {
        return zzbvn.F(this.f.getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final com.google.android.gms.ads.internal.client.zzed zzh() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f;
        if (mediationExtrasReceiver instanceof com.google.android.gms.ads.mediation.zza) {
            try {
                return ((com.google.android.gms.ads.mediation.zza) mediationExtrasReceiver).getVideoController();
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    public final void zzo(String str) {
        this.j = str;
    }
}
