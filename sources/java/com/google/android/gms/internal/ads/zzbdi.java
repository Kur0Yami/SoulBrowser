package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.ads.RequestConfiguration;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbdi implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final ValueCallback f4570c;
    public final /* synthetic */ WebView f;
    public final /* synthetic */ zzbdk g;

    public zzbdi(zzbdk zzbdkVar, zzbda zzbdaVar, WebView webView, boolean z) {
        this.f = webView;
        this.g = zzbdkVar;
        this.f4570c = new zzbdh(this, zzbdaVar, webView, z);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ValueCallback<String> valueCallback = this.f4570c;
        WebView webView = this.f;
        if (webView.getSettings().getJavaScriptEnabled()) {
            try {
                webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", valueCallback);
            } catch (Throwable unused) {
                ((zzbdh) valueCallback).onReceiveValue(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
        }
    }
}
