package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzfbw implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7204a;
    public final List b;

    public zzfbw(zzgyw zzgywVar, List list) {
        this.f7204a = zzgywVar;
        this.b = list;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7204a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzfbv
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzfbx(zzfbw.this.b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 48;
    }
}
