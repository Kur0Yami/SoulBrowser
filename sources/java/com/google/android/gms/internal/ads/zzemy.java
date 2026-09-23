package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzemy implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public final zzfmu f6703a;
    public final zzdam b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfpe f6704c;
    public final zzfpi d;
    public final Executor e;
    public final ScheduledExecutorService f;
    public final zzcvn g;
    public final zzemr h;
    public final zzejl i;
    public final Context j;
    public final zzfno k;
    public final zzemb l;
    public final zzdwy m;

    public zzemy(Context context, zzfmu zzfmuVar, zzemr zzemrVar, zzdam zzdamVar, zzfpe zzfpeVar, zzfpi zzfpiVar, zzcvn zzcvnVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzejl zzejlVar, zzfno zzfnoVar, zzemb zzembVar, zzdwy zzdwyVar) {
        this.j = context;
        this.f6703a = zzfmuVar;
        this.h = zzemrVar;
        this.b = zzdamVar;
        this.f6704c = zzfpeVar;
        this.d = zzfpiVar;
        this.g = zzcvnVar;
        this.e = executor;
        this.f = scheduledExecutorService;
        this.i = zzejlVar;
        this.k = zzfnoVar;
        this.l = zzembVar;
        this.m = zzdwyVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0039, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.u6)).booleanValue() == false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0063 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(com.google.android.gms.internal.ads.zzfic r5) {
        /*
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.v6
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            java.lang.String r1 = "No fill."
            r2 = 1
            if (r2 == r0) goto L18
            java.lang.String r0 = "No ad config."
            goto L19
        L18:
            r0 = r1
        L19:
            com.google.android.gms.internal.ads.zzfib r5 = r5.b
            com.google.android.gms.internal.ads.zzfhu r5 = r5.b
            int r2 = r5.f
            if (r2 == 0) goto L5b
            r3 = 200(0xc8, float:2.8E-43)
            r4 = 300(0x12c, float:4.2E-43)
            if (r2 < r3) goto L3c
            if (r2 >= r4) goto L3c
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.u6
            com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.a(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L5b
            goto L5c
        L3c:
            if (r2 < r4) goto L45
            r0 = 400(0x190, float:5.6E-43)
            if (r2 >= r0) goto L45
            java.lang.String r1 = "No location header to follow redirect or too many redirects."
            goto L5c
        L45:
            java.lang.String r0 = java.lang.String.valueOf(r2)
            int r0 = r0.length()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            int r0 = r0 + 35
            r1.<init>(r0)
            java.lang.String r0 = "Received error HTTP response code: "
            java.lang.String r1 = androidx.work.impl.workers.a.r(r2, r0, r1)
            goto L5c
        L5b:
            r1 = r0
        L5c:
            com.google.android.gms.internal.ads.zzfht r5 = r5.j
            if (r5 == 0) goto L63
            java.lang.String r5 = r5.f7371a
            return r5
        L63:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzemy.a(com.google.android.gms.internal.ads.zzfic):java.lang.String");
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final ListenableFuture zza(Object obj) {
        int i;
        Bundle bundle;
        final zzemy zzemyVar = this;
        final zzfic zzficVar = (zzfic) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue() && (bundle = zzficVar.b.d) != null) {
            zzemyVar.m.e.putAll(bundle);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.J2)).booleanValue()) {
            androidx.work.impl.workers.a.z("rendering-start", zzemyVar.m.e);
        }
        String a2 = a(zzficVar);
        zzejl zzejlVar = zzemyVar.i;
        zzfib zzfibVar = zzficVar.b;
        zzfhu zzfhuVar = zzfibVar.b;
        zzejlVar.d = zzfhuVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z9)).booleanValue() && (i = zzfhuVar.f) != 0 && (i < 200 || i >= 300)) {
            return zzgym.b(new zzebr(3, a2));
        }
        String str = zzfhuVar.q;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t4)).booleanValue() && !TextUtils.isEmpty(str)) {
            List list = zzfibVar.f7381a;
            synchronized (zzejlVar) {
                Map map = zzejlVar.b;
                if (map.containsKey(str)) {
                    com.google.android.gms.ads.internal.client.zzv zzvVar = (com.google.android.gms.ads.internal.client.zzv) map.get(str);
                    List list2 = zzejlVar.f6561a;
                    int indexOf = list2.indexOf(zzvVar);
                    try {
                        list2.remove(indexOf);
                    } catch (IndexOutOfBoundsException e) {
                        com.google.android.gms.ads.internal.zzt.zzh().f("AdapterResponseInfoCollector.replaceAdapterResponseInfoEntry", e);
                    }
                    zzejlVar.b.remove(str);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        zzejlVar.b((zzfhr) it.next(), indexOf);
                        indexOf++;
                    }
                }
            }
        } else {
            for (zzfhr zzfhrVar : zzfibVar.f7381a) {
                zzejlVar.b(zzfhrVar, zzejlVar.f6561a.size());
                Iterator it2 = zzfhrVar.f7367a.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        zzejg a3 = zzemyVar.g.a(zzfhrVar.b, (String) it2.next());
                        if (a3 == null || !a3.b(zzficVar, zzfhrVar)) {
                        }
                    } else {
                        zzejlVar.c(zzfhrVar, 0L, zzfjm.d(1, null, null), false);
                        break;
                    }
                }
            }
        }
        zzdam zzdamVar = zzemyVar.b;
        zzcre zzcreVar = new zzcre(zzficVar, zzemyVar.d, zzemyVar.f6704c);
        Executor executor = zzemyVar.e;
        zzdamVar.m0(zzcreVar, executor);
        if (zzfhuVar.r > 1) {
            return zzemyVar.l.a(zzficVar);
        }
        String a4 = a(zzficVar);
        zzfmu zzfmuVar = zzemyVar.f6703a;
        zzfmo zzfmoVar = zzfmo.RENDER_CONFIG_INIT;
        Objects.requireNonNull(zzfmuVar);
        zzfmb d = new zzfml(zzfmuVar, zzfmoVar, null, zzfmm.d, Collections.EMPTY_LIST, zzgym.b(new zzebr(3, a4))).d();
        final zzemr zzemrVar = zzemyVar.h;
        zzemrVar.a();
        int i2 = 0;
        for (final zzfhr zzfhrVar2 : zzfibVar.f7381a) {
            Iterator it3 = zzfhrVar2.f7367a.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                String str2 = (String) it3.next();
                final zzejg a5 = zzemyVar.g.a(zzfhrVar2.b, str2);
                if (a5 != null && a5.b(zzficVar, zzfhrVar2)) {
                    zzfml a6 = zzfmuVar.a(d, zzfmo.RENDER_CONFIG_WATERFALL);
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 15 + String.valueOf(str2).length());
                    sb.append("render-config-");
                    sb.append(i2);
                    sb.append("-");
                    sb.append(str2);
                    zzfml zzfmlVar = new zzfml(a6.f, a6.f7479a, sb.toString(), a6.f7480c, a6.d, a6.e);
                    zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.internal.ads.zzemx
                        @Override // com.google.android.gms.internal.ads.zzgxu
                        public final ListenableFuture zza(Object obj2) {
                            zzemy zzemyVar2 = zzemy.this;
                            zzfne o = a.o(zzemyVar2.j, 12);
                            zzfhr zzfhrVar3 = zzfhrVar2;
                            o.zzi(zzfhrVar3.E);
                            o.zza();
                            zzejg zzejgVar = a5;
                            zzfic zzficVar2 = zzficVar;
                            ListenableFuture g = zzgym.g(zzejgVar.a(zzficVar2, zzfhrVar3), zzfhrVar3.R, TimeUnit.MILLISECONDS, zzemyVar2.f);
                            zzemyVar2.h.d(zzficVar2, zzfhrVar3, g, zzemyVar2.f6704c);
                            zzfnn.c(g, zzemyVar2.k, o, false);
                            return g;
                        }
                    };
                    zzfmm zzfmmVar = zzfmlVar.f;
                    d = new zzfml(zzfmmVar, zzfmlVar.f7479a, zzfmlVar.b, zzfmlVar.f7480c, zzfmlVar.d, zzgym.f(zzfmlVar.e, Throwable.class, zzgxuVar, zzfmmVar.f7481a)).d();
                    break;
                }
                zzemyVar = this;
            }
            i2++;
            zzemyVar = this;
        }
        d.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzemw
            @Override // java.lang.Runnable
            public final void run() {
                zzemr zzemrVar2 = zzemr.this;
                synchronized (zzemrVar2) {
                    zzemrVar2.h = zzemrVar2.f6694a.elapsedRealtime() - zzemrVar2.i;
                }
            }
        }, executor);
        return d;
    }
}
