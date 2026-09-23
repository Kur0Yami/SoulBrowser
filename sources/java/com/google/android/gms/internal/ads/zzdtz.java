package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdtz {

    /* renamed from: a, reason: collision with root package name */
    public final zzdai f6143a;
    public final zzdip b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdbr f6144c;
    public final zzdce d;
    public final zzdcv e;
    public final zzdfo f;
    public final Executor g;
    public final zzdil h;
    public final zzcrx i;
    public final com.google.android.gms.ads.internal.zzb j;
    public final zzcbk k;
    public final zzayq l;
    public final zzdff m;
    public final zzehu n;
    public final zzfpi o;
    public final zzdxe p;
    public final zzcra q;
    public final zzduf r;
    public final zzdyh s;
    public final zzczj t;
    public final zzcze u;

    public zzdtz(zzdai zzdaiVar, zzdbr zzdbrVar, zzdce zzdceVar, zzdcv zzdcvVar, zzdfo zzdfoVar, Executor executor, zzdil zzdilVar, zzcrx zzcrxVar, com.google.android.gms.ads.internal.zzb zzbVar, zzcbk zzcbkVar, zzayq zzayqVar, zzdff zzdffVar, zzehu zzehuVar, zzfpi zzfpiVar, zzdxe zzdxeVar, zzdip zzdipVar, zzcra zzcraVar, zzduf zzdufVar, zzdyh zzdyhVar, zzczj zzczjVar, zzcze zzczeVar) {
        this.f6143a = zzdaiVar;
        this.f6144c = zzdbrVar;
        this.d = zzdceVar;
        this.e = zzdcvVar;
        this.f = zzdfoVar;
        this.g = executor;
        this.h = zzdilVar;
        this.i = zzcrxVar;
        this.j = zzbVar;
        this.k = zzcbkVar;
        this.l = zzayqVar;
        this.m = zzdffVar;
        this.n = zzehuVar;
        this.o = zzfpiVar;
        this.p = zzdxeVar;
        this.b = zzdipVar;
        this.q = zzcraVar;
        this.r = zzdufVar;
        this.s = zzdyhVar;
        this.t = zzczjVar;
        this.u = zzczeVar;
    }

    public static final zzcdt b(zzcir zzcirVar, String str, String str2, final Bundle bundle, zzfno zzfnoVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.L2)).booleanValue()) {
            androidx.work.impl.workers.a.z("rendering-webview-load-html-start", bundle);
        }
        final zzcdt zzcdtVar = new zzcdt();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ha)).booleanValue()) {
            zzfne o = a.o(zzcirVar.getContext(), 112);
            o.zza();
            zzfnn.c(zzcdtVar, zzfnoVar, o, false);
        }
        zzcirVar.D().k = new zzckn() { // from class: com.google.android.gms.internal.ads.zzdtx
            @Override // com.google.android.gms.internal.ads.zzckn
            public final void a(String str3, int i, String str4, boolean z) {
                zzcdt zzcdtVar2 = zzcdtVar;
                if (z) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.L2)).booleanValue()) {
                        androidx.work.impl.workers.a.z("rendering-webview-load-html-end", bundle);
                    }
                    zzcdtVar2.a(null);
                    return;
                }
                int length = String.valueOf(i).length();
                StringBuilder sb = new StringBuilder(length + 55 + String.valueOf(str3).length() + 15 + String.valueOf(str4).length());
                sb.append("Ad Web View failed to load. Error code: ");
                sb.append(i);
                sb.append(", Description: ");
                sb.append(str3);
                zzcdtVar2.b(new Exception(android.support.v4.media.a.p(sb, ", Failing URL: ", str4)));
            }
        };
        zzcirVar.F(str, str2);
        return zzcdtVar;
    }

    public final void a(final zzcir zzcirVar, boolean z, zzbnq zzbnqVar, Bundle bundle) {
        zzayl zzaylVar;
        zzbgb zzbgbVar = zzbgk.L2;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
            androidx.work.impl.workers.a.z("rendering-configure-webview-start", bundle);
        }
        zzcirVar.D().v(new com.google.android.gms.ads.internal.client.zza() { // from class: com.google.android.gms.internal.ads.zzdty
            @Override // com.google.android.gms.ads.internal.client.zza
            public final /* synthetic */ void onAdClicked() {
                zzdtz.this.f6143a.onAdClicked();
            }
        }, this.d, this.e, new zzbmf() { // from class: com.google.android.gms.internal.ads.zzdtr
            @Override // com.google.android.gms.internal.ads.zzbmf
            public final /* synthetic */ void zzb(String str, String str2) {
                zzdtz.this.f.zzb(str, str2);
            }
        }, new com.google.android.gms.ads.internal.overlay.zzad() { // from class: com.google.android.gms.internal.ads.zzdts
            @Override // com.google.android.gms.ads.internal.overlay.zzad
            public final /* synthetic */ void zzl() {
                zzdtz.this.f6144c.t0();
            }
        }, z, zzbnqVar, this.j, new zzdtq(this), this.k, this.n, this.o, this.p, null, this.b, null, null, null, this.q, this.s, this.t, this.u);
        zzcirVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.internal.ads.zzdtt
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                zzdtz zzdtzVar = zzdtz.this;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.tb)).booleanValue() && motionEvent != null && motionEvent.getAction() == 0) {
                    zzdtzVar.r.f6152a = motionEvent;
                }
                zzdtzVar.j.zza();
                if (view != null) {
                    view.performClick();
                    return false;
                }
                return false;
            }
        });
        zzcirVar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzdtu
            @Override // android.view.View.OnClickListener
            public final /* synthetic */ void onClick(View view) {
                zzdtz.this.j.zza();
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o3)).booleanValue() && (zzaylVar = this.l.b) != null) {
            zzaylVar.zzh(zzcirVar.zzE());
        }
        zzdil zzdilVar = this.h;
        Executor executor = this.g;
        zzdilVar.m0(zzcirVar, executor);
        zzdilVar.m0(new zzbck() { // from class: com.google.android.gms.internal.ads.zzdtv
            @Override // com.google.android.gms.internal.ads.zzbck
            public final /* synthetic */ void Q(zzbcj zzbcjVar) {
                Rect rect = zzbcjVar.d;
                zzcir.this.D().q(rect.left, rect.top);
            }
        }, executor);
        zzdilVar.t0(zzcirVar.zzE());
        zzcirVar.l("/trackActiveViewUnit", new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdtw
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final void a(Map map, Object obj) {
                zzdtz zzdtzVar = zzdtz.this;
                zzcir zzcirVar2 = zzcirVar;
                zzcrx zzcrxVar = zzdtzVar.i;
                synchronized (zzcrxVar) {
                    zzcrxVar.g.add(zzcirVar2);
                    zzcrs zzcrsVar = zzcrxVar.f5420c;
                    zzcirVar2.l("/updateActiveView", zzcrsVar.e);
                    zzcirVar2.l("/untrackActiveViewUnit", zzcrsVar.f);
                }
            }
        });
        zzcrx zzcrxVar = this.i;
        zzcrxVar.getClass();
        zzcrxVar.n = new WeakReference(zzcirVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
            androidx.work.impl.workers.a.z("rendering-configure-webview-end", bundle);
        }
    }
}
