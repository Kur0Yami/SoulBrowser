package com.mycompany.app.web;

import com.mycompany.app.view.MyWebSafe;
import com.mycompany.app.web.WebNestView;

/* loaded from: classes3.dex */
public class WebSrcView extends MyWebSafe {

    /* renamed from: c, reason: collision with root package name */
    public WebNestView.WebViewListener f19503c;
    public int f;
    public int g;
    public int h;

    @Override // android.webkit.WebView, android.view.View
    public final int computeVerticalScrollExtent() {
        int computeVerticalScrollExtent = super.computeVerticalScrollExtent();
        this.g = computeVerticalScrollExtent;
        return computeVerticalScrollExtent;
    }

    @Override // android.webkit.WebView, android.view.View
    public final int computeVerticalScrollOffset() {
        return super.computeVerticalScrollOffset();
    }

    @Override // android.webkit.WebView, android.view.View
    public final int computeVerticalScrollRange() {
        int computeVerticalScrollRange = super.computeVerticalScrollRange();
        this.h = computeVerticalScrollRange;
        return computeVerticalScrollRange;
    }

    @Override // android.webkit.WebView
    public final void destroy() {
        super.destroy();
        this.f19503c = null;
    }

    public int getScrollTop() {
        return this.f;
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        this.f = i2;
        super.onScrollChanged(i, i2, i3, i4);
        WebNestView.WebViewListener webViewListener = this.f19503c;
        if (webViewListener != null) {
            webViewListener.c(i2);
        }
    }

    public void setListener(WebNestView.WebViewListener webViewListener) {
        this.f19503c = webViewListener;
    }
}
