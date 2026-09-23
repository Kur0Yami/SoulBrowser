package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzebh extends com.google.android.gms.ads.internal.client.zzdv {

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f6336c = new HashMap();
    public final Context f;
    public final WeakReference g;
    public final zzeav h;
    public final zzgyw i;
    public zzeak j;

    public zzebh(Context context, WeakReference weakReference, zzeav zzeavVar, zzgyw zzgywVar) {
        this.f = context;
        this.g = weakReference;
        this.h = zzeavVar;
        this.i = zzgywVar;
    }

    public static String h5(Object obj) {
        ResponseInfo responseInfo;
        com.google.android.gms.ads.internal.client.zzea zzd;
        if (obj instanceof LoadAdError) {
            responseInfo = ((LoadAdError) obj).getResponseInfo();
        } else if (obj instanceof AppOpenAd) {
            responseInfo = ((AppOpenAd) obj).getResponseInfo();
        } else if (obj instanceof InterstitialAd) {
            responseInfo = ((InterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedAd) {
            responseInfo = ((RewardedAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedInterstitialAd) {
            responseInfo = ((RewardedInterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof AdView) {
            responseInfo = ((AdView) obj).getResponseInfo();
        } else if (obj instanceof NativeAd) {
            responseInfo = ((NativeAd) obj).getResponseInfo();
        } else {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (responseInfo != null && (zzd = responseInfo.zzd()) != null) {
            try {
                return zzd.zzj();
            } catch (RemoteException unused) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034 A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:3:0x0001, B:5:0x0007, B:8:0x000e, B:14:0x001a, B:16:0x0022, B:18:0x0034, B:20:0x0038, B:22:0x003c, B:24:0x0040, B:27:0x004a, B:29:0x0055, B:32:0x005c, B:34:0x0060, B:37:0x0067, B:39:0x006b, B:42:0x0074, B:44:0x0078, B:47:0x0081, B:49:0x0091, B:51:0x0095, B:53:0x0099, B:56:0x0047), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0055 A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #0 {all -> 0x0045, blocks: (B:3:0x0001, B:5:0x0007, B:8:0x000e, B:14:0x001a, B:16:0x0022, B:18:0x0034, B:20:0x0038, B:22:0x003c, B:24:0x0040, B:27:0x004a, B:29:0x0055, B:32:0x005c, B:34:0x0060, B:37:0x0067, B:39:0x006b, B:42:0x0074, B:44:0x0078, B:47:0x0081, B:49:0x0091, B:51:0x0095, B:53:0x0099, B:56:0x0047), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005c A[Catch: all -> 0x0045, TRY_ENTER, TryCatch #0 {all -> 0x0045, blocks: (B:3:0x0001, B:5:0x0007, B:8:0x000e, B:14:0x001a, B:16:0x0022, B:18:0x0034, B:20:0x0038, B:22:0x003c, B:24:0x0040, B:27:0x004a, B:29:0x0055, B:32:0x005c, B:34:0x0060, B:37:0x0067, B:39:0x006b, B:42:0x0074, B:44:0x0078, B:47:0x0081, B:49:0x0091, B:51:0x0095, B:53:0x0099, B:56:0x0047), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void c5(java.lang.String r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            com.google.android.gms.internal.ads.zzeav r0 = r5.h     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.zzcir r1 = r0.h     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L15
            boolean r1 = r1.u()     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto Le
            goto L15
        Le:
            com.google.android.gms.internal.ads.zzcir r0 = r0.h     // Catch: java.lang.Throwable -> L45
            android.app.Activity r0 = r0.zzj()     // Catch: java.lang.Throwable -> L45
            goto L16
        L15:
            r0 = 0
        L16:
            if (r0 != 0) goto L1a
            goto Lb4
        L1a:
            java.util.HashMap r1 = r5.f6336c     // Catch: java.lang.Throwable -> L45
            java.lang.Object r2 = r1.get(r6)     // Catch: java.lang.Throwable -> L45
            if (r2 == 0) goto Lb4
            com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.Ka     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L45
            java.lang.Object r4 = r4.a(r3)     // Catch: java.lang.Throwable -> L45
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.lang.Throwable -> L45
            boolean r4 = r4.booleanValue()     // Catch: java.lang.Throwable -> L45
            if (r4 == 0) goto L47
            boolean r4 = r2 instanceof com.google.android.gms.ads.appopen.AppOpenAd     // Catch: java.lang.Throwable -> L45
            if (r4 != 0) goto L47
            boolean r4 = r2 instanceof com.google.android.gms.ads.interstitial.InterstitialAd     // Catch: java.lang.Throwable -> L45
            if (r4 != 0) goto L47
            boolean r4 = r2 instanceof com.google.android.gms.ads.rewarded.RewardedAd     // Catch: java.lang.Throwable -> L45
            if (r4 != 0) goto L47
            boolean r4 = r2 instanceof com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd     // Catch: java.lang.Throwable -> L45
            if (r4 == 0) goto L4a
            goto L47
        L45:
            r6 = move-exception
            goto Lb6
        L47:
            r1.remove(r6)     // Catch: java.lang.Throwable -> L45
        L4a:
            java.lang.String r1 = h5(r2)     // Catch: java.lang.Throwable -> L45
            r5.f5(r1)     // Catch: java.lang.Throwable -> L45
            boolean r1 = r2 instanceof com.google.android.gms.ads.appopen.AppOpenAd     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L5c
            com.google.android.gms.ads.appopen.AppOpenAd r2 = (com.google.android.gms.ads.appopen.AppOpenAd) r2     // Catch: java.lang.Throwable -> L45
            r2.show(r0)     // Catch: java.lang.Throwable -> L45
            monitor-exit(r5)
            return
        L5c:
            boolean r1 = r2 instanceof com.google.android.gms.ads.interstitial.InterstitialAd     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L67
            com.google.android.gms.ads.interstitial.InterstitialAd r2 = (com.google.android.gms.ads.interstitial.InterstitialAd) r2     // Catch: java.lang.Throwable -> L45
            r2.show(r0)     // Catch: java.lang.Throwable -> L45
            monitor-exit(r5)
            return
        L67:
            boolean r1 = r2 instanceof com.google.android.gms.ads.rewarded.RewardedAd     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L74
            com.google.android.gms.ads.rewarded.RewardedAd r2 = (com.google.android.gms.ads.rewarded.RewardedAd) r2     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.zzebg r6 = com.google.android.gms.internal.ads.zzebg.f6335a     // Catch: java.lang.Throwable -> L45
            r2.show(r0, r6)     // Catch: java.lang.Throwable -> L45
            monitor-exit(r5)
            return
        L74:
            boolean r1 = r2 instanceof com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L81
            com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd r2 = (com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd) r2     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.zzebe r6 = com.google.android.gms.internal.ads.zzebe.f6333a     // Catch: java.lang.Throwable -> L45
            r2.show(r0, r6)     // Catch: java.lang.Throwable -> L45
            monitor-exit(r5)
            return
        L81:
            com.google.android.gms.internal.ads.zzbgi r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L45
            java.lang.Object r0 = r0.a(r3)     // Catch: java.lang.Throwable -> L45
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L45
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto Lb4
            boolean r0 = r2 instanceof com.google.android.gms.ads.AdView     // Catch: java.lang.Throwable -> L45
            if (r0 != 0) goto L99
            boolean r0 = r2 instanceof com.google.android.gms.ads.nativead.NativeAd     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto Lb4
        L99:
            android.content.Intent r0 = new android.content.Intent     // Catch: java.lang.Throwable -> L45
            r0.<init>()     // Catch: java.lang.Throwable -> L45
            android.content.Context r1 = r5.g5()     // Catch: java.lang.Throwable -> L45
            java.lang.String r2 = "com.google.android.gms.ads.OutOfContextTestingActivity"
            r0.setClassName(r1, r2)     // Catch: java.lang.Throwable -> L45
            java.lang.String r2 = "adUnit"
            r0.putExtra(r2, r6)     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.ads.internal.zzt.zzc()     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.ads.internal.util.zzs.zzaa(r1, r0)     // Catch: java.lang.Throwable -> L45
            monitor-exit(r5)
            return
        Lb4:
            monitor-exit(r5)
            return
        Lb6:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L45
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzebh.c5(java.lang.String):void");
    }

    public final synchronized void d5(Object obj, String str) {
        this.f6336c.put(str, obj);
        e5(h5(obj));
    }

    public final synchronized void e5(String str) {
        try {
            zzcdt e = this.j.e(str);
            zzebc zzebcVar = new zzebc(this);
            e.k(new zzgyk(e, zzebcVar), this.i);
        } catch (NullPointerException e2) {
            com.google.android.gms.ads.internal.zzt.zzh().f("OutOfContextTester.setAdAsOutOfContext", e2);
            this.h.c();
        }
    }

    public final synchronized void f5(String str) {
        try {
            zzcdt e = this.j.e(str);
            zzebd zzebdVar = new zzebd(this);
            e.k(new zzgyk(e, zzebdVar), this.i);
        } catch (NullPointerException e2) {
            com.google.android.gms.ads.internal.zzt.zzh().f("OutOfContextTester.setAdAsShown", e2);
            this.h.c();
        }
    }

    public final Context g5() {
        Context context = (Context) this.g.get();
        if (context == null) {
            return this.f;
        }
        return context;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdw
    public final void zze(String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        String string;
        String string2;
        String string3;
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        ViewGroup viewGroup = (ViewGroup) ObjectWrapper.f2(iObjectWrapper2);
        if (context != null && viewGroup != null) {
            HashMap hashMap = this.f6336c;
            Object obj = hashMap.get(str);
            if (obj != null) {
                hashMap.remove(str);
            }
            if (obj instanceof AdView) {
                AdView adView = (AdView) obj;
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setTag("layout");
                zzebj.b(linearLayout, -1, -1);
                linearLayout.setGravity(17);
                linearLayout.addView(adView);
                adView.setTag("ad_view");
                viewGroup.addView(linearLayout);
                return;
            }
            if (obj instanceof NativeAd) {
                NativeAd nativeAd = (NativeAd) obj;
                NativeAdView nativeAdView = new NativeAdView(context);
                nativeAdView.setTag("ad_view_tag");
                zzebj.b(nativeAdView, -1, -1);
                viewGroup.addView(nativeAdView);
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setTag("layout_tag");
                linearLayout2.setOrientation(1);
                zzebj.b(linearLayout2, -1, -1);
                linearLayout2.setBackgroundColor(-1);
                nativeAdView.addView(linearLayout2);
                Resources e = com.google.android.gms.ads.internal.zzt.zzh().e();
                if (e == null) {
                    string = "Headline";
                } else {
                    string = e.getString(R.string.native_headline);
                }
                linearLayout2.addView(zzebj.a(context, string, android.R.style.TextAppearance.Small, -9210245, 0.0f, "headline_header_tag"));
                String headline = nativeAd.getHeadline();
                if (headline == null) {
                    headline = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                View a2 = zzebj.a(context, headline, android.R.style.TextAppearance.Medium, -16777216, 12.0f, "headline_tag");
                nativeAdView.setHeadlineView(a2);
                linearLayout2.addView(a2);
                if (e == null) {
                    string2 = "Body";
                } else {
                    string2 = e.getString(R.string.native_body);
                }
                linearLayout2.addView(zzebj.a(context, string2, android.R.style.TextAppearance.Small, -9210245, 0.0f, "body_header_tag"));
                String body = nativeAd.getBody();
                if (body == null) {
                    body = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                View a3 = zzebj.a(context, body, android.R.style.TextAppearance.Medium, -16777216, 12.0f, "body_tag");
                nativeAdView.setBodyView(a3);
                linearLayout2.addView(a3);
                if (e == null) {
                    string3 = "Media View";
                } else {
                    string3 = e.getString(R.string.native_media_view);
                }
                linearLayout2.addView(zzebj.a(context, string3, android.R.style.TextAppearance.Small, -9210245, 0.0f, "media_view_header_tag"));
                MediaView mediaView = new MediaView(context);
                mediaView.setTag("media_view_tag");
                nativeAdView.setMediaView(mediaView);
                linearLayout2.addView(mediaView);
                nativeAdView.setNativeAd(nativeAd);
            }
        }
    }
}
