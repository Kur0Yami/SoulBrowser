package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzelc implements zzejg {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6626a;
    public final zzdua b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdkz f6627c;
    public final zzfik d;
    public final Executor e;
    public final VersionInfoParcel f;
    public final zzbnq g;
    public final boolean h = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ka)).booleanValue();
    public final zzeif i;
    public final zzdwy j;
    public final zzdxe k;

    public zzelc(Context context, VersionInfoParcel versionInfoParcel, zzfik zzfikVar, Executor executor, zzdkz zzdkzVar, zzdua zzduaVar, zzbnq zzbnqVar, zzeif zzeifVar, zzdwy zzdwyVar, zzdxe zzdxeVar) {
        this.f6626a = context;
        this.d = zzfikVar;
        this.f6627c = zzdkzVar;
        this.e = executor;
        this.f = versionInfoParcel;
        this.b = zzduaVar;
        this.g = zzbnqVar;
        this.i = zzeifVar;
        this.j = zzdwyVar;
        this.k = zzdxeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzdue, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.lang.Runnable] */
    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(final zzfic zzficVar, final zzfhr zzfhrVar) {
        final ?? obj = new Object();
        ListenableFuture listenableFuture = zzgyq.f;
        zzgxu zzgxuVar = new zzgxu(zzfhrVar, zzficVar, obj) { // from class: com.google.android.gms.internal.ads.zzekz
            public final /* synthetic */ zzfhr b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ zzfic f6621c;

            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj2) {
                zzbnq zzbnqVar;
                zzelc zzelcVar = zzelc.this;
                zzdwy zzdwyVar = zzelcVar.j;
                zzbgb zzbgbVar = zzbgk.L2;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-webview-creation-start", zzdwyVar.e);
                }
                zzdua zzduaVar = zzelcVar.b;
                zzfik zzfikVar = zzelcVar.d;
                zzfic zzficVar2 = this.f6621c;
                zzfhu zzfhuVar = zzficVar2.b.b;
                com.google.android.gms.ads.internal.client.zzr zzrVar = zzfikVar.f;
                final zzfhr zzfhrVar2 = this.b;
                final zzcir a2 = zzduaVar.a(zzrVar, zzfhrVar2, zzfhuVar);
                a2.c0(zzfhrVar2.W);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-webview-creation-end", zzdwyVar.e);
                }
                zzcdt zzcdtVar = new zzcdt();
                zzdkz zzdkzVar = zzelcVar.f6627c;
                zzcwa zzcwaVar = new zzcwa(zzficVar2, zzfhrVar2, null);
                Context context = zzelcVar.f6626a;
                VersionInfoParcel versionInfoParcel = zzelcVar.f;
                boolean z = zzelcVar.h;
                zzbnq zzbnqVar2 = zzelcVar.g;
                final zzdjt d = zzdkzVar.d(zzcwaVar, new zzdjw(new zzela(context, versionInfoParcel, zzcdtVar, zzfhrVar2, a2, zzfikVar, z, zzbnqVar2, zzelcVar.i, zzelcVar.k), a2));
                zzcdtVar.a(d);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-ad-component-creation-end", zzdwyVar.e);
                }
                d.c().m0(new zzdbe() { // from class: com.google.android.gms.internal.ads.zzekx
                    @Override // com.google.android.gms.internal.ads.zzdbe
                    public final /* synthetic */ void n() {
                        zzcir zzcirVar = zzcir.this;
                        if (zzcirVar.D() != null) {
                            zzcirVar.D().w0();
                        }
                    }
                }, zzcdo.g);
                zzfhw zzfhwVar = zzfhrVar2.s;
                String str = zzfhwVar.f7374a;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h6)).booleanValue() && ((zzeiz) ((zzcnm) d).h.zzb()).a()) {
                    str = zzcki.a(str, zzcki.b(zzfhrVar2));
                }
                zzdtz i = d.i();
                if (true != z) {
                    zzbnqVar = null;
                } else {
                    zzbnqVar = zzbnqVar2;
                }
                i.a(a2, true, zzbnqVar, zzdwyVar.e);
                d.i();
                return zzgym.i(zzdtz.b(a2, zzfhwVar.b, str, zzdwyVar.e, zzdkzVar.c()), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzeky
                    @Override // com.google.android.gms.internal.ads.zzgpr
                    public final /* synthetic */ Object apply(Object obj3) {
                        boolean z2 = zzfhrVar2.M;
                        zzcir zzcirVar = zzcir.this;
                        if (z2) {
                            zzcirVar.E();
                        }
                        zzcirVar.k0();
                        zzcirVar.onPause();
                        return d.g();
                    }
                }, zzelcVar.e);
            }
        };
        Executor executor = this.e;
        ListenableFuture h = zzgym.h(listenableFuture, zzgxuVar, executor);
        ((zzgxf) h).k(new Object(), executor);
        return h;
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
