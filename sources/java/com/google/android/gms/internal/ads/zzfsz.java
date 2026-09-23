package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.webkit.WebView;
import j$.util.DesugarCollections;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzfsz extends zzfsv {
    public WebView e;
    public Long f;
    public final Map g;

    public zzfsz(String str, Map map) {
        super(str);
        this.f = null;
        this.g = map;
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.ads.zzftx, java.lang.ref.WeakReference] */
    @Override // com.google.android.gms.internal.ads.zzfsv
    public final void a() {
        WebView webView = new WebView(zzfsk.b.f7623a);
        this.e = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.e.getSettings().setAllowContentAccess(false);
        this.e.getSettings().setAllowFileAccess(false);
        this.e.setWebViewClient(new zzfsx(this));
        this.b = new WeakReference(this.e);
        zzfsm.b(this.e, null);
        Map map = this.g;
        Iterator it = map.keySet().iterator();
        if (!it.hasNext()) {
            this.f = Long.valueOf(System.nanoTime());
        } else {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfsv
    public final void b() {
        long convert;
        super.b();
        if (this.f == null) {
            convert = 4000;
        } else {
            convert = TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f.longValue(), TimeUnit.NANOSECONDS);
        }
        new Handler().postDelayed(new zzfsy(this), Math.max(4000 - convert, 2000L));
        this.e = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfsv
    public final void d(zzfrl zzfrlVar, zzfrj zzfrjVar) {
        JSONObject jSONObject = new JSONObject();
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(zzfrjVar.d);
        Iterator it = unmodifiableMap.keySet().iterator();
        if (!it.hasNext()) {
            e(zzfrlVar, zzfrjVar, jSONObject);
        } else {
            throw null;
        }
    }
}
