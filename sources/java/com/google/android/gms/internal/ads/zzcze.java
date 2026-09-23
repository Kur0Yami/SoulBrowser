package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzcze {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicLong f5617a;

    public zzcze(zzfic zzficVar) {
        AtomicLong atomicLong = new AtomicLong();
        this.f5617a = atomicLong;
        atomicLong.set(zzficVar.f7383a.f7378a.u.get());
    }

    public final void a(long j) {
        this.f5617a.set(j);
    }
}
