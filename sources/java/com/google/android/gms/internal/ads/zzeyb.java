package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzeyb implements zzezx {
    public static String b;

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7075a;

    public zzeyb(Context context, zzgyw zzgywVar) {
        this.f7075a = zzgywVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.concurrent.Callable] */
    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7075a.v0(new Object());
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 27;
    }
}
