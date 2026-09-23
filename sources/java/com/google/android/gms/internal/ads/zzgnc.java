package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzgnc {

    /* renamed from: a, reason: collision with root package name */
    public final zzgcf f8152a;

    public zzgnc(zzfzm zzfzmVar, zzgcf zzgcfVar) {
        this.f8152a = zzgcfVar;
    }

    public final zzgna a(int i) {
        return new zzgna(i, this.f8152a);
    }

    public final void b(int i) {
        this.f8152a.b(i - 1, -1L, null, null);
    }

    public final void c(int i, String str) {
        this.f8152a.b(i - 1, -1L, str, null);
    }

    public final void d(int i, Throwable th) {
        this.f8152a.b(i - 1, -1L, null, th);
    }

    public final void e(int i, ListenableFuture listenableFuture) {
        zzgna a2 = a(i);
        a2.a();
        listenableFuture.k(new zzgyk(listenableFuture, new zzgnb(this, a2)), zzgyb.f8301c);
    }

    public final void f(Runnable runnable, int i) {
        try {
            a(i).a();
            runnable.run();
        } finally {
        }
    }
}
