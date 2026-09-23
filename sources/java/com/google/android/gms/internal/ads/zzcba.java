package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
final class zzcba implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListenableFuture f5008a;

    public zzcba(zzcbf zzcbfVar, ListenableFuture listenableFuture) {
        this.f5008a = listenableFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        zzcbf.l.remove(this.f5008a);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzcbf.l.remove(this.f5008a);
    }
}
