package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfel implements zzffj {

    /* renamed from: a, reason: collision with root package name */
    public zzczr f7274a;
    public final Executor b = zzgyb.f8301c;

    @Override // com.google.android.gms.internal.ads.zzffj
    public final /* bridge */ /* synthetic */ ListenableFuture a(zzffk zzffkVar, zzffi zzffiVar) {
        return b(zzffkVar, zzffiVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzffn] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.gms.internal.ads.zzfki, java.lang.Object] */
    public final ListenableFuture b(zzffk zzffkVar, zzffi zzffiVar, zzczr zzczrVar) {
        zzczq a2 = zzffiVar.a(zzffkVar.b);
        a2.a(new Object());
        zzczr zzczrVar2 = (zzczr) a2.zzh();
        this.f7274a = zzczrVar2;
        final zzcwo zza = zzczrVar2.zza();
        final ?? obj = new Object();
        zzgye r = zzgye.r(zza.b());
        zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfek
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj2) {
                zzfic zzficVar = (zzfic) obj2;
                zzfki.this.b = zzficVar;
                Iterator it = zzficVar.b.f7381a.iterator();
                boolean z = false;
                loop0: while (true) {
                    if (it.hasNext()) {
                        Iterator it2 = ((zzfhr) it.next()).f7367a.iterator();
                        while (it2.hasNext()) {
                            if (!((String) it2.next()).contains("FirstPartyRenderer")) {
                                break loop0;
                            }
                            z = true;
                        }
                    } else if (z) {
                        return zza.c(zzgym.a(zzficVar));
                    }
                }
                return zzgyq.f;
            }
        };
        zzgyb zzgybVar = zzgyb.f8301c;
        return (zzgye) zzgym.i((zzgye) zzgym.h(r, zzgxuVar, zzgybVar), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzfej
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj2) {
                zzfki zzfkiVar = zzfki.this;
                zzfkiVar.f7434c = (zzcvk) obj2;
                return zzfkiVar;
            }
        }, zzgybVar);
    }

    @Override // com.google.android.gms.internal.ads.zzffj
    public final /* synthetic */ Object zzd() {
        return this.f7274a;
    }
}
