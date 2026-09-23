package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Predicate;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcjn extends FrameLayout implements zzcir {

    /* renamed from: c, reason: collision with root package name */
    public final zzcir f5204c;
    public final zzcez f;
    public final AtomicBoolean g;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzcjn(com.google.android.gms.internal.ads.zzcir r3, com.google.android.gms.internal.ads.zzdxe r4) {
        /*
            r2 = this;
            r0 = r3
            android.view.View r0 = (android.view.View) r0
            android.content.Context r1 = r0.getContext()
            r2.<init>(r1)
            java.util.concurrent.atomic.AtomicBoolean r1 = new java.util.concurrent.atomic.AtomicBoolean
            r1.<init>()
            r2.g = r1
            r2.f5204c = r3
            com.google.android.gms.internal.ads.zzcez r1 = new com.google.android.gms.internal.ads.zzcez
            com.google.android.gms.internal.ads.zzcju r3 = (com.google.android.gms.internal.ads.zzcju) r3
            com.google.android.gms.internal.ads.zzckt r3 = r3.f5211c
            android.content.Context r3 = r3.f5224c
            r1.<init>(r3, r2, r2, r4)
            r2.f = r1
            r2.addView(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcjn.<init>(com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzdxe):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void A(boolean z) {
        this.f5204c.A(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void B(long j, boolean z) {
        this.f5204c.B(j, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void C(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.f5204c.C(zzmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final zzcjc D() {
        return ((zzcju) this.f5204c).r;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void E() {
        zzejb zzU;
        zzeiz L;
        zzcir zzcirVar = this.f5204c;
        TextView textView = new TextView(getContext());
        com.google.android.gms.ads.internal.zzt.zzc();
        textView.setText(com.google.android.gms.ads.internal.util.zzs.zzD());
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h6)).booleanValue() && (L = ((zzcju) zzcirVar).L()) != null) {
            synchronized (L) {
                zzfrt zzfrtVar = L.f;
                if (zzfrtVar != null) {
                    com.google.android.gms.ads.internal.zzt.zzu().a(zzfrtVar, textView);
                    return;
                }
                return;
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g6)).booleanValue() && (zzU = ((zzcju) zzcirVar).zzU()) != null && zzU.b.g == zzfrk.HTML) {
            com.google.android.gms.ads.internal.zzt.zzu().i(zzU.f6553a, textView);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void F(String str, String str2) {
        ((zzcju) this.f5204c).F(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void G(Context context) {
        this.f5204c.G(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final com.google.android.gms.ads.internal.overlay.zzm H() {
        return this.f5204c.H();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void I(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        ((zzcju) this.f5204c).I(zzmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzckh
    public final void J(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z, boolean z2, String str) {
        ((zzcju) this.f5204c).J(zzcVar, z, z2, str);
    }

    @Override // com.google.android.gms.internal.ads.zzckh
    public final void K(boolean z, int i, String str, boolean z2, boolean z3) {
        this.f5204c.K(z, i, str, z2, z3);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final zzeiz L() {
        return this.f5204c.L();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void M(boolean z) {
        ((zzcju) this.f5204c).M(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void N(String str, zzcgx zzcgxVar) {
        ((zzcju) this.f5204c).N(str, zzcgxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void O(zzejb zzejbVar) {
        this.f5204c.O(zzejbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void P() {
        zzcir zzcirVar = this.f5204c;
        if (zzcirVar != null) {
            zzcirVar.P();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    public final void Q(zzbcj zzbcjVar) {
        ((zzcju) this.f5204c).Q(zzbcjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void R() {
        setBackgroundColor(0);
        this.f5204c.setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzbqj
    public final void S(String str, Map map) {
        ((zzcju) this.f5204c).S(str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void T(zzfhr zzfhrVar, zzfhu zzfhuVar) {
        zzcju zzcjuVar = (zzcju) this.f5204c;
        zzcjuVar.n = zzfhrVar;
        zzcjuVar.o = zzfhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void V(int i) {
        this.f5204c.V(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean W() {
        return this.g.get();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void X(zzbdx zzbdxVar) {
        this.f5204c.X(zzbdxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final zzfio Y() {
        return this.f5204c.Y();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzcez Z() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzcgx a(String str) {
        return this.f5204c.a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void a0(zzclb zzclbVar) {
        this.f5204c.a0(zzclbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void b(String str, String str2) {
        ((zzcju) this.f5204c).b("window.inspectorInfo", str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean b0(int i, boolean z) {
        if (!this.g.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q1)).booleanValue()) {
            return false;
        }
        zzcir zzcirVar = this.f5204c;
        if (zzcirVar.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzcirVar.getParent()).removeView((View) zzcirVar);
        }
        zzcirVar.b0(i, z);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzckk
    public final zzayq c() {
        return this.f5204c.c();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void c0(boolean z) {
        this.f5204c.c0(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean canGoBack() {
        return this.f5204c.canGoBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcjy
    public final zzfhu d() {
        return this.f5204c.d();
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void d0() {
        zzcir zzcirVar = this.f5204c;
        if (zzcirVar != null) {
            zzcirVar.d0();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void destroy() {
        final zzeiz L;
        final zzcju zzcjuVar = (zzcju) this.f5204c;
        final zzejb zzU = zzcjuVar.zzU();
        if (zzU != null) {
            zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            zzfxlVar.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjm
                @Override // java.lang.Runnable
                public final void run() {
                    com.google.android.gms.ads.internal.zzt.zzu().d(zzejb.this.f6553a);
                }
            });
            zzfxlVar.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjj
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzcir.this.destroy();
                }
            }, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f6)).intValue());
        } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h6)).booleanValue() && (L = zzcjuVar.L()) != null) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjk
                @Override // java.lang.Runnable
                public final void run() {
                    zzcir zzcirVar;
                    zzcjl zzcjlVar = new zzcjl(zzcjn.this);
                    zzeiz zzeizVar = L;
                    synchronized (zzeizVar) {
                        zzfrt zzfrtVar = zzeizVar.f;
                        if (zzfrtVar != null && (zzcirVar = zzeizVar.d) != null) {
                            com.google.android.gms.ads.internal.zzt.zzu().g(zzfrtVar, zzcjlVar);
                            zzeizVar.f = null;
                            zzcirVar.g0(null);
                        }
                    }
                }
            });
        } else {
            zzcjuVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean e() {
        return ((zzcju) this.f5204c).e();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean e0() {
        return this.f5204c.e0();
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void f(JSONObject jSONObject, String str) {
        ((zzcju) this.f5204c).b(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final zzbjl f0() {
        return this.f5204c.f0();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final int g() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I4)).booleanValue()) {
            return this.f5204c.getMeasuredWidth();
        }
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void g0(zzeiz zzeizVar) {
        this.f5204c.g0(zzeizVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void goBack() {
        this.f5204c.goBack();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void h() {
        zzcez zzcezVar = this.f;
        zzcezVar.getClass();
        Preconditions.checkMainThread("onDestroy must be called from the UI thread.");
        zzcey zzceyVar = zzcezVar.e;
        if (zzceyVar != null) {
            zzceyVar.i.a();
            zzceq zzceqVar = zzceyVar.k;
            if (zzceqVar != null) {
                zzceqVar.k();
            }
            zzceyVar.d();
            zzcezVar.f5096c.removeView(zzcezVar.e);
            zzcezVar.e = null;
        }
        ((zzcju) this.f5204c).h();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void h0(String str, Predicate predicate) {
        ((zzcju) this.f5204c).h0(str, predicate);
    }

    @Override // com.google.android.gms.internal.ads.zzckh
    public final void i(String str, String str2) {
        ((zzcju) this.f5204c).i(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void j(int i) {
        this.f5204c.j(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void j0() {
        ((zzcju) this.f5204c).f0 = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final String k() {
        return this.f5204c.k();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void k0() {
        this.f5204c.k0();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void l(String str, zzbnn zzbnnVar) {
        ((zzcju) this.f5204c).l(str, zzbnnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void l0(boolean z) {
        this.f5204c.l0(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void loadData(String str, String str2, String str3) {
        this.f5204c.loadData(str, "text/html", str3);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.f5204c.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void loadUrl(String str) {
        this.f5204c.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final Context m() {
        return this.f5204c.m();
    }

    @Override // com.google.android.gms.internal.ads.zzckh
    public final void m0(String str, String str2, boolean z, int i, boolean z2) {
        this.f5204c.m0(str, str2, z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void n(zzcjx zzcjxVar) {
        ((zzcju) this.f5204c).n(zzcjxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void n0(boolean z) {
        ((zzcju) this.f5204c).n0(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbqj
    public final void o(JSONObject jSONObject, String str) {
        ((zzcju) this.f5204c).o(jSONObject, str);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void o0(String str, zzbnn zzbnnVar) {
        this.f5204c.o0(str, zzbnnVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzcir zzcirVar = this.f5204c;
        if (zzcirVar != null) {
            zzcirVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void onPause() {
        zzceq zzceqVar;
        zzcez zzcezVar = this.f;
        zzcezVar.getClass();
        Preconditions.checkMainThread("onPause must be called from the UI thread.");
        zzcey zzceyVar = zzcezVar.e;
        if (zzceyVar != null && (zzceqVar = zzceyVar.k) != null) {
            zzceqVar.m();
        }
        ((zzcju) this.f5204c).onPause();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void onResume() {
        this.f5204c.onResume();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void p() {
        this.f5204c.p();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean p0() {
        return this.f5204c.p0();
    }

    @Override // com.google.android.gms.internal.ads.zzckh
    public final void q(int i, boolean z, boolean z2) {
        this.f5204c.q(i, z, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void q0(boolean z) {
        this.f5204c.q0(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void r() {
        this.f5204c.r();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean r0() {
        return this.f5204c.r0();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final zzbdx s() {
        return this.f5204c.s();
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcir
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f5204c.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzcir
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.f5204c.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.f5204c.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.f5204c.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void t(zzbjl zzbjlVar) {
        ((zzcju) this.f5204c).t(zzbjlVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final boolean u() {
        return ((zzcju) this.f5204c).u();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void v(int i) {
        this.f5204c.v(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final ListenableFuture w() {
        return this.f5204c.w();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void x() {
        this.f5204c.x();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void y() {
        this.f5204c.y();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void z(zzdrr zzdrrVar) {
        ((zzcju) this.f5204c).z(zzdrrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcii
    public final zzfhr zzC() {
        return this.f5204c.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final WebView zzD() {
        return (WebView) this.f5204c;
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzckm
    public final View zzE() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final ArrayList zzF() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt != this.f5204c) {
                arrayList.add(childAt);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final com.google.android.gms.ads.internal.overlay.zzm zzL() {
        return this.f5204c.zzL();
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzckj
    public final zzclb zzN() {
        return this.f5204c.zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final zzejb zzU() {
        return this.f5204c.zzU();
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void zza(String str) {
        ((zzcju) this.f5204c).w0(str);
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final void zzdk() {
        this.f5204c.zzdk();
    }

    @Override // com.google.android.gms.ads.internal.zzn
    public final void zzdl() {
        this.f5204c.zzdl();
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcfk
    public final zzcjx zzh() {
        return this.f5204c.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final zzbgw zzi() {
        return this.f5204c.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcfk
    public final Activity zzj() {
        return this.f5204c.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzcfk
    public final com.google.android.gms.ads.internal.zza zzk() {
        return this.f5204c.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzl() {
        this.f5204c.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final String zzm() {
        return this.f5204c.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final String zzn() {
        return this.f5204c.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final int zzp() {
        return this.f5204c.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final zzbgx zzq() {
        return this.f5204c.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzcir, com.google.android.gms.internal.ads.zzckl, com.google.android.gms.internal.ads.zzcfk
    public final VersionInfoParcel zzs() {
        return this.f5204c.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzv(int i) {
        zzcey zzceyVar = this.f.e;
        if (zzceyVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.n0)).booleanValue()) {
                zzceyVar.f.setBackgroundColor(i);
                zzceyVar.g.setBackgroundColor(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final int zzx() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I4)).booleanValue()) {
            return this.f5204c.getMeasuredHeight();
        }
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzz() {
        this.f5204c.zzz();
    }
}
