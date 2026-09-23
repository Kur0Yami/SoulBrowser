package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.h5.H5AdsRequestHandler;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;

/* loaded from: classes.dex */
public final class zzbow extends zzboj {
    public static final /* synthetic */ int d = 0;

    /* renamed from: a, reason: collision with root package name */
    public WebViewClient f4810a;
    public final H5AdsRequestHandler b;

    /* renamed from: c, reason: collision with root package name */
    public final WebView f4811c;

    public zzbow(Context context, final WebView webView) {
        context.getClass();
        webView.getClass();
        zzgqa.b("JavaScript must be enabled on the WebView.", webView.getSettings().getJavaScriptEnabled());
        this.f4811c = webView;
        this.b = new H5AdsRequestHandler(context, new OnH5AdsEventListener() { // from class: com.google.android.gms.internal.ads.zzbov
            @Override // com.google.android.gms.ads.h5.OnH5AdsEventListener
            public final /* synthetic */ void onH5AdsEvent(String str) {
                int i = zzbow.d;
                webView.evaluateJavascript(str, null);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzboj
    public final WebViewClient a() {
        return this.f4810a;
    }

    @Override // com.google.android.gms.internal.ads.zzboj, android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        if (this.f4811c.equals(webView)) {
            if (!this.b.handleH5AdsRequest(str)) {
                super.onLoadResource(webView, str);
                return;
            }
            return;
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzf("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.");
    }

    @Override // com.google.android.gms.internal.ads.zzboj, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Object obj = this.f4811c;
        if (obj.equals(obj)) {
            if (this.b.handleH5AdsRequest(webResourceRequest.getUrl().toString())) {
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzf("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzboj, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.f4811c.equals(webView)) {
            if (this.b.handleH5AdsRequest(str)) {
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzf("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.");
        return false;
    }
}
