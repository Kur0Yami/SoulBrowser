package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzexb implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7043a;
    public final zzfik b;

    public zzexb(zzgyw zzgywVar, zzfik zzfikVar) {
        this.f7043a = zzgywVar;
        this.b = zzfikVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7043a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzexa
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzexc("requester_type_2".equals(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzc(zzexb.this.b.d)));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 21;
    }
}
