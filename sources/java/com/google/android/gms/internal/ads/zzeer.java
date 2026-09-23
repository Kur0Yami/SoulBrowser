package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class zzeer {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6429a;
    public final zzedw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzija f6430c;

    public zzeer(zzgyw zzgywVar, zzedw zzedwVar, zzija zzijaVar) {
        this.f6429a = zzgywVar;
        this.b = zzedwVar;
        this.f6430c = zzijaVar;
    }

    public final zzgye a(final zzbza zzbzaVar, zzeeh zzeehVar, final zzeeh zzeehVar2, final zzgxu zzgxuVar) {
        ListenableFuture f;
        String str = zzbzaVar.h;
        com.google.android.gms.ads.internal.zzt.zzc();
        boolean zzH = com.google.android.gms.ads.internal.util.zzs.zzH(str);
        zzgyw zzgywVar = this.f6429a;
        if (zzH) {
            f = zzgym.b(new zzebr(1));
        } else {
            f = zzgym.f(zzeehVar.a(zzbzaVar), ExecutionException.class, zzeeq.f6428a, zzgywVar);
        }
        return (zzgye) zzgym.f((zzgye) zzgym.h((zzgye) zzgym.h(zzgye.r(f), zzeej.f6420a, zzgywVar), zzgxuVar, zzgywVar), zzeef.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzeek
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzgym.h(zzeehVar2.a(zzbzaVar), zzgxuVar, zzeer.this.f6429a);
            }
        }, zzgywVar);
    }
}
