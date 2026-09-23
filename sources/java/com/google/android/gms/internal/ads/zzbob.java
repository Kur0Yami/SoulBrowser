package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbob implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final zzebh f4798a;

    public zzbob(zzebh zzebhVar) {
        this.f4798a = zzebhVar;
    }

    public static final Bundle b(Map map) {
        Bundle bundle = new Bundle();
        bundle.putString("request_origin", "inspector_ooct");
        if (map.containsKey("networkExtras")) {
            try {
                JSONObject jSONObject = new JSONObject((String) map.get("networkExtras"));
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Object obj = jSONObject.get(next);
                    if (obj instanceof String) {
                        bundle.putString(next, (String) obj);
                    } else if (obj instanceof Integer) {
                        bundle.putInt(next, ((Integer) obj).intValue());
                    } else if (obj instanceof Boolean) {
                        bundle.putBoolean(next, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof Float) {
                        bundle.putFloat(next, ((Float) obj).floatValue());
                    } else if (obj instanceof Double) {
                        bundle.putDouble(next, ((Double) obj).doubleValue());
                    } else if (obj instanceof Long) {
                        bundle.putLong(next, ((Long) obj).longValue());
                    }
                }
            } catch (JSONException e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("OutOfContextTestingGmsgHandler.generateNetworkExtras", e);
            }
        }
        return bundle;
    }

    public static final ArrayList c(String str, String str2) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getString(i));
            }
            return arrayList;
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("OutOfContextTestingGmsgHandler.stringArrayToList.".concat(str2), e);
            return new ArrayList();
        }
    }

    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object, com.google.android.gms.internal.ads.zzebi] */
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        BaseAdView adView;
        boolean z;
        AdRequest build;
        AdSize adSize;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ja)).booleanValue()) {
            ?? obj2 = new Object();
            obj2.d = AdSize.BANNER;
            obj2.e = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            obj2.f = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            int i = 0;
            obj2.g = false;
            Bundle bundle = new Bundle();
            bundle.putString("request_origin", "inspector_ooct");
            obj2.f6337a = new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build();
            String str = (String) map.get("adUnitId");
            if (!TextUtils.isEmpty(str)) {
                obj2.e = str;
            }
            String str2 = (String) map.get("format");
            if (!TextUtils.isEmpty(str2)) {
                obj2.f = str2;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.La)).booleanValue()) {
                if (map.containsKey("isGamRequest") && ((String) map.get("isGamRequest")).equals("1")) {
                    z = true;
                } else {
                    z = false;
                }
                obj2.g = z;
                if (z) {
                    AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
                    if (map.containsKey("keywords")) {
                        ArrayList c2 = c((String) map.get("keywords"), "keywords");
                        int size = c2.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj3 = c2.get(i2);
                            i2++;
                            builder.addKeyword((String) obj3);
                        }
                    }
                    builder.addNetworkExtrasBundle(AdMobAdapter.class, b(map));
                    if (map.containsKey("customTargeting")) {
                        try {
                            JSONObject jSONObject = new JSONObject((String) map.get("customTargeting"));
                            Iterator<String> keys = jSONObject.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                builder.addCustomTargeting(next, jSONObject.getString(next));
                            }
                        } catch (JSONException e) {
                            com.google.android.gms.ads.internal.zzt.zzh().f("OutOfContextTestingGmsgHandler.generateAdManagerAdRequest", e);
                        }
                    }
                    if (map.containsKey("contentUrl")) {
                        builder.setContentUrl((String) map.get("contentUrl"));
                    }
                    if (map.containsKey("neighboringContentUrlStrings")) {
                        builder.setNeighboringContentUrls(c((String) map.get("neighboringContentUrlStrings"), "neighboringContentUrlStrings"));
                    }
                    if (map.containsKey("requestAgent")) {
                        builder.setRequestAgent((String) map.get("requestAgent"));
                    }
                    if (map.containsKey("publisherProvidedId")) {
                        builder.setPublisherProvidedId((String) map.get("publisherProvidedId"));
                    }
                    if (map.containsKey("categoryExclusions")) {
                        ArrayList c3 = c((String) map.get("categoryExclusions"), "categoryExclusions");
                        int size2 = c3.size();
                        while (i < size2) {
                            Object obj4 = c3.get(i);
                            i++;
                            builder.addCategoryExclusion((String) obj4);
                        }
                    }
                    build = builder.build();
                } else {
                    AdRequest.Builder builder2 = new AdRequest.Builder();
                    if (map.containsKey("keywords")) {
                        ArrayList c4 = c((String) map.get("keywords"), "keywords");
                        int size3 = c4.size();
                        while (i < size3) {
                            Object obj5 = c4.get(i);
                            i++;
                            builder2.addKeyword((String) obj5);
                        }
                    }
                    builder2.addNetworkExtrasBundle(AdMobAdapter.class, b(map));
                    if (map.containsKey("customTargeting")) {
                        try {
                            JSONObject jSONObject2 = new JSONObject((String) map.get("customTargeting"));
                            Iterator<String> keys2 = jSONObject2.keys();
                            while (keys2.hasNext()) {
                                String next2 = keys2.next();
                                builder2.addCustomTargeting(next2, jSONObject2.getString(next2));
                            }
                        } catch (JSONException e2) {
                            com.google.android.gms.ads.internal.zzt.zzh().f("OutOfContextTestingGmsgHandler.generateAdMobAdRequest", e2);
                        }
                    }
                    if (map.containsKey("contentUrl")) {
                        builder2.setContentUrl((String) map.get("contentUrl"));
                    }
                    if (map.containsKey("neighboringContentUrlStrings")) {
                        builder2.setNeighboringContentUrls(c((String) map.get("neighboringContentUrlStrings"), "neighboringContentUrlStrings"));
                    }
                    if (map.containsKey("requestAgent")) {
                        builder2.setRequestAgent((String) map.get("requestAgent"));
                    }
                    build = builder2.build();
                }
                obj2.f6337a = build;
                String str3 = (String) map.get("width");
                String str4 = (String) map.get("height");
                if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                    try {
                        adSize = new AdSize(Integer.parseInt(str3), Integer.parseInt(str4));
                    } catch (NumberFormatException e3) {
                        com.google.android.gms.ads.internal.zzt.zzh().f("OutOfContextTestingGmsgHandler.generateAdSize", e3);
                        adSize = AdSize.BANNER;
                    }
                } else {
                    adSize = AdSize.BANNER;
                }
                obj2.d = adSize;
                if (map.containsKey("clickToExpandRequested") || map.containsKey("customControlsRequested") || map.containsKey("startMuted")) {
                    VideoOptions.Builder builder3 = new VideoOptions.Builder();
                    if (map.containsKey("startMuted")) {
                        builder3.setStartMuted(((String) map.get("startMuted")).equals("1"));
                    }
                    if (map.containsKey("customControlsRequested")) {
                        builder3.setCustomControlsRequested(((String) map.get("customControlsRequested")).equals("1"));
                    }
                    if (map.containsKey("clickToExpandRequested")) {
                        builder3.setClickToExpandRequested(((String) map.get("clickToExpandRequested")).equals("1"));
                    }
                    obj2.f6338c = builder3.build();
                }
                if (map.containsKey("customMuteThisAdRequested") || map.containsKey("disableImageLoading") || map.containsKey("mediaAspectRatio") || map.containsKey("preferredAdChoicesPosition") || map.containsKey("shouldRequestMultipleImages") || (obj2.f6338c != null && obj2.f.equals("NATIVE"))) {
                    NativeAdOptions.Builder builder4 = new NativeAdOptions.Builder();
                    if (map.containsKey("disableImageLoading")) {
                        builder4.setReturnUrlsForImageAssets(((String) map.get("disableImageLoading")).equals("1"));
                    }
                    if (map.containsKey("mediaAspectRatio")) {
                        String str5 = (String) map.get("mediaAspectRatio");
                        if (!TextUtils.isEmpty(str5)) {
                            try {
                                builder4.setMediaAspectRatio(Integer.parseInt(str5));
                            } catch (NumberFormatException e4) {
                                com.google.android.gms.ads.internal.zzt.zzh().f("OutOfContextTestingGmsgHandler.generateNativeAdOptionsBuilder.mediaAspectRatio", e4);
                            }
                        }
                    }
                    if (map.containsKey("shouldRequestMultipleImages")) {
                        builder4.setRequestMultipleImages(((String) map.get("shouldRequestMultipleImages")).equals("1"));
                    }
                    if (map.containsKey("preferredAdChoicesPosition")) {
                        String str6 = (String) map.get("preferredAdChoicesPosition");
                        if (!TextUtils.isEmpty(str6)) {
                            try {
                                builder4.setAdChoicesPlacement(Integer.parseInt(str6));
                            } catch (NumberFormatException e5) {
                                com.google.android.gms.ads.internal.zzt.zzh().f("OutOfContextTestingGmsgHandler.generateNativeAdOptionsBuilder.preferredAdChoicesPosition", e5);
                            }
                        }
                    }
                    if (map.containsKey("customMuteThisAdRequested")) {
                        builder4.setRequestCustomMuteThisAd(((String) map.get("customMuteThisAdRequested")).equals("1"));
                    }
                    VideoOptions videoOptions = obj2.f6338c;
                    if (videoOptions != null) {
                        builder4.setVideoOptions(videoOptions);
                    }
                    obj2.b = builder4.build();
                }
            }
            String str7 = (String) map.get("action");
            if (!TextUtils.isEmpty(str7) && !TextUtils.isEmpty(obj2.e)) {
                if (str7.equals("load") && !TextUtils.isEmpty(obj2.f)) {
                    final zzebh zzebhVar = this.f4798a;
                    synchronized (zzebhVar) {
                        try {
                            String str8 = obj2.f;
                            switch (str8.hashCode()) {
                                case -1999289321:
                                    if (str8.equals("NATIVE")) {
                                        final String str9 = obj2.e;
                                        AdLoader.Builder builder5 = new AdLoader.Builder(zzebhVar.g5(), str9);
                                        builder5.forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.google.android.gms.internal.ads.zzebf
                                            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
                                            public final /* synthetic */ void onNativeAdLoaded(NativeAd nativeAd) {
                                                zzebh.this.d5(nativeAd, str9);
                                            }
                                        });
                                        builder5.withAdListener(new zzebb(zzebhVar));
                                        NativeAdOptions nativeAdOptions = obj2.b;
                                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.La)).booleanValue() && nativeAdOptions != null) {
                                            builder5.withNativeAdOptions(nativeAdOptions);
                                        }
                                        builder5.build().loadAd(obj2.f6337a);
                                        return;
                                    }
                                    break;
                                case -1372958932:
                                    if (str8.equals("INTERSTITIAL")) {
                                        String str10 = obj2.e;
                                        InterstitialAd.load(zzebhVar.g5(), str10, obj2.f6337a, new zzeay(zzebhVar, str10));
                                        break;
                                    }
                                    break;
                                case -428325382:
                                    if (str8.equals("APP_OPEN_AD")) {
                                        String str11 = obj2.e;
                                        AppOpenAd.load(zzebhVar.g5(), str11, obj2.f6337a, new zzeaw(zzebhVar, str11));
                                        return;
                                    }
                                    break;
                                case 543046670:
                                    if (str8.equals("REWARDED")) {
                                        String str12 = obj2.e;
                                        RewardedAd.load(zzebhVar.g5(), str12, obj2.f6337a, new zzeaz(zzebhVar, str12));
                                        return;
                                    }
                                    break;
                                case 1854800829:
                                    if (str8.equals("REWARDED_INTERSTITIAL")) {
                                        String str13 = obj2.e;
                                        RewardedInterstitialAd.load(zzebhVar.g5(), str13, obj2.f6337a, new zzeba(zzebhVar, str13));
                                        return;
                                    }
                                    break;
                                case 1951953708:
                                    if (str8.equals("BANNER")) {
                                        String str14 = obj2.e;
                                        zzbgb zzbgbVar = zzbgk.La;
                                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue() && obj2.g) {
                                            adView = new AdManagerAdView(zzebhVar.g5());
                                        } else {
                                            adView = new AdView(zzebhVar.g5());
                                        }
                                        adView.setAdSize(obj2.d);
                                        adView.setAdUnitId(str14);
                                        adView.setAdListener(new zzeax(zzebhVar, str14, adView));
                                        VideoOptions videoOptions2 = obj2.f6338c;
                                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue() && obj2.g && videoOptions2 != null) {
                                            ((AdManagerAdView) adView).setVideoOptions(videoOptions2);
                                        }
                                        adView.loadAd(obj2.f6337a);
                                        return;
                                    }
                                    break;
                            }
                            return;
                        } finally {
                        }
                    }
                }
                if (str7.equals("show")) {
                    this.f4798a.c5(obj2.e);
                }
            }
        }
    }
}
