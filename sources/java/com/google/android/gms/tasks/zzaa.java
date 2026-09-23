package com.google.android.gms.tasks;

import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
final class zzaa<T> implements zzab<T> {

    /* renamed from: c, reason: collision with root package name */
    public final CountDownLatch f11608c = new CountDownLatch(1);

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void a() {
        this.f11608c.countDown();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void c(Exception exc) {
        this.f11608c.countDown();
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        this.f11608c.countDown();
    }
}
