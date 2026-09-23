package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;

@TargetApi(26)
/* loaded from: classes.dex */
public final class zzckg extends zzckf {
    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash = renderProcessGoneDetail.didCrash();
        return this.f5194c.b0(renderProcessGoneDetail.rendererPriorityAtExit(), didCrash);
    }
}
