package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzeyu implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final String f7101a;
    public final int b;

    public zzeyu(String str, int i) {
        this.f7101a = str;
        this.b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return zzgym.a(new zzeyv(this.f7101a, this.b));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 31;
    }
}
