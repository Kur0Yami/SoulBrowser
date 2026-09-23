package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfew implements zzffj {

    /* renamed from: a, reason: collision with root package name */
    public final zzfjz f7287a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgyj f7288c = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzgyj] */
    public zzfew(zzfjz zzfjzVar, Executor executor) {
        this.f7287a = zzfjzVar;
        this.b = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzffj
    public final /* bridge */ /* synthetic */ ListenableFuture a(zzffk zzffkVar, zzffi zzffiVar) {
        return b(null);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.ads.zzgpr, java.lang.Object] */
    public final zzgye b(final zzczr zzczrVar) {
        ListenableFuture a2;
        ListenableFuture listenableFuture;
        zzfjz zzfjzVar = this.f7287a;
        Executor executor = this.b;
        zzfff zzfffVar = new zzfff(zzfjzVar, zzczrVar, executor);
        zzffd zzffdVar = zzfffVar.d;
        if (zzffdVar == null) {
            if (!((Boolean) zzbir.f4726a.c()).booleanValue()) {
                zzfik zzb = zzczrVar.zzb();
                com.google.android.gms.ads.internal.client.zzm zzmVar = zzb.d;
                String str = zzb.g;
                com.google.android.gms.ads.internal.client.zzx zzxVar = zzb.k;
                zzfkg zzfkgVar = ((zzfka) zzfjzVar).b;
                zzffd zzffdVar2 = new zzffd(null, new zzfkk(zzmVar, str, new zzbzd(zzfkgVar.f7432c).a().j, zzfkgVar.k, zzxVar));
                zzfffVar.d = zzffdVar2;
                listenableFuture = zzgym.a(zzffdVar2);
            } else {
                final zzcwo zza = zzczrVar.zza();
                final zzfkg zzfkgVar2 = ((zzfka) zzfjzVar).b;
                zzczo zzczoVar = zza.i;
                zzfmb d = zza.f5540c.a(zzczoVar.b(), zzfmo.GET_CACHE_KEY).b(new zzgxu() { // from class: com.google.android.gms.internal.ads.zzcwl
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final ListenableFuture zza(Object obj) {
                        final zzbza zzbzaVar = (zzbza) obj;
                        zzbzaVar.m = zzfkgVar2;
                        final zzeer zzeerVar = zzcwo.this.h;
                        zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.internal.ads.zzeel
                            @Override // com.google.android.gms.internal.ads.zzgxu
                            public final /* synthetic */ ListenableFuture zza(Object obj2) {
                                String str2 = new String(zzgwd.a((InputStream) obj2), StandardCharsets.UTF_8);
                                zzbza zzbzaVar2 = zzbza.this;
                                zzbzaVar2.n = str2;
                                return zzgym.a(zzbzaVar2);
                            }
                        };
                        final zzedw zzedwVar = zzeerVar.b;
                        return zzeerVar.a(zzbzaVar, new zzeeh() { // from class: com.google.android.gms.internal.ads.zzeei
                            @Override // com.google.android.gms.internal.ads.zzeeh
                            public final ListenableFuture a(zzbza zzbzaVar2) {
                                final zzedw zzedwVar2 = zzedw.this;
                                synchronized (zzedwVar2.b) {
                                    try {
                                        int i = zzedwVar2.h;
                                        if (i != 1 && i != 2) {
                                            return zzgym.b(new zzebr(2));
                                        }
                                        if (zzedwVar2.f6404c) {
                                            return zzedwVar2.f6403a;
                                        }
                                        zzedwVar2.h = 2;
                                        zzedwVar2.f6404c = true;
                                        zzedwVar2.e = zzbzaVar2;
                                        zzedwVar2.f.checkAvailabilityAndConnect();
                                        zzcdt zzcdtVar = zzedwVar2.f6403a;
                                        zzcdtVar.f5072c.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedv
                                            @Override // java.lang.Runnable
                                            public final /* synthetic */ void run() {
                                                zzedw.this.a();
                                            }
                                        }, zzcdo.g);
                                        return zzcdtVar;
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        }, new zzeeh() { // from class: com.google.android.gms.internal.ads.zzeem
                            @Override // com.google.android.gms.internal.ads.zzeeh
                            public final /* synthetic */ ListenableFuture a(zzbza zzbzaVar2) {
                                return ((zzefw) zzeer.this.f6430c.zzb()).d5(zzbzaVar2, Binder.getCallingUid());
                            }
                        }, zzgxuVar);
                    }
                }).d();
                zzcwj zzcwjVar = new zzcwj(zza);
                d.k(new zzgyk(d, zzcwjVar), zza.j);
                listenableFuture = (zzgye) zzgym.e((zzgye) zzgym.i(zzgye.r(d), new zzffc(zzfffVar), executor), zzeef.class, new zzffb(zzfffVar), executor);
            }
            a2 = zzgym.i(listenableFuture, zzffe.f7296a, executor);
        } else {
            a2 = zzgym.a(zzffdVar);
        }
        return (zzgye) zzgym.e((zzgye) zzgym.h(zzgye.r(a2), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfeu
            /* JADX WARN: Code restructure failed: missing block: B:10:0x004e, code lost:
            
                r2.f7427c.e++;
             */
            @Override // com.google.android.gms.internal.ads.zzgxu
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.google.common.util.concurrent.ListenableFuture zza(java.lang.Object r12) {
                /*
                    Method dump skipped, instructions count: 291
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfeu.zza(java.lang.Object):com.google.common.util.concurrent.ListenableFuture");
            }
        }, executor), Exception.class, new Object(), executor);
    }

    @Override // com.google.android.gms.internal.ads.zzffj
    public final /* bridge */ /* synthetic */ Object zzd() {
        return null;
    }
}
