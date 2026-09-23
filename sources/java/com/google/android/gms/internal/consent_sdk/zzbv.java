package com.google.android.gms.internal.consent_sdk;

import android.util.Log;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import j$.util.Objects;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbv extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbx f9960a;

    public /* synthetic */ zzbv(zzbx zzbxVar) {
        Objects.requireNonNull(zzbxVar);
        this.f9960a = zzbxVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        int i = zzbx.h;
        if (str != null && str.startsWith("consent://")) {
            this.f9960a.f.a(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        zzbx zzbxVar = this.f9960a;
        if (!zzbxVar.g) {
            Log.d("UserMessagingPlatform", "Wall html loaded.");
            zzbxVar.g = true;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        zzcd zzcdVar = this.f9960a.f;
        zzcdVar.getClass();
        Locale locale = Locale.US;
        zzcdVar.g.c(new zzg(2, "WebResourceError(" + i + ", " + str2 + "): " + str));
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        String str;
        if (webView == null) {
            return true;
        }
        if (true != renderProcessGoneDetail.didCrash()) {
            str = "was stopped by system";
        } else {
            str = "crashed";
        }
        Log.w("UserMessagingPlatform", "WebView render process " + str + ". Renderer priority at exit: " + renderProcessGoneDetail.rendererPriorityAtExit());
        ViewGroup viewGroup = (ViewGroup) webView.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(webView);
        }
        webView.destroy();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String uri = webResourceRequest.getUrl().toString();
        int i = zzbx.h;
        if (uri == null || !uri.startsWith("consent://")) {
            return false;
        }
        this.f9960a.f.a(uri);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        int i = zzbx.h;
        if (str == null || !str.startsWith("consent://")) {
            return false;
        }
        this.f9960a.f.a(str);
        return true;
    }
}
