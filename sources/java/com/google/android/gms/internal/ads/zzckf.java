package com.google.android.gms.internal.ads;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.File;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public class zzckf extends zzcke {
    public zzckf(zzcir zzcirVar, zzbfj zzbfjVar, boolean z, zzeif zzeifVar) {
        super(zzcirVar, zzbfjVar, z, new zzbwc(zzcirVar, zzcirVar.m(), new zzbfr(zzcirVar.getContext())), zzeifVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        String str;
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        String uri = webResourceRequest.getUrl().toString();
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        if (!(webView instanceof zzcir)) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzcir zzcirVar = (zzcir) webView;
        zzcbk zzcbkVar = this.C;
        if (zzcbkVar != null) {
            zzcbkVar.c(uri, requestHeaders, 1);
        }
        int i2 = zzfwo.f7705a;
        if (!"mraid.js".equalsIgnoreCase(new File(uri).getName())) {
            if (requestHeaders == null) {
                requestHeaders = Collections.EMPTY_MAP;
            }
            return i(uri, requestHeaders);
        }
        if (zzcirVar.D() != null) {
            final zzcjc D = zzcirVar.D();
            synchronized (D.h) {
                D.p = false;
                D.u = true;
                ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzciy
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzcir zzcirVar2 = zzcjc.this.f5194c;
                        zzcirVar2.y();
                        com.google.android.gms.ads.internal.overlay.zzm zzL = zzcirVar2.zzL();
                        if (zzL != null) {
                            zzL.zzv();
                        }
                    }
                });
            }
        }
        if (zzcirVar.zzN().b()) {
            str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.v0);
        } else if (zzcirVar.e()) {
            str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u0);
        } else {
            str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t0);
        }
        com.google.android.gms.ads.internal.zzt.zzc();
        return com.google.android.gms.ads.internal.util.zzs.zzB(zzcirVar.getContext(), zzcirVar.zzs().afmaVersion, str);
    }
}
