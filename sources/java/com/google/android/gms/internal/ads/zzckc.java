package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.google.android.gms.ads.RequestConfiguration;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzckc {

    /* renamed from: a, reason: collision with root package name */
    public final zzckb f5219a;
    public final zzckd b;

    public zzckc(zzckd zzckdVar, zzckb zzckbVar) {
        this.f5219a = zzckbVar;
        this.b = zzckdVar;
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            com.google.android.gms.ads.internal.util.zze.zza("Click string is empty, not proceeding.");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        Object obj = this.b;
        zzayq c2 = ((zzckk) obj).c();
        if (c2 == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Signal utils is empty, ignoring.");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        zzayl zzaylVar = c2.b;
        if (zzaylVar == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Signals object is empty, ignoring.");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        View view = (View) obj;
        if (view.getContext() == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Context is null, ignoring.");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return zzaylVar.zzf(view.getContext(), str, ((zzckm) obj).zzE(), ((zzcju) obj).f5211c.f5223a);
    }

    @JavascriptInterface
    public String getViewSignals() {
        Object obj = this.b;
        zzayq c2 = ((zzckk) obj).c();
        if (c2 == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Signal utils is empty, ignoring.");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        zzayl zzaylVar = c2.b;
        if (zzaylVar == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Signals object is empty, ignoring.");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        View view = (View) obj;
        if (view.getContext() == null) {
            com.google.android.gms.ads.internal.util.zze.zza("Context is null, ignoring.");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return zzaylVar.zzj(view.getContext(), ((zzckm) obj).zzE(), ((zzcju) obj).f5211c.f5223a);
    }

    @JavascriptInterface
    public String getViewSignalsJson() {
        zzcze zzczeVar;
        Object obj = this.b;
        zzbgk.a(((View) obj).getContext());
        String viewSignals = getViewSignals();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.df)).booleanValue()) {
            return viewSignals;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ms", viewSignals);
            zzcjc D = ((zzcir) obj).D();
            if (D != null) {
                zzczeVar = D.E;
            } else {
                zzczeVar = null;
            }
            if (zzczeVar != null) {
                long j = zzczeVar.f5617a.get();
                if (j > 0) {
                    jSONObject.put("plcmtid", j);
                }
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Error constructing JSON.", e);
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    @JavascriptInterface
    public void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("URL is empty, ignoring message");
        } else {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjz
                @Override // java.lang.Runnable
                public final void run() {
                    zzckb zzckbVar = zzckc.this.f5219a;
                    Uri parse = Uri.parse(str);
                    zzcjc zzcjcVar = ((zzcju) ((zzcka) zzckbVar).f5218a).r;
                    if (zzcjcVar == null) {
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzf("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
                    } else {
                        zzcjcVar.n(parse);
                    }
                }
            });
        }
    }
}
