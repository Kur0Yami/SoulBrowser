package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcvt implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgyj f5513a;
    public final /* synthetic */ zzcvz b;

    public zzcvt(zzcvz zzcvzVar, zzgyj zzgyjVar) {
        this.f5513a = zzgyjVar;
        this.b = zzcvzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        List<ListenableFuture> list = ((zzcvs) obj).f5512a;
        final zzcvz zzcvzVar = this.b;
        Executor executor = zzcvzVar.f5520a;
        final zzgyj zzgyjVar = this.f5513a;
        if (list != null && !list.isEmpty()) {
            ListenableFuture listenableFuture = zzgyq.f;
            for (final ListenableFuture listenableFuture2 : list) {
                listenableFuture = zzgym.h(zzgym.f(listenableFuture, Throwable.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzcvv
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final ListenableFuture zza(Object obj2) {
                        zzgyj.this.b((Throwable) obj2);
                        return zzgyq.f;
                    }
                }, executor), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzcvw
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final /* synthetic */ ListenableFuture zza(Object obj2) {
                        zzcvk zzcvkVar = (zzcvk) obj2;
                        zzcvz zzcvzVar2 = zzcvz.this;
                        zzcvzVar2.getClass();
                        if (zzcvkVar != null) {
                            ((zzerj) zzgyjVar).a(zzcvkVar);
                        }
                        long longValue = ((Long) zzbiy.f4734a.c()).longValue();
                        ScheduledExecutorService scheduledExecutorService = zzcvzVar2.b;
                        return zzgym.g(listenableFuture2, longValue, TimeUnit.MILLISECONDS, scheduledExecutorService);
                    }
                }, executor);
            }
            listenableFuture.k(new zzgyk(listenableFuture, new zzcvu(zzcvzVar, zzgyjVar)), executor);
            return;
        }
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcvy
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                ((zzerj) zzgyj.this).b(new zzebr(3));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        ((zzerj) this.f5513a).b(th);
        zzcvz zzcvzVar = this.b;
        zzcvzVar.getClass();
        ((zzcdn) zzcdo.f).execute(new zzcvx(zzcvzVar));
    }
}
