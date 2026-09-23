package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public interface zzcir extends com.google.android.gms.ads.internal.client.zza, zzdir, zzcii, zzbqj, zzcjy, zzckd, zzbqv, zzbck, zzckh, com.google.android.gms.ads.internal.zzn, zzckk, zzckl, zzcfk, zzckm {
    void A(boolean z);

    void C(com.google.android.gms.ads.internal.overlay.zzm zzmVar);

    zzcjc D();

    void E();

    void F(String str, String str2);

    void G(Context context);

    com.google.android.gms.ads.internal.overlay.zzm H();

    void I(com.google.android.gms.ads.internal.overlay.zzm zzmVar);

    zzeiz L();

    void M(boolean z);

    void O(zzejb zzejbVar);

    void R();

    void T(zzfhr zzfhrVar, zzfhu zzfhuVar);

    void V(int i);

    boolean W();

    void X(zzbdx zzbdxVar);

    zzfio Y();

    void a0(zzclb zzclbVar);

    boolean b0(int i, boolean z);

    @Override // com.google.android.gms.internal.ads.zzckk
    zzayq c();

    void c0(boolean z);

    boolean canGoBack();

    @Override // com.google.android.gms.internal.ads.zzcjy
    zzfhu d();

    void destroy();

    boolean e();

    boolean e0();

    zzbjl f0();

    void g0(zzeiz zzeizVar);

    @Override // com.google.android.gms.internal.ads.zzckd, com.google.android.gms.internal.ads.zzcfk
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    int getWidth();

    void goBack();

    void h();

    void h0(String str, Predicate predicate);

    boolean isAttachedToWindow();

    void j(int i);

    void j0();

    String k();

    void k0();

    void l(String str, zzbnn zzbnnVar);

    void l0(boolean z);

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    Context m();

    void measure(int i, int i2);

    void n0(boolean z);

    void o0(String str, zzbnn zzbnnVar);

    void onPause();

    void onResume();

    void p();

    boolean p0();

    void q0(boolean z);

    void r();

    boolean r0();

    zzbdx s();

    @Override // com.google.android.gms.internal.ads.zzcfk
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void t(zzbjl zzbjlVar);

    boolean u();

    ListenableFuture w();

    void x();

    void y();

    void z(zzdrr zzdrrVar);

    @Override // com.google.android.gms.internal.ads.zzcii
    zzfhr zzC();

    WebView zzD();

    @Override // com.google.android.gms.internal.ads.zzckm
    View zzE();

    ArrayList zzF();

    com.google.android.gms.ads.internal.overlay.zzm zzL();

    @Override // com.google.android.gms.internal.ads.zzckj
    zzclb zzN();

    zzejb zzU();

    @Override // com.google.android.gms.internal.ads.zzcfk
    zzcjx zzh();

    @Override // com.google.android.gms.internal.ads.zzcfk
    Activity zzj();

    @Override // com.google.android.gms.internal.ads.zzcfk
    com.google.android.gms.ads.internal.zza zzk();

    zzbgx zzq();

    @Override // com.google.android.gms.internal.ads.zzckl, com.google.android.gms.internal.ads.zzcfk
    VersionInfoParcel zzs();
}
