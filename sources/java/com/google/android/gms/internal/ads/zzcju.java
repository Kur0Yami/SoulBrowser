package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Looper;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import androidx.webkit.internal.WebViewFeatureInternal;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.internal.ads.zzbfp;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
@ParametersAreNonnullByDefault
@SuppressLint({"ViewConstructor"})
@VisibleForTesting
/* loaded from: classes.dex */
public final class zzcju extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcir {
    public static final /* synthetic */ int g0 = 0;
    public boolean A;
    public Boolean B;
    public boolean C;
    public final String D;
    public zzcjx E;
    public boolean F;
    public boolean G;
    public zzbjl H;
    public zzdrr I;
    public zzbdx J;
    public int K;
    public int L;
    public zzbgw M;
    public final zzbgw N;
    public zzbgw O;
    public final zzbgx P;
    public int Q;
    public com.google.android.gms.ads.internal.overlay.zzm R;
    public boolean S;
    public final com.google.android.gms.ads.internal.util.zzci T;
    public int U;
    public int V;
    public int W;
    public int a0;
    public int b0;

    /* renamed from: c, reason: collision with root package name */
    public final zzckt f5211c;
    public HashMap c0;
    public final WindowManager d0;
    public final zzbfj e0;
    public final zzayq f;
    public boolean f0;
    public final zzfio g;
    public final zzbhr h;
    public final VersionInfoParcel i;
    public com.google.android.gms.ads.internal.zzn j;
    public final com.google.android.gms.ads.internal.zza k;
    public final DisplayMetrics l;
    public final float m;
    public zzfhr n;
    public zzfhu o;
    public boolean p;
    public boolean q;
    public zzcjc r;
    public com.google.android.gms.ads.internal.overlay.zzm s;
    public zzejb t;
    public zzeiz u;
    public zzclb v;
    public final String w;
    public boolean x;
    public boolean y;
    public boolean z;

    public zzcju(zzckt zzcktVar, zzclb zzclbVar, String str, boolean z, zzayq zzayqVar, zzbhr zzbhrVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zzn zznVar, com.google.android.gms.ads.internal.zza zzaVar, zzbfj zzbfjVar, zzfhr zzfhrVar, zzfhu zzfhuVar, zzfio zzfioVar) {
        super(zzcktVar);
        zzfhu zzfhuVar2;
        String str2;
        this.p = false;
        this.q = false;
        this.C = true;
        this.D = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.U = -1;
        this.V = -1;
        this.W = -1;
        this.a0 = -1;
        this.b0 = -1;
        this.f5211c = zzcktVar;
        this.v = zzclbVar;
        this.w = str;
        this.z = z;
        this.f = zzayqVar;
        this.g = zzfioVar;
        this.h = zzbhrVar;
        this.i = versionInfoParcel;
        this.j = zznVar;
        this.k = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.d0 = windowManager;
        com.google.android.gms.ads.internal.zzt.zzc();
        DisplayMetrics zzx = com.google.android.gms.ads.internal.util.zzs.zzx(windowManager);
        this.l = zzx;
        this.m = zzx.density;
        this.e0 = zzbfjVar;
        this.n = zzfhrVar;
        this.o = zzfhuVar;
        this.T = new com.google.android.gms.ads.internal.util.zzci(zzcktVar.f5223a, this, this, null);
        this.f0 = false;
        setBackgroundColor(0);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Vc)).booleanValue()) {
            setSoundEffectsEnabled(false);
        }
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Uc)).booleanValue()) {
            settings.setMixedContentMode(1);
        } else {
            settings.setMixedContentMode(2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Be)).booleanValue()) {
            settings.setGeolocationEnabled(false);
        }
        settings.setUserAgentString(com.google.android.gms.ads.internal.zzt.zzc().zze(zzcktVar, versionInfoParcel.afmaVersion));
        com.google.android.gms.ads.internal.zzt.zzc();
        com.google.android.gms.ads.internal.util.zzs.zzr(getContext(), settings);
        setDownloadListener(this);
        E0();
        addJavascriptInterface(new zzckc(this, new zzcka(this)), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        zzbgx zzbgxVar = this.P;
        if (zzbgxVar != null) {
            zzbgz zzbgzVar = zzbgxVar.b;
            zzbgp a2 = com.google.android.gms.ads.internal.zzt.zzh().a();
            if (a2 != null) {
                a2.f4663a.offer(zzbgzVar);
            }
        }
        zzbgz zzbgzVar2 = new zzbgz(this.w);
        zzbgx zzbgxVar2 = new zzbgx(zzbgzVar2);
        this.P = zzbgxVar2;
        synchronized (zzbgzVar2.f4672c) {
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue() && (zzfhuVar2 = this.o) != null && (str2 = zzfhuVar2.b) != null) {
            zzbgzVar2.c("gqi", str2);
        }
        zzbgw zzbgwVar = new zzbgw(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime(), null, null);
        this.N = zzbgwVar;
        zzbgxVar2.f4669a.put("native:view_create", zzbgwVar);
        this.O = null;
        this.M = null;
        com.google.android.gms.ads.internal.util.zzce.zza().zzb(zzcktVar);
        com.google.android.gms.ads.internal.zzt.zzh().k.incrementAndGet();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void A(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.s;
        if (zzmVar != null) {
            zzmVar.zzt(this.r.i0(), z);
        } else {
            this.x = z;
        }
    }

    public final /* synthetic */ void A0(String str, ValueCallback valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void B(long j, boolean z) {
        String str;
        HashMap hashMap = new HashMap(2);
        if (true != z) {
            str = "0";
        } else {
            str = "1";
        }
        hashMap.put("success", str);
        hashMap.put("duration", Long.toString(j));
        S("onCacheAccessComplete", hashMap);
    }

    public final /* synthetic */ void B0(String str) {
        super.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void C(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.s = zzmVar;
    }

    public final /* synthetic */ void C0() {
        super.loadUrl("about:blank");
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final /* synthetic */ zzcjc D() {
        return this.r;
    }

    public final synchronized void D0() {
        try {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjr
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcju.this.C0();
                }
            });
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().f("AdWebViewImpl.loadUrlUnsafe", th);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not call loadUrl in destroy(). ", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void E() {
        com.google.android.gms.ads.internal.util.zze.zza("Cannot add text view to inner AdWebView");
    }

    public final synchronized void E0() {
        zzfhr zzfhrVar = this.n;
        if (zzfhrVar != null && zzfhrVar.m0) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Disabling hardware acceleration on an overlay.");
            F0();
            return;
        }
        if (!this.z && !this.v.b()) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Enabling hardware acceleration on an AdView.");
            G0();
            return;
        }
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Enabling hardware acceleration on an overlay.");
        G0();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void F(String str, String str2) {
        Throwable th;
        String str3;
        try {
            try {
                if (!u()) {
                    String str4 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w0);
                    JSONObject jSONObject = new JSONObject();
                    try {
                        try {
                            jSONObject.put("version", str4);
                            jSONObject.put("sdk", "Google Mobile Ads");
                            jSONObject.put("sdkVersion", "12.4.51-000");
                            str3 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    } catch (JSONException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Unable to build MRAID_ENV", e);
                        str3 = null;
                    }
                    super.loadDataWithBaseURL(str, zzcki.a(str2, str3), "text/html", "UTF-8", null);
                    return;
                }
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("#004 The webview is destroyed. Ignoring action.");
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public final synchronized void F0() {
        try {
            if (!this.A) {
                setLayerType(1, null);
            }
            this.A = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void G(Context context) {
        zzckt zzcktVar = this.f5211c;
        zzcktVar.setBaseContext(context);
        this.T.zza(zzcktVar.f5223a);
    }

    public final synchronized void G0() {
        try {
            if (this.A) {
                setLayerType(0, null);
            }
            this.A = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm H() {
        return this.R;
    }

    public final synchronized void H0() {
        if (!this.S) {
            this.S = true;
            com.google.android.gms.ads.internal.zzt.zzh().k.decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void I(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.R = zzmVar;
    }

    public final synchronized void I0() {
        try {
            HashMap hashMap = this.c0;
            if (hashMap != null) {
                Iterator it = hashMap.values().iterator();
                while (it.hasNext()) {
                    ((zzcgx) it.next()).release();
                }
            }
            this.c0 = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzckh
    public final void J(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        this.r.y0(zzcVar, z, z2, str);
    }

    public final void J0(boolean z) {
        String str;
        HashMap hashMap = new HashMap();
        if (true != z) {
            str = "0";
        } else {
            str = "1";
        }
        hashMap.put("isVisible", str);
        S("onAdVisibilityChanged", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzckh
    public final void K(boolean z, int i, String str, boolean z2, boolean z3) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzcjb zzcjbVar;
        zzdir zzdirVar;
        zzcjc zzcjcVar = this.r;
        zzcir zzcirVar = zzcjcVar.f5194c;
        boolean e = zzcirVar.e();
        boolean S = zzcjc.S(e, zzcirVar);
        boolean z4 = true;
        if (!S && z2) {
            z4 = false;
        }
        if (S) {
            zzaVar = null;
        } else {
            zzaVar = zzcjcVar.i;
        }
        if (e) {
            zzcjbVar = null;
        } else {
            zzcjbVar = new zzcjb(zzcirVar, zzcjcVar.j);
        }
        zzbmd zzbmdVar = zzcjcVar.m;
        zzeif zzeifVar = null;
        zzbmf zzbmfVar = zzcjcVar.n;
        boolean z5 = z4;
        zzcjb zzcjbVar2 = zzcjbVar;
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = zzcjcVar.y;
        VersionInfoParcel zzs = zzcirVar.zzs();
        if (z5) {
            zzdirVar = null;
        } else {
            zzdirVar = zzcjcVar.o;
        }
        if (zzcjc.Q(zzcirVar)) {
            zzeifVar = zzcjcVar.K;
        }
        zzcjcVar.a(new AdOverlayInfoParcel(zzaVar, zzcjbVar2, zzbmdVar, zzbmfVar, zzadVar, zzcirVar, z, i, str, zzs, zzdirVar, zzeifVar, z3));
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized zzeiz L() {
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void M(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar;
        int i = this.K;
        int i2 = 1;
        if (true != z) {
            i2 = -1;
        }
        int i3 = i + i2;
        this.K = i3;
        if (i3 <= 0 && (zzmVar = this.s) != null) {
            zzmVar.zzF();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void N(String str, zzcgx zzcgxVar) {
        try {
            if (this.c0 == null) {
                this.c0 = new HashMap();
            }
            this.c0.put(str, zzcgxVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void O(zzejb zzejbVar) {
        this.t = zzejbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void P() {
        zzcjc zzcjcVar = this.r;
        if (zzcjcVar != null) {
            zzcjcVar.P();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    public final void Q(zzbcj zzbcjVar) {
        boolean z;
        synchronized (this) {
            z = zzbcjVar.j;
            this.F = z;
        }
        J0(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void R() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbqj
    public final void S(String str, Map map) {
        try {
            o(com.google.android.gms.ads.internal.client.zzbb.zza().zzk(map), str);
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void T(zzfhr zzfhrVar, zzfhu zzfhuVar) {
        this.n = zzfhrVar;
        this.o = zzfhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void V(int i) {
        zzbgw zzbgwVar = this.N;
        zzbgx zzbgxVar = this.P;
        if (i == 0) {
            zzbgr.a(zzbgxVar.b, zzbgwVar, "aebb2");
        }
        zzbgr.a(zzbgxVar.b, zzbgwVar, "aeh2");
        zzbgxVar.getClass();
        zzbgxVar.b.c("close_type", String.valueOf(i));
        HashMap hashMap = new HashMap(2);
        hashMap.put("closetype", String.valueOf(i));
        hashMap.put("version", this.i.afmaVersion);
        S("onhide", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean W() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void X(zzbdx zzbdxVar) {
        this.J = zzbdxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final zzfio Y() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzcez Z() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized zzcgx a(String str) {
        HashMap hashMap = this.c0;
        if (hashMap == null) {
            return null;
        }
        return (zzcgx) hashMap.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void a0(zzclb zzclbVar) {
        this.v = zzclbVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void b(String str, String str2) {
        w0(android.support.v4.media.a.r(new StringBuilder(androidx.work.impl.workers.a.d(1, String.valueOf(str2).length(), str) + 2), str, "(", str2, ");"));
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean b0(final int i, final boolean z) {
        destroy();
        zzbfi zzbfiVar = new zzbfi() { // from class: com.google.android.gms.internal.ads.zzcjs
            @Override // com.google.android.gms.internal.ads.zzbfi
            public final void a(zzbfp.zzt.zza zzaVar) {
                int i2 = zzcju.g0;
                zzbfp.zzbl.zza E = zzbfp.zzbl.E();
                boolean D = ((zzbfp.zzbl) E.f).D();
                boolean z2 = z;
                if (D != z2) {
                    E.k();
                    ((zzbfp.zzbl) E.f).F(z2);
                }
                E.k();
                ((zzbfp.zzbl) E.f).G(i);
                zzbfp.zzbl zzblVar = (zzbfp.zzbl) E.m();
                zzaVar.k();
                ((zzbfp.zzt) zzaVar.f).M(zzblVar);
            }
        };
        zzbfj zzbfjVar = this.e0;
        zzbfjVar.a(zzbfiVar);
        zzbfjVar.b(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzckk
    public final zzayq c() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void c0(boolean z) {
        this.r.I = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcjy
    public final zzfhu d() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void d0() {
        zzcjc zzcjcVar = this.r;
        if (zzcjcVar != null) {
            zzcjcVar.d0();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcir
    public final synchronized void destroy() {
        try {
            zzbgx zzbgxVar = this.P;
            if (zzbgxVar != null) {
                zzbgz zzbgzVar = zzbgxVar.b;
                zzbgp a2 = com.google.android.gms.ads.internal.zzt.zzh().a();
                if (a2 != null) {
                    a2.f4663a.offer(zzbgzVar);
                }
            }
            this.T.zzc();
            com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.s;
            if (zzmVar != null) {
                zzmVar.zzb();
                this.s.zzq();
                this.s = null;
            }
            this.t = null;
            this.u = null;
            this.r.g();
            this.J = null;
            this.j = null;
            setOnClickListener(null);
            setOnTouchListener(null);
            if (this.y) {
                return;
            }
            com.google.android.gms.ads.internal.zzt.zzB().a(this);
            I0();
            this.y = true;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.fc)).booleanValue()) {
                Activity activity = this.f5211c.f5223a;
                if (activity != null && activity.isDestroyed()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Destroying the WebView immediately...");
                    h();
                    return;
                } else {
                    com.google.android.gms.ads.internal.util.zze.zza("Initiating WebView self destruct sequence in 3...");
                    com.google.android.gms.ads.internal.util.zze.zza("Loading blank page in WebView, 2...");
                    D0();
                    return;
                }
            }
            com.google.android.gms.ads.internal.util.zze.zza("Destroying the WebView immediately...");
            h();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized boolean e() {
        return this.z;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized boolean e0() {
        return this.K > 0;
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(final String str, final ValueCallback valueCallback) {
        if (u()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#004 The webview is destroyed. Ignoring action.", null);
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                return;
            }
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.gc)).booleanValue() && Looper.getMainLooper().getThread() != Thread.currentThread()) {
            ((zzgxi) zzcdo.f).E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjt
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcju.this.A0(str, valueCallback);
                }
            });
            return;
        }
        super.evaluateJavascript(str, valueCallback);
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void f(JSONObject jSONObject, String str) {
        b(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized zzbjl f0() {
        return this.H;
    }

    public final void finalize() {
        try {
            synchronized (this) {
                try {
                    if (!this.y) {
                        this.r.g();
                        com.google.android.gms.ads.internal.zzt.zzB().a(this);
                        I0();
                        H0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final int g() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void g0(zzeiz zzeizVar) {
        this.u = zzeizVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void h() {
        com.google.android.gms.ads.internal.util.zze.zza("Destroying WebView!");
        H0();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcjp(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void h0(String str, Predicate predicate) {
        zzcjc zzcjcVar = this.r;
        if (zzcjcVar != null) {
            synchronized (zzcjcVar.h) {
                try {
                    List<zzbnn> list = (List) zzcjcVar.g.get(str);
                    if (list == null) {
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (zzbnn zzbnnVar : list) {
                        if (((zzbqs) predicate).apply(zzbnnVar)) {
                            arrayList.add(zzbnnVar);
                        }
                    }
                    list.removeAll(arrayList);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzckh
    public final void i(String str, String str2) {
        zzcjc zzcjcVar = this.r;
        zzeif zzeifVar = zzcjcVar.K;
        zzcir zzcirVar = zzcjcVar.f5194c;
        zzcjcVar.a(new AdOverlayInfoParcel(zzcirVar, zzcirVar.zzs(), str, str2, 14, zzeifVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void j(int i) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.s;
        if (zzmVar != null) {
            zzmVar.zzw(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void j0() {
        this.f0 = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized String k() {
        return this.w;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void k0() {
        HashMap hashMap = new HashMap(3);
        hashMap.put("app_muted", String.valueOf(com.google.android.gms.ads.internal.zzt.zzi().zzd()));
        hashMap.put("app_volume", String.valueOf(com.google.android.gms.ads.internal.zzt.zzi().zzb()));
        hashMap.put("device_volume", String.valueOf(com.google.android.gms.ads.internal.util.zzaa.zze(getContext())));
        S("volume", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void l(String str, zzbnn zzbnnVar) {
        zzcjc zzcjcVar = this.r;
        if (zzcjcVar != null) {
            zzcjcVar.b(str, zzbnnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void l0(boolean z) {
        if (z) {
            try {
                setBackgroundColor(0);
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.s;
        if (zzmVar != null) {
            zzmVar.zzu(z);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcir
    public final synchronized void loadData(String str, String str2, String str3) {
        if (!u()) {
            super.loadData(str, str2, str3);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcir
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        try {
            try {
                if (!u()) {
                    super.loadDataWithBaseURL(str, str2, str3, str4, str5);
                } else {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("#004 The webview is destroyed. Ignoring action.");
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcir
    public final synchronized void loadUrl(final String str) {
        if (!u()) {
            try {
                com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjq
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzcju.this.B0(str);
                    }
                });
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzt.zzh().f("AdWebViewImpl.loadUrl", th);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not call loadUrl. ", th);
                return;
            }
        }
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("#004 The webview is destroyed. Ignoring action.");
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final Context m() {
        return this.f5211c.f5224c;
    }

    @Override // com.google.android.gms.internal.ads.zzckh
    public final void m0(String str, String str2, boolean z, int i, boolean z2) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzcjb zzcjbVar;
        zzdir zzdirVar;
        zzcjc zzcjcVar = this.r;
        zzcir zzcirVar = zzcjcVar.f5194c;
        boolean e = zzcirVar.e();
        boolean S = zzcjc.S(e, zzcirVar);
        boolean z3 = true;
        if (!S && z2) {
            z3 = false;
        }
        if (S) {
            zzaVar = null;
        } else {
            zzaVar = zzcjcVar.i;
        }
        if (e) {
            zzcjbVar = null;
        } else {
            zzcjbVar = new zzcjb(zzcirVar, zzcjcVar.j);
        }
        zzbmd zzbmdVar = zzcjcVar.m;
        zzeif zzeifVar = null;
        zzbmf zzbmfVar = zzcjcVar.n;
        boolean z4 = z3;
        zzcjb zzcjbVar2 = zzcjbVar;
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = zzcjcVar.y;
        VersionInfoParcel zzs = zzcirVar.zzs();
        if (z4) {
            zzdirVar = null;
        } else {
            zzdirVar = zzcjcVar.o;
        }
        if (zzcjc.Q(zzcirVar)) {
            zzeifVar = zzcjcVar.K;
        }
        zzcjcVar.a(new AdOverlayInfoParcel(zzaVar, zzcjbVar2, zzbmdVar, zzbmfVar, zzadVar, zzcirVar, z, i, str, str2, zzs, zzdirVar, zzeifVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void n(zzcjx zzcjxVar) {
        if (this.E != null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.E = zzcjxVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void n0(boolean z) {
        String str;
        try {
            boolean z2 = this.z;
            this.z = z;
            E0();
            if (z != z2) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x0)).booleanValue()) {
                    if (!this.v.b()) {
                    }
                }
                zzbwd zzbwdVar = new zzbwd(this, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                if (true != z) {
                    str = "default";
                } else {
                    str = "expanded";
                }
                zzbwdVar.d(str);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqj
    public final void o(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        StringBuilder u = androidx.work.impl.workers.a.u("(window.AFMA_ReceiveMessage || function() {})('", str, "',", jSONObject.toString(), ");");
        String sb = u.toString();
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Dispatching AFMA event: ".concat(sb));
        w0(u.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void o0(String str, zzbnn zzbnnVar) {
        zzcjc zzcjcVar = this.r;
        if (zzcjcVar != null) {
            synchronized (zzcjcVar.h) {
                try {
                    List list = (List) zzcjcVar.g.get(str);
                    if (list == null) {
                        return;
                    }
                    list.remove(zzbnnVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzcjc zzcjcVar = this.r;
        if (zzcjcVar != null) {
            zzcjcVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final synchronized void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            if (!u()) {
                this.T.zzd();
            }
            if (this.f0) {
                onResume();
                this.f0 = false;
            }
            boolean z = this.F;
            zzcjc zzcjcVar = this.r;
            if (zzcjcVar != null && zzcjcVar.m0()) {
                if (!this.G) {
                    this.r.u0();
                    this.r.v0();
                    this.G = true;
                }
                t0();
                z = true;
            }
            J0(z);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        zzcjc zzcjcVar;
        synchronized (this) {
            try {
                if (!u()) {
                    this.T.zze();
                }
                super.onDetachedFromWindow();
                if (this.G && (zzcjcVar = this.r) != null && zzcjcVar.m0() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                    this.r.u0();
                    this.r.v0();
                    this.G = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        J0(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.uc)).booleanValue() && getContext() != null) {
                intent.setPackage(getContext().getPackageName());
            }
            com.google.android.gms.ads.internal.zzt.zzc();
            com.google.android.gms.ads.internal.util.zzs.zzaa(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            String r = android.support.v4.media.a.r(new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(str4).length()), "Couldn't find an Activity to view url/mimetype: ", str, " / ", str4);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd(r);
            com.google.android.gms.ads.internal.zzt.zzh().f("AdWebViewImpl.onDownloadStart: ".concat(String.valueOf(str)), e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (u()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue <= 0.0f || canScrollVertically(-1)) {
                if (axisValue >= 0.0f || canScrollVertically(1)) {
                    if (axisValue2 <= 0.0f || canScrollHorizontally(-1)) {
                        if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean t0 = t0();
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzL();
        if (zzL != null && t0) {
            zzL.zzC();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01d3 A[Catch: all -> 0x000d, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x0010, B:11:0x0016, B:13:0x001a, B:18:0x0025, B:23:0x002d, B:25:0x003f, B:28:0x0044, B:30:0x004b, B:33:0x0055, B:36:0x005a, B:39:0x006b, B:40:0x0083, B:44:0x0072, B:47:0x0077, B:53:0x0093, B:55:0x00a5, B:58:0x00aa, B:60:0x00c6, B:61:0x00ce, B:64:0x00ca, B:65:0x00d3, B:67:0x00d9, B:70:0x00e4, B:77:0x0108, B:79:0x010f, B:82:0x0116, B:84:0x0128, B:86:0x0136, B:89:0x0143, B:93:0x0148, B:95:0x01bc, B:96:0x01bf, B:98:0x01c6, B:103:0x01d3, B:105:0x01d9, B:106:0x01dc, B:108:0x01e0, B:109:0x01e9, B:115:0x01f4), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0128 A[Catch: all -> 0x000d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x0010, B:11:0x0016, B:13:0x001a, B:18:0x0025, B:23:0x002d, B:25:0x003f, B:28:0x0044, B:30:0x004b, B:33:0x0055, B:36:0x005a, B:39:0x006b, B:40:0x0083, B:44:0x0072, B:47:0x0077, B:53:0x0093, B:55:0x00a5, B:58:0x00aa, B:60:0x00c6, B:61:0x00ce, B:64:0x00ca, B:65:0x00d3, B:67:0x00d9, B:70:0x00e4, B:77:0x0108, B:79:0x010f, B:82:0x0116, B:84:0x0128, B:86:0x0136, B:89:0x0143, B:93:0x0148, B:95:0x01bc, B:96:0x01bf, B:98:0x01c6, B:103:0x01d3, B:105:0x01d9, B:106:0x01dc, B:108:0x01e0, B:109:0x01e9, B:115:0x01f4), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0148 A[Catch: all -> 0x000d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:9:0x0010, B:11:0x0016, B:13:0x001a, B:18:0x0025, B:23:0x002d, B:25:0x003f, B:28:0x0044, B:30:0x004b, B:33:0x0055, B:36:0x005a, B:39:0x006b, B:40:0x0083, B:44:0x0072, B:47:0x0077, B:53:0x0093, B:55:0x00a5, B:58:0x00aa, B:60:0x00c6, B:61:0x00ce, B:64:0x00ca, B:65:0x00d3, B:67:0x00d9, B:70:0x00e4, B:77:0x0108, B:79:0x010f, B:82:0x0116, B:84:0x0128, B:86:0x0136, B:89:0x0143, B:93:0x0148, B:95:0x01bc, B:96:0x01bf, B:98:0x01c6, B:103:0x01d3, B:105:0x01d9, B:106:0x01dc, B:108:0x01e0, B:109:0x01e9, B:115:0x01f4), top: B:2:0x0001 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void onMeasure(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcju.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcir
    public final void onPause() {
        if (!u()) {
            try {
                super.onPause();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Vd)).booleanValue() && WebViewFeature.a("MUTE_AUDIO")) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Muting webview");
                    boolean z = WebViewCompat.f1792a;
                    if (WebViewFeatureInternal.n.d()) {
                        WebViewCompat.b(this).f1815a.setAudioMuted(true);
                        return;
                    }
                    throw WebViewFeatureInternal.a();
                }
            } catch (Exception e) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Could not pause webview.", e);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Yd)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzh().f("AdWebViewImpl.onPause", e);
                }
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcir
    public final void onResume() {
        if (!u()) {
            try {
                super.onResume();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Vd)).booleanValue() && WebViewFeature.a("MUTE_AUDIO")) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Unmuting webview");
                    boolean z = WebViewCompat.f1792a;
                    if (WebViewFeatureInternal.n.d()) {
                        WebViewCompat.b(this).f1815a.setAudioMuted(false);
                        return;
                    }
                    throw WebViewFeatureInternal.a();
                }
            } catch (Exception e) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Could not resume webview.", e);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Yd)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzt.zzh().f("AdWebViewImpl.onResume", e);
                }
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p4)).booleanValue() && this.r.s0()) {
            z = true;
        } else {
            z = false;
        }
        if ((this.r.m0() && !this.r.t0()) || z) {
            synchronized (this) {
                try {
                    zzbjl zzbjlVar = this.H;
                    if (zzbjlVar != null) {
                        zzbjlVar.a(motionEvent);
                    }
                } finally {
                }
            }
        } else {
            zzayq zzayqVar = this.f;
            if (zzayqVar != null) {
                zzayqVar.b.zzd(motionEvent);
            }
            zzbhr zzbhrVar = this.h;
            if (zzbhrVar != null) {
                if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > zzbhrVar.f4687a.getEventTime()) {
                    zzbhrVar.f4687a = MotionEvent.obtain(motionEvent);
                } else if (motionEvent.getAction() == 0 && motionEvent.getEventTime() > zzbhrVar.b.getEventTime()) {
                    zzbhrVar.b = MotionEvent.obtain(motionEvent);
                }
            }
        }
        if (u()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void p() {
        if (this.O == null) {
            zzbgx zzbgxVar = this.P;
            zzbgxVar.getClass();
            zzbgw zzbgwVar = new zzbgw(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime(), null, null);
            this.O = zzbgwVar;
            zzbgxVar.f4669a.put("native:view_load", zzbgwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized boolean p0() {
        return this.C;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [com.google.android.gms.internal.ads.zzbwr] */
    /* JADX WARN: Type inference failed for: r10v2 */
    @Override // com.google.android.gms.internal.ads.zzckh
    public final void q(int i, boolean z, boolean z2) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzdir zzdirVar;
        zzdir zzdirVar2;
        ?? r10;
        int i2;
        com.google.android.gms.ads.internal.client.zza zzaVar2;
        boolean z3;
        zzcjc zzcjcVar = this.r;
        zzcir zzcirVar = zzcjcVar.f5194c;
        boolean S = zzcjc.S(zzcirVar.e(), zzcirVar);
        boolean z4 = true;
        if (!S && z2) {
            z4 = false;
        }
        if (S) {
            zzaVar = null;
            zzdirVar = null;
        } else {
            zzaVar = zzcjcVar.i;
            zzdirVar = null;
        }
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = zzcjcVar.j;
        zzdir zzdirVar3 = zzdirVar;
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = zzcjcVar.y;
        VersionInfoParcel zzs = zzcirVar.zzs();
        if (z4) {
            zzdirVar2 = zzdirVar3;
        } else {
            zzdirVar2 = zzcjcVar.o;
        }
        if (zzcjc.Q(zzcirVar)) {
            r10 = zzcjcVar.K;
            i2 = i;
            z3 = z;
            zzaVar2 = zzaVar;
        } else {
            r10 = zzdirVar3;
            i2 = i;
            zzaVar2 = zzaVar;
            z3 = z;
        }
        zzcjcVar.a(new AdOverlayInfoParcel(zzaVar2, zzrVar, zzadVar, zzcirVar, z3, i2, zzs, zzdirVar2, r10));
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void q0(boolean z) {
        this.C = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void r() {
        if (this.M == null) {
            zzbgx zzbgxVar = this.P;
            zzbgr.a(zzbgxVar.b, this.N, "aes2");
            zzbgw zzbgwVar = new zzbgw(com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime(), null, null);
            this.M = zzbgwVar;
            zzbgxVar.f4669a.put("native:view_show", zzbgwVar);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.i.afmaVersion);
        S("onshow", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized boolean r0() {
        return this.x;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized zzbdx s() {
        return this.J;
    }

    public final WebViewClient s0() {
        return this.r;
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcir
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzcjc) {
            this.r = (zzcjc) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (u()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Could not stop loading webview.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void t(zzbjl zzbjlVar) {
        this.H = zzbjlVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0081, code lost:
    
        if (r10.b0 != r9) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a1, code lost:
    
        if (r10.b0 != r9) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean t0() {
        /*
            r10 = this;
            com.google.android.gms.internal.ads.zzcjc r0 = r10.r
            boolean r0 = r0.i0()
            r1 = 0
            if (r0 != 0) goto L11
            com.google.android.gms.internal.ads.zzcjc r0 = r10.r
            boolean r0 = r0.m0()
            if (r0 == 0) goto L84
        L11:
            com.google.android.gms.ads.internal.client.zzbb.zza()
            android.util.DisplayMetrics r0 = r10.l
            int r2 = r0.widthPixels
            int r4 = com.google.android.gms.ads.internal.util.client.zzf.zzA(r0, r2)
            com.google.android.gms.ads.internal.client.zzbb.zza()
            int r2 = r0.heightPixels
            int r5 = com.google.android.gms.ads.internal.util.client.zzf.zzA(r0, r2)
            com.google.android.gms.internal.ads.zzckt r2 = r10.f5211c
            android.app.Activity r2 = r2.f5223a
            r3 = 1
            if (r2 == 0) goto L4e
            android.view.Window r6 = r2.getWindow()
            if (r6 != 0) goto L33
            goto L4e
        L33:
            com.google.android.gms.ads.internal.zzt.zzc()
            int[] r2 = com.google.android.gms.ads.internal.util.zzs.zzX(r2)
            com.google.android.gms.ads.internal.client.zzbb.zza()
            r6 = r2[r1]
            int r6 = com.google.android.gms.ads.internal.util.client.zzf.zzA(r0, r6)
            com.google.android.gms.ads.internal.client.zzbb.zza()
            r2 = r2[r3]
            int r2 = com.google.android.gms.ads.internal.util.client.zzf.zzA(r0, r2)
            r7 = r2
            goto L50
        L4e:
            r6 = r4
            r7 = r5
        L50:
            com.google.android.gms.ads.internal.zzt.zzc()
            android.view.WindowManager r2 = r10.d0
            android.view.Display r2 = r2.getDefaultDisplay()
            int r9 = r2.getRotation()
            int r2 = r10.V
            if (r2 != r4) goto L85
            int r2 = r10.U
            if (r2 != r5) goto L85
            int r2 = r10.W
            if (r2 != r6) goto L85
            int r2 = r10.a0
            if (r2 != r7) goto L85
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.z0
            com.google.android.gms.internal.ads.zzbgi r8 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r8.a(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L84
            int r2 = r10.b0
            if (r2 == r9) goto L84
            goto L85
        L84:
            return r1
        L85:
            int r2 = r10.V
            if (r2 != r4) goto La3
            int r2 = r10.U
            if (r2 != r5) goto La3
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.z0
            com.google.android.gms.internal.ads.zzbgi r8 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r8.a(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto La4
            int r2 = r10.b0
            if (r2 == r9) goto La4
        La3:
            r1 = r3
        La4:
            r10.V = r4
            r10.U = r5
            r10.W = r6
            r10.a0 = r7
            r10.b0 = r9
            com.google.android.gms.internal.ads.zzbwd r3 = new com.google.android.gms.internal.ads.zzbwd
            java.lang.String r2 = ""
            r3.<init>(r10, r2)
            float r8 = r0.density
            r3.e(r4, r5, r6, r7, r8, r9)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcju.t0():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized boolean u() {
        return this.y;
    }

    public final synchronized void u0(String str) {
        if (!u()) {
            loadUrl(str);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void v(int i) {
        this.Q = i;
    }

    public final synchronized void v0(String str) {
        if (!u()) {
            evaluateJavascript(str, null);
        } else {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final ListenableFuture w() {
        zzbhr zzbhrVar = this.h;
        if (zzbhrVar == null) {
            return zzgyq.f;
        }
        return (zzgye) zzgym.g(zzgye.r(zzgyq.f), ((Long) zzbij.f4714c.c()).longValue(), TimeUnit.MILLISECONDS, zzbhrVar.f4688c);
    }

    public final void w0(String str) {
        if (y0() == null) {
            synchronized (this) {
                Boolean c2 = com.google.android.gms.ads.internal.zzt.zzh().c();
                this.B = c2;
                if (c2 == null) {
                    try {
                        evaluateJavascript("(function(){})()", null);
                        x0(Boolean.TRUE);
                    } catch (IllegalStateException unused) {
                        x0(Boolean.FALSE);
                    }
                }
            }
        }
        if (y0().booleanValue()) {
            v0(str);
        } else {
            u0("javascript:".concat(str));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void x() {
        zzbgr.a(this.P.b, this.N, "aeh2");
        HashMap hashMap = new HashMap(1);
        hashMap.put("version", this.i.afmaVersion);
        S("onhide", hashMap);
    }

    public final void x0(Boolean bool) {
        synchronized (this) {
            this.B = bool;
        }
        com.google.android.gms.ads.internal.zzt.zzh().b(bool);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void y() {
        this.T.zzb();
    }

    public final synchronized Boolean y0() {
        return this.B;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized void z(zzdrr zzdrrVar) {
        this.I = zzdrrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcii
    public final zzfhr zzC() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final WebView zzD() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzckm
    public final View zzE() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final ArrayList zzF() {
        return new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm zzL() {
        return this.s;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzckj
    public final synchronized zzclb zzN() {
        return this.v;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final synchronized zzejb zzU() {
        return this.t;
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void zza(String str) {
        w0(str);
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final synchronized void zzdk() {
        com.google.android.gms.ads.internal.zzn zznVar = this.j;
        if (zznVar != null) {
            zznVar.zzdk();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final synchronized void zzdl() {
        com.google.android.gms.ads.internal.zzn zznVar = this.j;
        if (zznVar != null) {
            zznVar.zzdl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcfk
    public final synchronized zzcjx zzh() {
        return this.E;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzbgw zzi() {
        return this.N;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcfk
    public final Activity zzj() {
        return this.f5211c.f5223a;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcfk
    public final com.google.android.gms.ads.internal.zza zzk() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzl() {
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzL();
        if (zzL != null) {
            zzL.zzE();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized String zzm() {
        return this.D;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized String zzn() {
        zzfhu zzfhuVar = this.o;
        if (zzfhuVar == null) {
            return null;
        }
        return zzfhuVar.b;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized int zzp() {
        return this.Q;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final zzbgx zzq() {
        return this.P;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzckl, com.google.android.gms.internal.ads.zzcfk
    public final VersionInfoParcel zzs() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzv(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final int zzx() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final synchronized void zzz() {
        final zzdrr zzdrrVar = this.I;
        if (zzdrrVar != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdrq
                @Override // java.lang.Runnable
                public final void run() {
                    zzdrr zzdrrVar2 = zzdrr.this;
                    try {
                        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
                        zzdrrVar2.d5();
                        zzdnh zzdnhVar = zzdrrVar2.g;
                        if (zzdnhVar != null) {
                            zzdnhVar.q();
                        }
                        zzdrrVar2.g = null;
                        zzdrrVar2.f6074c = null;
                        zzdrrVar2.f = null;
                        zzdrrVar2.h = true;
                    } catch (RemoteException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
            });
        }
    }
}
