package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzejr implements zzejg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcsq f6568a;
    public final zzdua b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfik f6569c;
    public final Executor d;
    public final VersionInfoParcel e;
    public final zzbnq f;
    public final boolean g = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ka)).booleanValue();
    public final zzeif h;
    public final zzdwy i;
    public final zzdxe j;

    public zzejr(zzcsq zzcsqVar, Executor executor, zzdua zzduaVar, zzfik zzfikVar, VersionInfoParcel versionInfoParcel, zzbnq zzbnqVar, zzeif zzeifVar, zzdwy zzdwyVar, zzdxe zzdxeVar) {
        this.f6568a = zzcsqVar;
        this.d = executor;
        this.b = zzduaVar;
        this.f6569c = zzfikVar;
        this.e = versionInfoParcel;
        this.f = zzbnqVar;
        this.h = zzeifVar;
        this.i = zzdwyVar;
        this.j = zzdxeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzdue, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.lang.Runnable] */
    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(final zzfic zzficVar, final zzfhr zzfhrVar) {
        final ?? obj = new Object();
        ListenableFuture listenableFuture = zzgyq.f;
        zzgxu zzgxuVar = new zzgxu(zzfhrVar, zzficVar, obj) { // from class: com.google.android.gms.internal.ads.zzejp
            public final /* synthetic */ zzfhr b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ zzfic f6567c;

            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj2) {
                zzbnq zzbnqVar;
                zzejr zzejrVar = zzejr.this;
                zzdwy zzdwyVar = zzejrVar.i;
                zzbgb zzbgbVar = zzbgk.L2;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-webview-creation-start", zzdwyVar.e);
                }
                zzdua zzduaVar = zzejrVar.b;
                zzfik zzfikVar = zzejrVar.f6569c;
                zzfic zzficVar2 = this.f6567c;
                zzfhu zzfhuVar = zzficVar2.b.b;
                com.google.android.gms.ads.internal.client.zzr zzrVar = zzfikVar.f;
                final zzfhr zzfhrVar2 = this.b;
                final zzcir a2 = zzduaVar.a(zzrVar, zzfhrVar2, zzfhuVar);
                a2.c0(zzfhrVar2.W);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-webview-creation-end", zzdwyVar.e);
                }
                zzcdt zzcdtVar = new zzcdt();
                zzcsq zzcsqVar = zzejrVar.f6568a;
                zzcwa zzcwaVar = new zzcwa(zzficVar2, zzfhrVar2, null);
                VersionInfoParcel versionInfoParcel = zzejrVar.e;
                boolean z = zzejrVar.g;
                zzbnq zzbnqVar2 = zzejrVar.f;
                final zzcsn a3 = zzcsqVar.a(zzcwaVar, new zzdjw(new zzejt(versionInfoParcel, zzcdtVar, zzfhrVar2, a2, zzfikVar, z, zzbnqVar2, zzejrVar.h, zzejrVar.j), a2), new zzcso(zzfhrVar2.a0));
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-ad-component-creation-end", zzdwyVar.e);
                }
                zzdtz h = a3.h();
                if (true != z) {
                    zzbnqVar = null;
                } else {
                    zzbnqVar = zzbnqVar2;
                }
                h.a(a2, false, zzbnqVar, zzdwyVar.e);
                zzcdtVar.a(a3);
                a3.c().m0(new zzdbe() { // from class: com.google.android.gms.internal.ads.zzejn
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
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h6)).booleanValue() && ((zzeiz) ((zzcmw) a3).i.zzb()).a()) {
                    str = zzcki.a(str, zzcki.b(zzfhrVar2));
                }
                a3.h();
                return zzgym.i(zzdtz.b(a2, zzfhwVar.b, str, zzdwyVar.e, ((zzcmy) zzcsqVar).zzd()), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzejo
                    @Override // com.google.android.gms.internal.ads.zzgpr
                    public final /* synthetic */ Object apply(Object obj3) {
                        boolean z2 = zzfhrVar2.M;
                        zzcir zzcirVar = zzcir.this;
                        if (z2) {
                            zzcirVar.E();
                        }
                        zzcirVar.k0();
                        zzcirVar.onPause();
                        return a3.g();
                    }
                }, zzejrVar.d);
            }
        };
        Executor executor = this.d;
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
