package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzgde implements zzgcb {

    /* renamed from: a, reason: collision with root package name */
    public final zzgad f7841a;
    public final zzgda b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgcu f7842c;
    public final ExecutorService d;
    public final zzgnc e;
    public final AtomicReference f = new AtomicReference();

    public zzgde(zzgad zzgadVar, zzgda zzgdaVar, zzgcu zzgcuVar, ExecutorService executorService, zzgnc zzgncVar) {
        this.f7841a = zzgadVar;
        this.b = zzgdaVar;
        this.f7842c = zzgcuVar;
        this.d = executorService;
        this.e = zzgncVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcb
    public final ListenableFuture zza() {
        zzgad zzgadVar = this.f7841a;
        int G = zzgadVar.G();
        boolean I = zzgadVar.I();
        zzgda zzgdaVar = this.b;
        zzgdaVar.getClass();
        zzgye r = zzgye.r(zzgym.c(new zzgcw(zzgdaVar, G), zzgdaVar.d));
        zzgcx zzgcxVar = zzgcx.f7830a;
        zzgyb zzgybVar = zzgyb.f8301c;
        zzgye zzgyeVar = (zzgye) zzgym.h(r, zzgcxVar, zzgybVar);
        if (I && G != 2) {
            zzgyeVar = (zzgye) zzgym.h((zzgye) zzgym.e(zzgye.r(zzgyeVar), Throwable.class, zzgcz.f7832a, zzgybVar), new zzgcv(zzgdaVar), zzgybVar);
        }
        zzgye zzgyeVar2 = (zzgye) zzgym.i(zzgye.r(zzgyeVar), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzgdd
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                zzgct zzgctVar = (zzgct) obj;
                zzgde.this.f.set(zzgctVar);
                return zzgctVar;
            }
        }, zzgybVar);
        zzgyeVar2.k(new zzgyk(zzgyeVar2, new zzgdc(this)), this.d);
        return zzgyeVar2;
    }
}
