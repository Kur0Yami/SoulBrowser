package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.internal.WebViewFeatureInternal;
import j$.util.Objects;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes.dex */
final class zzfrq extends TimerTask {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfrs f7603c;
    public final /* synthetic */ Timer f;
    public final /* synthetic */ zzfrt g;

    public zzfrq(zzfrt zzfrtVar, zzfrs zzfrsVar, Timer timer) {
        this.f7603c = zzfrsVar;
        this.f = timer;
        Objects.requireNonNull(zzfrtVar);
        this.g = zzfrtVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        WebView webView = this.g.b;
        boolean z = WebViewCompat.f1792a;
        if (WebViewFeatureInternal.j.d()) {
            WebViewCompat.b(webView).f1815a.removeWebMessageListener("omidJsSessionService");
            final zzcir zzcirVar = ((zzcjl) this.f7603c).f5202a.f5204c;
            zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            Objects.requireNonNull(zzcirVar);
            zzfxlVar.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcji
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcir.this.destroy();
                }
            });
            this.f.cancel();
            return;
        }
        throw WebViewFeatureInternal.a();
    }
}
