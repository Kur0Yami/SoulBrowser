package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdph {

    /* renamed from: a, reason: collision with root package name */
    public final zzdua f5993a;
    public final zzdsp b;

    /* renamed from: c, reason: collision with root package name */
    public ViewTreeObserver.OnScrollChangedListener f5994c = null;

    public zzdph(zzdua zzduaVar, zzdsp zzdspVar) {
        this.f5993a = zzduaVar;
        this.b = zzdspVar;
    }

    public final View a(final FrameLayout frameLayout, final WindowManager windowManager) {
        zzcir a2 = this.f5993a.a(com.google.android.gms.ads.internal.client.zzr.zzb(), null, null);
        a2.zzE().setVisibility(4);
        a2.zzE().setContentDescription("policy_validator");
        a2.l("/sendMessageToSdk", new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdpg
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final /* synthetic */ void a(Map map, Object obj) {
                zzdph.this.b.d(map);
            }
        });
        a2.l("/hideValidatorOverlay", new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdpb
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final /* synthetic */ void a(Map map, Object obj) {
                zzcir zzcirVar = (zzcir) obj;
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Hide native ad policy validator overlay.");
                zzcirVar.zzE().setVisibility(8);
                if (zzcirVar.zzE().getWindowToken() != null) {
                    windowManager.removeView(zzcirVar.zzE());
                }
                zzcirVar.destroy();
                ViewTreeObserver viewTreeObserver = frameLayout.getViewTreeObserver();
                zzdph zzdphVar = this;
                if (zzdphVar.f5994c != null && viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(zzdphVar.f5994c);
                }
            }
        });
        a2.l("/open", new zzboa(null, null, null, null, null, null));
        WeakReference weakReference = new WeakReference(a2);
        zzbnn zzbnnVar = new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdpc
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final void a(final Map map, Object obj) {
                int i;
                int i2;
                final zzcir zzcirVar = (zzcir) obj;
                zzcjc D = zzcirVar.D();
                final zzdph zzdphVar = this;
                D.k = new zzckn() { // from class: com.google.android.gms.internal.ads.zzdpf
                    @Override // com.google.android.gms.internal.ads.zzckn
                    public final /* synthetic */ void a(String str, int i3, String str2, boolean z) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("messageType", "validatorHtmlLoaded");
                        hashMap.put("id", (String) map.get("id"));
                        zzdph.this.b.d(hashMap);
                    }
                };
                if (map != null) {
                    final View view = frameLayout;
                    Context context = view.getContext();
                    String str = (String) map.get("validator_width");
                    int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.n9)).intValue();
                    try {
                        intValue = Integer.parseInt(str);
                    } catch (NumberFormatException unused) {
                    }
                    com.google.android.gms.ads.internal.client.zzbb.zza();
                    int zzC = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, intValue);
                    String str2 = (String) map.get("validator_height");
                    int intValue2 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o9)).intValue();
                    try {
                        intValue2 = Integer.parseInt(str2);
                    } catch (NumberFormatException unused2) {
                    }
                    com.google.android.gms.ads.internal.client.zzbb.zza();
                    int zzC2 = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, intValue2);
                    int i3 = 0;
                    try {
                        i = Integer.parseInt((String) map.get("validator_x"));
                    } catch (NumberFormatException unused3) {
                        i = 0;
                    }
                    com.google.android.gms.ads.internal.client.zzbb.zza();
                    int zzC3 = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i);
                    try {
                        i3 = Integer.parseInt((String) map.get("validator_y"));
                    } catch (NumberFormatException unused4) {
                    }
                    com.google.android.gms.ads.internal.client.zzbb.zza();
                    int zzC4 = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, i3);
                    zzcirVar.a0(new zzclb(1, zzC, zzC2));
                    try {
                        zzcirVar.zzD().getSettings().setUseWideViewPort(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p9)).booleanValue());
                        zzcirVar.zzD().getSettings().setLoadWithOverviewMode(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q9)).booleanValue());
                    } catch (NullPointerException unused5) {
                    }
                    final WindowManager.LayoutParams zzk = com.google.android.gms.ads.internal.util.zzbs.zzk();
                    zzk.x = zzC3;
                    zzk.y = zzC4;
                    View zzE = zzcirVar.zzE();
                    final WindowManager windowManager2 = windowManager;
                    windowManager2.updateViewLayout(zzE, zzk);
                    final String str3 = (String) map.get("orientation");
                    Rect rect = new Rect();
                    if (view.getGlobalVisibleRect(rect)) {
                        if (!"1".equals(str3) && !"2".equals(str3)) {
                            i2 = rect.top;
                        } else {
                            i2 = rect.bottom;
                        }
                        final int i4 = i2 - zzC4;
                        zzdphVar.f5994c = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.google.android.gms.internal.ads.zzdpe
                            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                            public final /* synthetic */ void onScrollChanged() {
                                Rect rect2 = new Rect();
                                if (view.getGlobalVisibleRect(rect2)) {
                                    zzcir zzcirVar2 = zzcirVar;
                                    if (zzcirVar2.zzE().getWindowToken() != null) {
                                        String str4 = str3;
                                        boolean equals = "1".equals(str4);
                                        int i5 = i4;
                                        WindowManager.LayoutParams layoutParams = zzk;
                                        if (!equals && !"2".equals(str4)) {
                                            layoutParams.y = rect2.top - i5;
                                        } else {
                                            layoutParams.y = rect2.bottom - i5;
                                        }
                                        windowManager2.updateViewLayout(zzcirVar2.zzE(), layoutParams);
                                    }
                                }
                            }
                        };
                        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                            viewTreeObserver.addOnScrollChangedListener(zzdphVar.f5994c);
                        }
                    }
                    String str4 = (String) map.get("overlay_url");
                    if (!TextUtils.isEmpty(str4)) {
                        zzcirVar.loadUrl(str4);
                    }
                }
            }
        };
        zzdsp zzdspVar = this.b;
        zzdspVar.b("/loadNativeAdPolicyViolations", new zzdso(zzdspVar, weakReference, "/loadNativeAdPolicyViolations", zzbnnVar));
        zzdspVar.b("/showValidatorOverlay", new zzdso(zzdspVar, new WeakReference(a2), "/showValidatorOverlay", zzdpd.f5989a));
        return a2.zzE();
    }
}
