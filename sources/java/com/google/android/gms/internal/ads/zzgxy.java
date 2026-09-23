package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzgxy extends zzgxz {
    public final Callable i;
    public final /* synthetic */ zzgya j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgxy(zzgya zzgyaVar, Callable callable, Executor executor) {
        super(zzgyaVar, executor);
        this.j = zzgyaVar;
        this.i = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final Object a() {
        return this.i.call();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final String c() {
        return this.i.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgxz
    public final void h(Object obj) {
        this.j.c(obj);
    }
}
