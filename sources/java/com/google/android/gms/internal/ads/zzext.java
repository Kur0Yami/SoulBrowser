package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzext implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzfhq f7063a;

    public zzext(zzfhq zzfhqVar) {
        this.f7063a = zzfhqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return zzgym.a(new zzexu(this.f7063a));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 25;
    }
}
