package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbua extends zzbtb {

    /* renamed from: c, reason: collision with root package name */
    public final MediationExtrasReceiver f4901c;
    public zzbuc f;
    public zzbzx g;
    public IObjectWrapper h;
    public View i;
    public MediationInterstitialAd j;
    public UnifiedNativeAdMapper k;
    public NativeAdMapper l;
    public MediationRewardedAd m;
    public MediationInterscrollerAd n;
    public MediationAppOpenAd o;
    public final String p = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    public zzbua(Adapter adapter) {
        this.f4901c = adapter;
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

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void C1(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbtf zzbtfVar, zzbjn zzbjnVar, ArrayList arrayList) {
        HashSet hashSet;
        Date date;
        Bundle bundle;
        MediationExtrasReceiver mediationExtrasReceiver;
        MediationExtrasReceiver mediationExtrasReceiver2 = this.f4901c;
        boolean z = mediationExtrasReceiver2 instanceof MediationNativeAdapter;
        if (!z && !(mediationExtrasReceiver2 instanceof Adapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = mediationExtrasReceiver2.getClass().getCanonicalName();
            int length = String.valueOf(canonicalName).length();
            StringBuilder sb = new StringBuilder(length + 4 + String.valueOf(canonicalName2).length() + 22 + String.valueOf(canonicalName3).length());
            android.support.v4.media.a.z(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
            throw new RemoteException();
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Requesting native ad from adapter.");
        if (z) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) mediationExtrasReceiver2;
                List list = zzmVar.zze;
                if (list != null) {
                    hashSet = new HashSet(list);
                } else {
                    hashSet = null;
                }
                long j = zzmVar.zzb;
                if (j == -1) {
                    date = null;
                } else {
                    date = new Date(j);
                }
                int i = zzmVar.zzd;
                Location location = zzmVar.zzk;
                boolean e5 = e5(zzmVar);
                int i2 = zzmVar.zzg;
                boolean z2 = zzmVar.zzr;
                f5(zzmVar, str);
                zzbuf zzbufVar = new zzbuf(date, i, hashSet, location, e5, i2, zzbjnVar, arrayList, z2);
                Bundle bundle2 = zzmVar.zzm;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationNativeAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                this.f = new zzbuc(zzbtfVar);
                mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.f2(iObjectWrapper), this.f, c5(str, zzmVar, str2), zzbufVar, bundle);
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                zzbsw.a(iObjectWrapper, th, "adapter.requestNativeAd");
                throw new RemoteException();
            }
        }
        if (mediationExtrasReceiver2 instanceof Adapter) {
            try {
                mediationExtrasReceiver = mediationExtrasReceiver2;
                try {
                    ((Adapter) mediationExtrasReceiver2).loadNativeAdMapper(new MediationNativeAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, c5(str, zzmVar, str2), d5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str), this.p, zzbjnVar), new zzbtx(this, zzbtfVar));
                } catch (Throwable th2) {
                    th = th2;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                    zzbsw.a(iObjectWrapper, th, "adapter.loadNativeAdMapper");
                    String message = th.getMessage();
                    if (!TextUtils.isEmpty(message) && message.equals("Method is not found")) {
                        try {
                            ((Adapter) mediationExtrasReceiver).loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, c5(str, zzmVar, str2), d5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str), this.p, zzbjnVar), new zzbtw(this, zzbtfVar));
                            return;
                        } catch (Throwable th3) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th3);
                            zzbsw.a(iObjectWrapper, th3, "adapter.loadNativeAd");
                            throw new RemoteException();
                        }
                    }
                    throw new RemoteException();
                }
            } catch (Throwable th4) {
                th = th4;
                mediationExtrasReceiver = mediationExtrasReceiver2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbtl D() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void J0(IObjectWrapper iObjectWrapper) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (!(mediationExtrasReceiver instanceof Adapter) && !(mediationExtrasReceiver instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = mediationExtrasReceiver.getClass().getCanonicalName();
            int length = String.valueOf(canonicalName).length();
            StringBuilder sb = new StringBuilder(length + 4 + String.valueOf(canonicalName2).length() + 22 + String.valueOf(canonicalName3).length());
            android.support.v4.media.a.z(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
            throw new RemoteException();
        }
        if (mediationExtrasReceiver instanceof MediationInterstitialAdapter) {
            zzh();
            return;
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Show interstitial ad from adapter.");
        MediationInterstitialAd mediationInterstitialAd = this.j;
        if (mediationInterstitialAd != null) {
            try {
                mediationInterstitialAd.showAd((Context) ObjectWrapper.f2(iObjectWrapper));
                return;
            } catch (RuntimeException e) {
                zzbsw.a(iObjectWrapper, e, "adapter.interstitial.showAd");
                throw e;
            }
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzf("Can not show null mediation interstitial ad.");
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void M(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbtf zzbtfVar) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) mediationExtrasReceiver).loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, c5(str, zzmVar, null), d5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new zzbty(this, zzbtfVar));
                return;
            } catch (Exception e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                zzbsw.a(iObjectWrapper, e, "adapter.loadRewardedAd");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void R0(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbtf zzbtfVar) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Requesting interscroller ad from adapter.");
            try {
                Adapter adapter = (Adapter) mediationExtrasReceiver;
                zzbts zzbtsVar = new zzbts(this, zzbtfVar, adapter);
                c5(str, zzmVar, str2);
                d5(zzmVar);
                e5(zzmVar);
                f5(zzmVar, str);
                com.google.android.gms.ads.zzc.zzc(zzrVar.zze, zzrVar.zzb);
                zzbtsVar.onFailure(new AdError(7, adapter.getClass().getSimpleName().concat(" does not support interscroller ads."), MobileAds.ERROR_DOMAIN));
                return;
            } catch (Exception e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                zzbsw.a(iObjectWrapper, e, "adapter.loadInterscrollerAd");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0026. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void W0(IObjectWrapper iObjectWrapper, zzbpq zzbpqVar, ArrayList arrayList) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof Adapter) {
            zzbtt zzbttVar = new zzbtt(this, zzbpqVar);
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                zzbpw zzbpwVar = (zzbpw) obj;
                String str = zzbpwVar.f4824c;
                AdFormat adFormat = null;
                switch (str.hashCode()) {
                    case -1396342996:
                        if (str.equals("banner")) {
                            adFormat = AdFormat.BANNER;
                            break;
                        }
                        break;
                    case -1052618729:
                        if (str.equals("native")) {
                            adFormat = AdFormat.NATIVE;
                            break;
                        }
                        break;
                    case -239580146:
                        if (str.equals("rewarded")) {
                            adFormat = AdFormat.REWARDED;
                            break;
                        }
                        break;
                    case 604727084:
                        if (str.equals("interstitial")) {
                            adFormat = AdFormat.INTERSTITIAL;
                            break;
                        }
                        break;
                    case 1167692200:
                        if (str.equals("app_open")) {
                            adFormat = AdFormat.APP_OPEN_AD;
                            break;
                        }
                        break;
                    case 1778294298:
                        if (str.equals("app_open_ad")) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.id)).booleanValue()) {
                                adFormat = AdFormat.APP_OPEN_AD;
                                break;
                            }
                        }
                        break;
                    case 1911491517:
                        if (str.equals("rewarded_interstitial")) {
                            adFormat = AdFormat.REWARDED_INTERSTITIAL;
                            break;
                        }
                        break;
                }
                if (adFormat != null) {
                    arrayList2.add(new MediationConfiguration(adFormat, zzbpwVar.f));
                }
            }
            ((Adapter) mediationExtrasReceiver).initialize((Context) ObjectWrapper.f2(iObjectWrapper), zzbttVar, arrayList2);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void a0(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbtf zzbtfVar) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Requesting app open ad from adapter.");
            try {
                ((Adapter) mediationExtrasReceiver).loadAppOpenAd(new MediationAppOpenAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, c5(str, zzmVar, null), d5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new zzbtz(this, zzbtfVar));
                return;
            } catch (Exception e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                zzbsw.a(iObjectWrapper, e, "adapter.loadAppOpenAd");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void a2(IObjectWrapper iObjectWrapper) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.m;
            if (mediationRewardedAd != null) {
                try {
                    mediationRewardedAd.showAd((Context) ObjectWrapper.f2(iObjectWrapper));
                    return;
                } catch (RuntimeException e) {
                    zzbsw.a(iObjectWrapper, e, "adapter.rewarded.showAd");
                    throw e;
                }
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Can not show null mediation rewarded ad.");
            throw new RemoteException();
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    public final Bundle c5(String str, com.google.android.gms.ads.internal.client.zzm zzmVar, String str2) {
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Server parameters: ".concat(String.valueOf(str)));
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
                bundle = bundle2;
            }
            if (this.f4901c instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzmVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzmVar.zzg);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void d0(com.google.android.gms.ads.internal.client.zzm zzmVar, String str) {
        g5(zzmVar, str);
    }

    public final Bundle d5(com.google.android.gms.ads.internal.client.zzm zzmVar) {
        Bundle bundle;
        Bundle bundle2 = zzmVar.zzm;
        if (bundle2 != null && (bundle = bundle2.getBundle(this.f4901c.getClass().getName())) != null) {
            return bundle;
        }
        return new Bundle();
    }

    public final void g5(com.google.android.gms.ads.internal.client.zzm zzmVar, String str) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof Adapter) {
            M(this.h, zzmVar, str, new zzbud((Adapter) mediationExtrasReceiver, this.g));
            return;
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void h2(boolean z) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) mediationExtrasReceiver).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                return;
            }
        }
        String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzd(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void j1(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, zzbzx zzbzxVar, String str) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (!(mediationExtrasReceiver instanceof Adapter) && !Objects.equals(mediationExtrasReceiver.getClass().getCanonicalName(), "com.google.ads.mediation.admob.AdMobAdapter")) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
            throw new RemoteException();
        }
        this.h = iObjectWrapper;
        this.g = zzbzxVar;
        zzbzxVar.u(new ObjectWrapper(mediationExtrasReceiver));
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void j4(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, zzbtf zzbtfVar) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) mediationExtrasReceiver).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, c5(str, zzmVar, null), d5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new zzbty(this, zzbtfVar));
                return;
            } catch (Exception e) {
                zzbsw.a(iObjectWrapper, e, "adapter.loadRewardedInterstitialAd");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbtk k() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbti m() {
        MediationInterscrollerAd mediationInterscrollerAd = this.n;
        if (mediationInterscrollerAd != null) {
            return new zzbub(mediationInterscrollerAd);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void p2(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbtf zzbtfVar) {
        HashSet hashSet;
        Date date;
        Bundle bundle;
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        boolean z = mediationExtrasReceiver instanceof MediationInterstitialAdapter;
        if (!z && !(mediationExtrasReceiver instanceof Adapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = mediationExtrasReceiver.getClass().getCanonicalName();
            int length = String.valueOf(canonicalName).length();
            StringBuilder sb = new StringBuilder(length + 4 + String.valueOf(canonicalName2).length() + 22 + String.valueOf(canonicalName3).length());
            android.support.v4.media.a.z(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
            throw new RemoteException();
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Requesting interstitial ad from adapter.");
        if (z) {
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) mediationExtrasReceiver;
                List list = zzmVar.zze;
                if (list != null) {
                    hashSet = new HashSet(list);
                } else {
                    hashSet = null;
                }
                long j = zzmVar.zzb;
                if (j == -1) {
                    date = null;
                } else {
                    date = new Date(j);
                }
                int i = zzmVar.zzd;
                Location location = zzmVar.zzk;
                boolean e5 = e5(zzmVar);
                int i2 = zzmVar.zzg;
                boolean z2 = zzmVar.zzr;
                f5(zzmVar, str);
                zzbtr zzbtrVar = new zzbtr(date, i, hashSet, location, e5, i2, z2);
                Bundle bundle2 = zzmVar.zzm;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationInterstitialAdapter.getClass().getName());
                } else {
                    bundle = null;
                }
                mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.f2(iObjectWrapper), new zzbuc(zzbtfVar), c5(str, zzmVar, str2), zzbtrVar, bundle);
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                zzbsw.a(iObjectWrapper, th, "adapter.requestInterstitialAd");
                throw new RemoteException();
            }
        }
        if (mediationExtrasReceiver instanceof Adapter) {
            try {
                ((Adapter) mediationExtrasReceiver).loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, c5(str, zzmVar, str2), d5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str), this.p), new zzbtv(this, zzbtfVar));
            } catch (Throwable th2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th2);
                zzbsw.a(iObjectWrapper, th2, "adapter.loadInterstitialAd");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void q2(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, String str2, zzbtf zzbtfVar) {
        AdSize zza;
        String str3;
        HashSet hashSet;
        Date date;
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        boolean z = mediationExtrasReceiver instanceof MediationBannerAdapter;
        if (!z && !(mediationExtrasReceiver instanceof Adapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = mediationExtrasReceiver.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 4 + String.valueOf(canonicalName2).length() + 22 + String.valueOf(canonicalName3).length());
            android.support.v4.media.a.z(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
            sb.append(canonicalName3);
            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
            throw new RemoteException();
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Requesting banner ad from adapter.");
        if (zzrVar.zzn) {
            zza = com.google.android.gms.ads.zzc.zzb(zzrVar.zze, zzrVar.zzb);
        } else {
            zza = com.google.android.gms.ads.zzc.zza(zzrVar.zze, zzrVar.zzb, zzrVar.zza);
        }
        AdSize adSize = zza;
        if (z) {
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) mediationExtrasReceiver;
                List list = zzmVar.zze;
                Bundle bundle = null;
                if (list != null) {
                    hashSet = new HashSet(list);
                } else {
                    hashSet = null;
                }
                long j = zzmVar.zzb;
                if (j == -1) {
                    date = null;
                } else {
                    date = new Date(j);
                }
                int i = zzmVar.zzd;
                Location location = zzmVar.zzk;
                boolean e5 = e5(zzmVar);
                int i2 = zzmVar.zzg;
                boolean z2 = zzmVar.zzr;
                f5(zzmVar, str);
                zzbtr zzbtrVar = new zzbtr(date, i, hashSet, location, e5, i2, z2);
                Bundle bundle2 = zzmVar.zzm;
                if (bundle2 != null) {
                    bundle = bundle2.getBundle(mediationBannerAdapter.getClass().getName());
                }
                Bundle bundle3 = bundle;
                Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
                zzbuc zzbucVar = new zzbuc(zzbtfVar);
                Bundle c5 = c5(str, zzmVar, str2);
                str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                try {
                    mediationBannerAdapter.requestBannerAd(context, zzbucVar, c5, adSize, zzbtrVar, bundle3);
                } catch (Throwable th) {
                    th = th;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg(str3, th);
                    zzbsw.a(iObjectWrapper, th, "adapter.requestBannerAd");
                    throw new RemoteException();
                }
            } catch (Throwable th2) {
                th = th2;
                str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        } else if (mediationExtrasReceiver instanceof Adapter) {
            try {
                ((Adapter) mediationExtrasReceiver).loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.f2(iObjectWrapper), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, c5(str, zzmVar, str2), d5(zzmVar), e5(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, f5(zzmVar, str), adSize, this.p), new zzbtu(this, zzbtfVar));
            } catch (Throwable th3) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th3);
                zzbsw.a(iObjectWrapper, th3, "adapter.loadBannerAd");
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbvn r() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (!(mediationExtrasReceiver instanceof Adapter)) {
            return null;
        }
        return zzbvn.F(((Adapter) mediationExtrasReceiver).getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void t(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof OnContextChangedListener) {
            ((OnContextChangedListener) mediationExtrasReceiver).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void u2(IObjectWrapper iObjectWrapper, zzbzx zzbzxVar, List list) {
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not initialize rewarded video adapter.");
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void y2(IObjectWrapper iObjectWrapper) {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof Adapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Show app open ad from adapter.");
            MediationAppOpenAd mediationAppOpenAd = this.o;
            if (mediationAppOpenAd != null) {
                try {
                    mediationAppOpenAd.showAd((Context) ObjectWrapper.f2(iObjectWrapper));
                    return;
                } catch (RuntimeException e) {
                    zzbsw.a(iObjectWrapper, e, "adapter.appOpen.showAd");
                    throw e;
                }
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Can not show null mediation app open ad.");
            throw new RemoteException();
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final com.google.android.gms.ads.internal.client.zzed zzB() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof com.google.android.gms.ads.mediation.zza) {
            try {
                return ((com.google.android.gms.ads.mediation.zza) mediationExtrasReceiver).getVideoController();
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbto zzC() {
        UnifiedNativeAdMapper unifiedNativeAdMapper;
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof MediationNativeAdapter) {
            zzbuc zzbucVar = this.f;
            if (zzbucVar != null && (unifiedNativeAdMapper = zzbucVar.b) != null) {
                return new zzbug(unifiedNativeAdMapper);
            }
            return null;
        }
        if (mediationExtrasReceiver instanceof Adapter) {
            NativeAdMapper nativeAdMapper = this.l;
            if (nativeAdMapper != null) {
                return new zzbue(nativeAdMapper);
            }
            UnifiedNativeAdMapper unifiedNativeAdMapper2 = this.k;
            if (unifiedNativeAdMapper2 != null) {
                return new zzbug(unifiedNativeAdMapper2);
            }
            return null;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final zzbvn zzH() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (!(mediationExtrasReceiver instanceof Adapter)) {
            return null;
        }
        return zzbvn.F(((Adapter) mediationExtrasReceiver).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final IObjectWrapper zzf() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof MediationBannerAdapter) {
            try {
                return new ObjectWrapper(((MediationBannerAdapter) mediationExtrasReceiver).getBannerView());
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                throw new RemoteException();
            }
        }
        if (mediationExtrasReceiver instanceof Adapter) {
            return new ObjectWrapper(this.i);
        }
        String canonicalName = MediationBannerAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = mediationExtrasReceiver.getClass().getCanonicalName();
        int length = String.valueOf(canonicalName).length();
        StringBuilder sb = new StringBuilder(length + 4 + String.valueOf(canonicalName2).length() + 22 + String.valueOf(canonicalName3).length());
        android.support.v4.media.a.z(sb, canonicalName, " or ", canonicalName2, " #009 Class mismatch: ");
        sb.append(canonicalName3);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzh() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof MediationInterstitialAdapter) {
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) mediationExtrasReceiver).showInterstitial();
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzi() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (!(mediationExtrasReceiver instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) mediationExtrasReceiver).onDestroy();
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzl() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (!(mediationExtrasReceiver instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) mediationExtrasReceiver).onPause();
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzm() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (!(mediationExtrasReceiver instanceof MediationAdapter)) {
            return;
        }
        try {
            ((MediationAdapter) mediationExtrasReceiver).onResume();
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final void zzp() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (mediationExtrasReceiver instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.m;
            if (mediationRewardedAd != null) {
                try {
                    mediationRewardedAd.showAd((Context) ObjectWrapper.f2(this.h));
                    return;
                } catch (RuntimeException e) {
                    zzbsw.a(this.h, e, "adapter.showVideo");
                    throw e;
                }
            }
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Can not show null mediated rewarded ad.");
            throw new RemoteException();
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final boolean zzq() {
        MediationExtrasReceiver mediationExtrasReceiver = this.f4901c;
        if (!(mediationExtrasReceiver instanceof Adapter) && !Objects.equals(mediationExtrasReceiver.getClass().getCanonicalName(), "com.google.ads.mediation.admob.AdMobAdapter")) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = mediationExtrasReceiver.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb.toString());
            throw new RemoteException();
        }
        if (this.g != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbtc
    public final boolean zzx() {
        return false;
    }

    public zzbua(MediationAdapter mediationAdapter) {
        this.f4901c = mediationAdapter;
    }
}
