package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
final /* synthetic */ class zzdqq implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListenableFuture f6038a;

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final ListenableFuture zza(Object obj) {
        if (obj != null) {
            return this.f6038a;
        }
        return zzgym.b(new zzebr(1, "Retrieve required value in native ad response failed."));
    }
}
