package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzent implements zzejg {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6731a;
    public final zzdua b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdtj f6732c;
    public final zzfik d;
    public final Executor e;
    public final VersionInfoParcel f;
    public final zzbnq g;
    public final boolean h = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ka)).booleanValue();
    public final zzeif i;
    public final zzdwy j;
    public final zzdxe k;

    public zzent(Context context, VersionInfoParcel versionInfoParcel, zzfik zzfikVar, Executor executor, zzdtj zzdtjVar, zzdua zzduaVar, zzbnq zzbnqVar, zzeif zzeifVar, zzdwy zzdwyVar, zzdxe zzdxeVar) {
        this.f6731a = context;
        this.d = zzfikVar;
        this.f6732c = zzdtjVar;
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
        zzgxu zzgxuVar = new zzgxu(zzfhrVar, zzficVar, obj) { // from class: com.google.android.gms.internal.ads.zzens
            public final /* synthetic */ zzfhr b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ zzfic f6730c;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzdjw, com.google.android.gms.internal.ads.zzdtg] */
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj2) {
                zzent zzentVar = zzent.this;
                zzdwy zzdwyVar = zzentVar.j;
                zzbgb zzbgbVar = zzbgk.L2;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-webview-creation-start", zzdwyVar.e);
                }
                zzdua zzduaVar = zzentVar.b;
                zzfik zzfikVar = zzentVar.d;
                zzfic zzficVar2 = this.f6730c;
                zzfhu zzfhuVar = zzficVar2.b.b;
                com.google.android.gms.ads.internal.client.zzr zzrVar = zzfikVar.f;
                final zzfhr zzfhrVar2 = this.b;
                final zzcir a2 = zzduaVar.a(zzrVar, zzfhrVar2, zzfhuVar);
                a2.c0(zzfhrVar2.W);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-webview-creation-end", zzdwyVar.e);
                }
                zzcdt zzcdtVar = new zzcdt();
                zzdtj zzdtjVar = zzentVar.f6732c;
                zzcwa zzcwaVar = new zzcwa(zzficVar2, zzfhrVar2, null);
                Context context = zzentVar.f6731a;
                VersionInfoParcel versionInfoParcel = zzentVar.f;
                zzbnq zzbnqVar = zzentVar.g;
                boolean z = zzentVar.h;
                zzeif zzeifVar = zzentVar.i;
                zzdwy zzdwyVar2 = zzentVar.j;
                final zzdtf a3 = zzdtjVar.a(zzcwaVar, new zzdjw(new zzenp(context, zzduaVar, zzfikVar, versionInfoParcel, zzfhrVar2, zzcdtVar, a2, zzbnqVar, z, zzeifVar, zzdwyVar2, zzentVar.k), a2));
                zzcdtVar.a(a3);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                    androidx.work.impl.workers.a.z("rendering-ad-component-creation-end", zzdwyVar2.e);
                }
                a2.l("/reward", new zzbog(a3.i()));
                a3.c().m0(new zzdbe() { // from class: com.google.android.gms.internal.ads.zzenq
                    @Override // com.google.android.gms.internal.ads.zzdbe
                    public final /* synthetic */ void n() {
                        zzcir zzcirVar = zzcir.this;
                        if (zzcirVar.D() != null) {
                            zzcirVar.D().w0();
                        }
                    }
                }, zzcdo.g);
                zzdtz j = a3.j();
                if (true != z) {
                    zzbnqVar = null;
                }
                j.a(a2, true, zzbnqVar, zzdwyVar2.e);
                zzfhw zzfhwVar = zzfhrVar2.s;
                String str = zzfhwVar.f7374a;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h6)).booleanValue() && ((zzeiz) ((zzcnx) a3).h.zzb()).a()) {
                    str = zzcki.a(str, zzcki.b(zzfhrVar2));
                }
                a3.j();
                return zzgym.i(zzdtz.b(a2, zzfhwVar.b, str, zzdwyVar2.e, ((zzcnz) zzdtjVar).zzd()), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzenr
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
                }, zzentVar.e);
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
