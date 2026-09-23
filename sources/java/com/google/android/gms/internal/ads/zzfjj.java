package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes.dex */
public final class zzfjj {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedBlockingDeque f7413a = new LinkedBlockingDeque();
    public final Callable b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgyw f7414c;

    public zzfjj(zzdsn zzdsnVar, zzgyw zzgywVar) {
        this.b = zzdsnVar;
        this.f7414c = zzgywVar;
    }

    public final synchronized void a(int i) {
        LinkedBlockingDeque linkedBlockingDeque = this.f7413a;
        int size = i - linkedBlockingDeque.size();
        for (int i2 = 0; i2 < size; i2++) {
            linkedBlockingDeque.add(this.f7414c.v0(this.b));
        }
    }

    public final synchronized ListenableFuture b() {
        a(1);
        return (ListenableFuture) this.f7413a.poll();
    }
}
