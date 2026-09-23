package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgzj extends zzgyt {
    public final zzgxt g;
    public final /* synthetic */ zzgzl h;

    public zzgzj(zzgzl zzgzlVar, zzgxt zzgxtVar) {
        this.h = zzgzlVar;
        this.g = zzgxtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final Object a() {
        zzgxt zzgxtVar = this.g;
        ListenableFuture zza = zzgxtVar.zza();
        if (zza != null) {
            return zza;
        }
        throw new NullPointerException(zzgqr.b("AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgxtVar));
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
    public final /* synthetic */ void e(Object obj) {
        this.h.m((ListenableFuture) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgyt
    public final void f(Throwable th) {
        this.h.d(th);
    }
}
