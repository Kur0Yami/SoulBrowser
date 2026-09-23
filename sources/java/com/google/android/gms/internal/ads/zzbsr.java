package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzbsr implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public final ListenableFuture f4884a;

    public zzbsr(ListenableFuture listenableFuture) {
        this.f4884a = listenableFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final ListenableFuture zza(Object obj) {
        return zzgym.h(this.f4884a, new zzbsq(this, obj), zzcdo.g);
    }
}
