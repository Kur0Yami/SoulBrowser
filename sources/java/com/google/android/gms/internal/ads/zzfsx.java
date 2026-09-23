package com.google.android.gms.internal.ads;

import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class zzfsx extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfsz f7636a;

    public zzfsx(zzfsz zzfszVar) {
        this.f7636a = zzfszVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzftx, java.lang.ref.WeakReference] */
    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        String obj = renderProcessGoneDetail.toString();
        String valueOf = String.valueOf(webView);
        Log.w("NativeBridge", android.support.v4.media.a.r(new StringBuilder(String.valueOf(obj).length() + 36 + valueOf.length()), "WebView renderer gone: ", obj, "for WebView: ", valueOf));
        zzfsz zzfszVar = this.f7636a;
        if (zzfszVar.c() == webView) {
            Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
            zzfszVar.b = new WeakReference(null);
        }
        webView.destroy();
        return true;
    }
}
