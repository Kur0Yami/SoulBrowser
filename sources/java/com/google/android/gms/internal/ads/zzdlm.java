package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbfp;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzdlm implements zzdak, zzdhw {

    /* renamed from: c, reason: collision with root package name */
    public final zzcbt f5881c;
    public final Context f;
    public final zzcbw g;
    public final View h;
    public String i;
    public final zzbfp.zza.EnumC0010zza j;

    public zzdlm(zzcbt zzcbtVar, Context context, zzcbw zzcbwVar, WebView webView, zzbfp.zza.EnumC0010zza enumC0010zza) {
        this.f5881c = zzcbtVar;
        this.f = context;
        this.g = zzcbwVar;
        this.h = webView;
        this.j = enumC0010zza;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void J() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void U(zzbzj zzbzjVar, String str, String str2) {
        zzcbw zzcbwVar = this.g;
        Context context = this.f;
        if (zzcbwVar.a(context)) {
            try {
                zzcbwVar.e(zzbzjVar.f, context, zzcbwVar.d(context), this.f5881c.g, zzbzjVar.f4989c);
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void i0() {
        View view = this.h;
        if (view != null && this.i != null) {
            Context context = view.getContext();
            String str = this.i;
            zzcbw zzcbwVar = this.g;
            AtomicReference atomicReference = zzcbwVar.g;
            if (zzcbwVar.a(context) && (context instanceof Activity) && zzcbwVar.m(context, "com.google.firebase.analytics.FirebaseAnalytics", atomicReference, false)) {
                ConcurrentHashMap concurrentHashMap = zzcbwVar.h;
                Method method = (Method) concurrentHashMap.get("setCurrentScreen");
                if (method == null) {
                    try {
                        method = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                        concurrentHashMap.put("setCurrentScreen", method);
                    } catch (Exception unused) {
                        zzcbwVar.l("setCurrentScreen", false);
                        method = null;
                    }
                }
                try {
                    method.invoke(atomicReference.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception unused2) {
                    zzcbwVar.l("setCurrentScreen", false);
                }
            }
        }
        this.f5881c.a(true);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void o() {
        this.f5881c.a(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdhw
    public final void zzg() {
    }

    @Override // com.google.android.gms.internal.ads.zzdhw
    public final void zzh() {
        String str;
        zzbfp.zza.EnumC0010zza enumC0010zza = zzbfp.zza.EnumC0010zza.APP_OPEN;
        zzbfp.zza.EnumC0010zza enumC0010zza2 = this.j;
        if (enumC0010zza2 == enumC0010zza) {
            return;
        }
        zzcbw zzcbwVar = this.g;
        Context context = this.f;
        boolean a2 = zzcbwVar.a(context);
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (a2) {
            AtomicReference atomicReference = zzcbwVar.f;
            if (zzcbwVar.m(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
                try {
                    String str3 = (String) zzcbwVar.i(context, "getCurrentScreenName").invoke(atomicReference.get(), null);
                    if (str3 == null) {
                        str3 = (String) zzcbwVar.i(context, "getCurrentScreenClass").invoke(atomicReference.get(), null);
                    }
                    if (str3 != null) {
                        str2 = str3;
                    }
                } catch (Exception unused) {
                    zzcbwVar.l("getCurrentScreenName", false);
                }
            }
        }
        this.i = str2;
        String valueOf = String.valueOf(str2);
        if (enumC0010zza2 == zzbfp.zza.EnumC0010zza.REWARD_BASED_VIDEO_AD) {
            str = "/Rewarded";
        } else {
            str = "/Interstitial";
        }
        this.i = valueOf.concat(str);
    }
}
