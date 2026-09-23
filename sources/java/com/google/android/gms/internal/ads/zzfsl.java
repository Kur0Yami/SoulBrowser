package com.google.android.gms.internal.ads;

import android.webkit.WebView;

/* loaded from: classes.dex */
final class zzfsl implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebView f7624c;
    public final /* synthetic */ String f;

    public zzfsl(zzfsm zzfsmVar, WebView webView, String str) {
        this.f7624c = webView;
        this.f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfsm.b(this.f7624c, this.f);
    }
}
