package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.work.impl.workers.a;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzayq;
import com.google.android.gms.internal.ads.zzayr;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbip;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzdxj;
import com.google.android.gms.internal.ads.zzfio;
import com.google.android.gms.internal.ads.zzfpi;
import com.google.android.gms.internal.ads.zzgxi;
import com.google.android.gms.internal.ads.zzgyw;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class TaggingLibraryJsInterface {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3210a;
    public final WebView b;

    /* renamed from: c, reason: collision with root package name */
    public final zzayq f3211c;
    public final zzfio d;
    public final int e;
    public final zzdxj f;
    public final boolean g;
    public final zzgyw h = zzcdo.f;
    public final zzfpi i;
    public final zzo j;
    public final zzf k;
    public final zzj l;

    public TaggingLibraryJsInterface(WebView webView, zzayq zzayqVar, zzdxj zzdxjVar, zzfpi zzfpiVar, zzfio zzfioVar, zzo zzoVar, zzf zzfVar, zzj zzjVar) {
        this.b = webView;
        Context context = webView.getContext();
        this.f3210a = context;
        this.f3211c = zzayqVar;
        this.f = zzdxjVar;
        zzbgk.a(context);
        this.e = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Va)).intValue();
        this.g = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Wa)).booleanValue();
        this.i = zzfpiVar;
        this.d = zzfioVar;
        this.j = zzoVar;
        this.k = zzfVar;
        this.l = zzjVar;
    }

    @NonNull
    @JavascriptInterface
    @KeepForSdk
    public String getClickSignals(@NonNull String str) {
        try {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            String zzg = this.f3211c.b.zzg(this.f3210a, str, this.b);
            if (this.g) {
                zzaa.zze(this.f, null, "csg", new Pair("clat", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - currentTimeMillis)));
                return zzg;
            }
            return zzg;
        } catch (RuntimeException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Exception getting click signals. ", e);
            com.google.android.gms.ads.internal.zzt.zzh().f("TaggingLibraryJsInterface.getClickSignals", e);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    @JavascriptInterface
    @KeepForSdk
    public String getClickSignalsWithTimeout(@NonNull final String str, int i) {
        if (i <= 0) {
            String r = a.r(i, "Invalid timeout for getting click signals. Timeout=", new StringBuilder(String.valueOf(i).length() + 51));
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf(r);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        try {
            return (String) ((zzgxi) zzcdo.f5068a).v0(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbr
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return TaggingLibraryJsInterface.this.getClickSignals(str);
                }
            }).get(Math.min(i, this.e), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Exception getting click signals with timeout. ", e);
            com.google.android.gms.ads.internal.zzt.zzh().f("TaggingLibraryJsInterface.getClickSignalsWithTimeout", e);
            if (!(e instanceof TimeoutException)) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return "17";
        }
    }

    @NonNull
    @JavascriptInterface
    @KeepForSdk
    public String getQueryInfo() {
        com.google.android.gms.ads.internal.zzt.zzc();
        String uuid = UUID.randomUUID().toString();
        final Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        final zzbp zzbpVar = new zzbp(this, uuid);
        if (((Boolean) zzbip.e.c()).booleanValue()) {
            this.j.zzb(this.b, zzbpVar);
            return uuid;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ya)).booleanValue()) {
            this.h.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbt
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    boolean z;
                    TaggingLibraryJsInterface taggingLibraryJsInterface = TaggingLibraryJsInterface.this;
                    taggingLibraryJsInterface.getClass();
                    com.google.android.gms.ads.internal.util.zzz zzf = com.google.android.gms.ads.internal.zzt.zzf();
                    Context context = taggingLibraryJsInterface.f3210a;
                    CookieManager zza = zzf.zza(context);
                    if (zza != null) {
                        z = zza.acceptThirdPartyCookies(taggingLibraryJsInterface.b);
                    } else {
                        z = false;
                    }
                    Bundle bundle2 = bundle;
                    bundle2.putBoolean("accept_3p_cookie", z);
                    QueryInfo.generate(context, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle2).build(), zzbpVar);
                }
            });
            return uuid;
        }
        QueryInfo.generate(this.f3210a, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), zzbpVar);
        return uuid;
    }

    @NonNull
    @JavascriptInterface
    @KeepForSdk
    public String getViewSignals() {
        try {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
            String zzj = this.f3211c.b.zzj(this.f3210a, this.b, null);
            if (this.g) {
                zzaa.zze(this.f, null, "vsg", new Pair("vlat", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - currentTimeMillis)));
                return zzj;
            }
            return zzj;
        } catch (RuntimeException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Exception getting view signals. ", e);
            com.google.android.gms.ads.internal.zzt.zzh().f("TaggingLibraryJsInterface.getViewSignals", e);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    @JavascriptInterface
    @KeepForSdk
    public String getViewSignalsWithTimeout(int i) {
        if (i <= 0) {
            String r = a.r(i, "Invalid timeout for getting view signals. Timeout=", new StringBuilder(String.valueOf(i).length() + 50));
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf(r);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        try {
            return (String) ((zzgxi) zzcdo.f5068a).v0(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbq
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return TaggingLibraryJsInterface.this.getViewSignals();
                }
            }).get(Math.min(i, this.e), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Exception getting view signals with timeout. ", e);
            com.google.android.gms.ads.internal.zzt.zzh().f("TaggingLibraryJsInterface.getViewSignalsWithTimeout", e);
            if (!(e instanceof TimeoutException)) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return "17";
        }
    }

    @JavascriptInterface
    @KeepForSdk
    public void recordClick(@NonNull final String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ab)).booleanValue() && !TextUtils.isEmpty(str)) {
            zzcdo.f5068a.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbs
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfio zzfioVar;
                    TaggingLibraryJsInterface taggingLibraryJsInterface = TaggingLibraryJsInterface.this;
                    WebView webView = taggingLibraryJsInterface.b;
                    Context context = taggingLibraryJsInterface.f3210a;
                    Uri parse = Uri.parse(str);
                    try {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qd)).booleanValue() && (zzfioVar = taggingLibraryJsInterface.d) != null) {
                            parse = zzfioVar.a(parse, context, webView, null);
                        } else {
                            parse = taggingLibraryJsInterface.f3211c.b(parse, context, webView, null);
                        }
                    } catch (zzayr e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zze("Failed to append the click signal to URL: ", e);
                        com.google.android.gms.ads.internal.zzt.zzh().f("TaggingLibraryJsInterface.recordClick", e);
                    }
                    taggingLibraryJsInterface.i.b(parse.toString(), null, null, null);
                }
            });
        }
    }

    @JavascriptInterface
    @KeepForSdk
    public void reportTouchEvent(@NonNull String str) {
        int i;
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i2 = jSONObject.getInt("x");
            int i3 = jSONObject.getInt("y");
            int i4 = jSONObject.getInt("duration_ms");
            float f = (float) jSONObject.getDouble("force");
            int i5 = jSONObject.getInt("type");
            if (i5 != 0) {
                i = 1;
                if (i5 != 1) {
                    i = 2;
                    if (i5 != 2) {
                        i = 3;
                        if (i5 != 3) {
                            i = -1;
                        }
                    }
                }
            } else {
                i = 0;
            }
            try {
                this.f3211c.b.zzd(MotionEvent.obtain(0L, i4, i, i2, i3, f, 1.0f, 0, 1.0f, 1.0f, 0, 0));
            } catch (RuntimeException e) {
                e = e;
                int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to parse the touch string. ", e);
                com.google.android.gms.ads.internal.zzt.zzh().f("TaggingLibraryJsInterface.reportTouchEvent", e);
            } catch (JSONException e2) {
                e = e2;
                int i62 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to parse the touch string. ", e);
                com.google.android.gms.ads.internal.zzt.zzh().f("TaggingLibraryJsInterface.reportTouchEvent", e);
            }
        } catch (RuntimeException | JSONException e3) {
            e = e3;
        }
    }
}
