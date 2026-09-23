package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdrm {

    /* renamed from: a, reason: collision with root package name */
    public final zzfik f6067a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdua f6068c;
    public final zzdsv d;
    public final Context e;
    public final zzdxe f;
    public final zzfpi g;
    public final zzehu h;
    public final zzdwy i;
    public final zzdyh j;

    public zzdrm(zzfik zzfikVar, Executor executor, zzdua zzduaVar, Context context, zzdxe zzdxeVar, zzfpi zzfpiVar, zzehu zzehuVar, zzdsv zzdsvVar, zzdwy zzdwyVar, zzdyh zzdyhVar) {
        this.f6067a = zzfikVar;
        this.b = executor;
        this.f6068c = zzduaVar;
        this.e = context;
        this.f = zzdxeVar;
        this.g = zzfpiVar;
        this.h = zzehuVar;
        this.d = zzdsvVar;
        this.i = zzdwyVar;
        this.j = zzdyhVar;
    }

    public static final void b(zzcir zzcirVar) {
        zzcirVar.l("/videoClicked", zzbnm.h);
        zzcjc D = zzcirVar.D();
        synchronized (D.h) {
            D.v = true;
        }
        zzcirVar.l("/getNativeAdViewSignals", zzbnm.s);
        zzcirVar.l("/getNativeClickMeta", zzbnm.t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzbnn, java.lang.Object] */
    public final void a(zzcir zzcirVar, com.google.android.gms.ads.internal.zzb zzbVar, zzcbk zzcbkVar) {
        zzdyh zzdyhVar;
        com.google.android.gms.ads.internal.zzb zzbVar2;
        b(zzcirVar);
        zzcirVar.l("/video", zzbnm.l);
        zzcirVar.l("/videoMeta", zzbnm.m);
        zzcirVar.l("/precache", new Object());
        zzcirVar.l("/delayPageLoaded", zzbnm.p);
        zzcirVar.l("/instrument", zzbnm.n);
        zzcirVar.l("/log", zzbnm.g);
        zzcirVar.l("/click", new zzbnh(null, 0 == true ? 1 : 0));
        if (this.f6067a.b != null) {
            zzcirVar.D().o(true);
            if (true != ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.af)).booleanValue()) {
                zzbVar2 = null;
            } else {
                zzbVar2 = zzbVar;
            }
            zzcirVar.l("/open", new zzboa(zzbVar2, null, null, null, null, null));
        } else {
            zzcirVar.D().o(false);
        }
        if (com.google.android.gms.ads.internal.zzt.zzD().a(zzcirVar.getContext())) {
            Map hashMap = new HashMap();
            if (zzcirVar.zzC() != null) {
                hashMap = zzcirVar.zzC().w0;
            }
            zzcirVar.l("/logScionEvent", new zzbnt(zzcirVar.getContext(), hashMap));
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.af)).booleanValue()) {
            zzcirVar.D().A = zzbVar;
            zzcirVar.D().C = zzcbkVar;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K8)).booleanValue() && (zzdyhVar = this.j) != null) {
            zzcirVar.l("/onDeviceStorageEvent", new zzbnv(zzdyhVar));
        }
    }
}
