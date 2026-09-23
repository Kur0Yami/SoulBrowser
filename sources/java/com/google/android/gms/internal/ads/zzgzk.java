package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgzk extends zzgyt {
    public final Callable g;
    public final /* synthetic */ zzgzl h;

    public zzgzk(zzgzl zzgzlVar, Callable callable) {
        this.h = zzgzlVar;
        callable.getClass();
        this.g = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final Object a() {
        return this.g.call();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final String c() {
        return this.g.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final boolean d() {
        return this.h.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final void e(Object obj) {
        this.h.c(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final void f(Throwable th) {
        this.h.d(th);
    }
}
