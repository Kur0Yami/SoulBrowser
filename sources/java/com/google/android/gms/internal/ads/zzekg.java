package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzekg implements zzejg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcuh f6589a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdua f6590c;
    public final zzfik d;
    public final Executor e;
    public final zzgpr f;
    public final zzdwy g;

    public zzekg(zzcuh zzcuhVar, Context context, Executor executor, zzdua zzduaVar, zzfik zzfikVar, zzgpr zzgprVar, zzdwy zzdwyVar) {
        this.b = context;
        this.f6589a = zzcuhVar;
        this.e = executor;
        this.f6590c = zzduaVar;
        this.d = zzfikVar;
        this.f = zzgprVar;
        this.g = zzdwyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(final zzfic zzficVar, final zzfhr zzfhrVar) {
        return zzgym.h(zzgyq.f, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzekf
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                View zzdudVar;
                zzfhs zzfhsVar;
                final zzekg zzekgVar = zzekg.this;
                Executor executor = zzekgVar.e;
                zzdwy zzdwyVar = zzekgVar.g;
                zzbgb zzbgbVar = zzbgk.L2;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-webview-creation-start", zzdwyVar.e);
                }
                Context context = zzekgVar.b;
                zzfhr zzfhrVar2 = zzfhrVar;
                com.google.android.gms.ads.internal.client.zzr a2 = zzfiq.a(context, zzfhrVar2.u);
                zzdua zzduaVar = zzekgVar.f6590c;
                zzfic zzficVar2 = zzficVar;
                final zzcir a3 = zzduaVar.a(a2, zzfhrVar2, zzficVar2.b.b);
                a3.c0(zzfhrVar2.W);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y8)).booleanValue() && zzfhrVar2.g0) {
                    zzdudVar = zzcuw.a(context, a3.zzE(), zzfhrVar2);
                } else {
                    zzdudVar = new zzdud(context, a3.zzE(), (com.google.android.gms.ads.internal.util.zzat) zzekgVar.f.apply(zzfhrVar2));
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-webview-creation-end", zzdwyVar.e);
                }
                zzcuh zzcuhVar = zzekgVar.f6589a;
                zzcwa zzcwaVar = new zzcwa(zzficVar2, zzfhrVar2, null);
                zzcvi zzcviVar = new zzcvi() { // from class: com.google.android.gms.internal.ads.zzekb
                    @Override // com.google.android.gms.internal.ads.zzcvi
                    public final /* synthetic */ com.google.android.gms.ads.internal.client.zzed zza() {
                        return zzcir.this.zzh();
                    }
                };
                if (a2.zzi) {
                    zzfhsVar = new zzfhs(-3, 0, true);
                } else {
                    zzfhsVar = new zzfhs(a2.zze, a2.zzb, false);
                }
                final zzctd d = zzcuhVar.d(zzcwaVar, new zzctj(zzdudVar, a3, zzcviVar, zzfhsVar));
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-ad-component-creation-end", zzdwyVar.e);
                }
                d.h().a(a3, false, null, zzdwyVar.e);
                zzdbc c2 = d.c();
                zzdbe zzdbeVar = new zzdbe() { // from class: com.google.android.gms.internal.ads.zzekc
                    @Override // com.google.android.gms.internal.ads.zzdbe
                    public final /* synthetic */ void n() {
                        zzcir zzcirVar = zzcir.this;
                        if (zzcirVar.D() != null) {
                            zzcirVar.D().w0();
                        }
                    }
                };
                zzgyw zzgywVar = zzcdo.g;
                c2.m0(zzdbeVar, zzgywVar);
                zzfhw zzfhwVar = zzfhrVar2.s;
                String str = zzfhwVar.f7374a;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h6)).booleanValue() && ((zzeiz) ((zzcnb) d).l.zzb()).a()) {
                    str = zzcki.a(str, zzcki.b(zzfhrVar2));
                }
                d.h();
                zzcdt b = zzdtz.b(a3, zzfhwVar.b, str, zzdwyVar.e, zzcuhVar.c());
                zzgzf zzgzfVar = b.f5072c;
                if (zzfhrVar2.M) {
                    zzgzfVar.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeka
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzcir.this.E();
                        }
                    }, executor);
                }
                zzgzfVar.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzekd
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzcir zzcirVar = a3;
                        zzcirVar.k0();
                        zzfik zzfikVar = zzekg.this.d;
                        zzcjx zzh = zzcirVar.zzh();
                        com.google.android.gms.ads.internal.client.zzga zzgaVar = zzfikVar.f7390a;
                        if (zzgaVar != null && zzh != null) {
                            zzh.c5(zzgaVar);
                        }
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N1)).booleanValue() && !zzcirVar.isAttachedToWindow()) {
                            zzcirVar.onPause();
                            zzcirVar.j0();
                        }
                    }
                }, executor);
                return zzgym.i(b, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzeke
                    @Override // com.google.android.gms.internal.ads.zzgpr
                    public final /* synthetic */ Object apply(Object obj2) {
                        return zzctd.this.g();
                    }
                }, zzgywVar);
            }
        }, this.e);
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final boolean b(zzfic zzficVar, zzfhr zzfhrVar) {
        zzfhw zzfhwVar = zzfhrVar.s;
        if (zzfhwVar != null && zzfhwVar.f7374a != null) {
            return true;
        }
        return false;
    }
}
