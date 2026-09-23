package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeta implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6906a;
    public final zzfik b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcdf f6907c;

    public zzeta(zzgyw zzgywVar, zzfik zzfikVar, zzcdf zzcdfVar) {
        this.f6906a = zzgywVar;
        this.b = zzfikVar;
        this.f6907c = zzcdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f6906a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzesz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzeta zzetaVar = zzeta.this;
                return new zzetb(zzetaVar.b.k, zzetaVar.f6907c.k);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 9;
    }
}
