package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzezp implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7134a;

    public zzezp(zzffn zzffnVar) {
        this.f7134a = zzffnVar != null;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return zzgym.a(new zzezo(this.f7134a));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 36;
    }
}
