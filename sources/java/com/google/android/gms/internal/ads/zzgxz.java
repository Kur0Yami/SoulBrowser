package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzgxz extends zzgyt {
    public final Executor g;
    public final /* synthetic */ zzgya h;

    public zzgxz(zzgya zzgyaVar, Executor executor) {
        this.h = zzgyaVar;
        executor.getClass();
        this.g = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final boolean d() {
        return this.h.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final void e(Object obj) {
        this.h.t = null;
        h(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final void f(Throwable th) {
        zzgya zzgyaVar = this.h;
        zzgyaVar.t = null;
        if (th instanceof ExecutionException) {
            zzgyaVar.d(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            zzgyaVar.cancel(false);
        } else {
            zzgyaVar.d(th);
        }
    }

    public abstract void h(Object obj);
}
