package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzgcv implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgda f7828a;

    public zzgcv(zzgda zzgdaVar) {
        Objects.requireNonNull(zzgdaVar);
        this.f7828a = zzgdaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final ListenableFuture zza(Object obj) {
        zzgct zzgctVar = (zzgct) obj;
        if (zzgctVar != null) {
            return zzgym.a(zzgctVar);
        }
        zzgda zzgdaVar = this.f7828a;
        zzgdaVar.e.b(51);
        return (zzgye) zzgym.h(zzgye.r(zzgym.c(new zzgcw(zzgdaVar, 2), zzgdaVar.d)), zzgcx.f7830a, zzgyb.f8301c);
    }
}
