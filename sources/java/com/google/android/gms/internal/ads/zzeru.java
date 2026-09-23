package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzeru implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Clock f6860a;
    public final zzfik b;

    /* renamed from: c, reason: collision with root package name */
    public final long f6861c;

    public zzeru(Clock clock, zzfik zzfikVar, long j) {
        this.f6860a = clock;
        this.b = zzfikVar;
        this.f6861c = j;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return zzgym.a(new zzerv(this.b, this.f6860a.currentTimeMillis(), this.f6861c));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 4;
    }
}
