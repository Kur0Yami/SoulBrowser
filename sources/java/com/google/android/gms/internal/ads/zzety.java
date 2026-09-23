package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzety implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzfik f6937a;

    public zzety(zzfik zzfikVar) {
        this.f6937a = zzfikVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return zzgym.a(new zzetz(this.f6937a.q));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 58;
    }
}
