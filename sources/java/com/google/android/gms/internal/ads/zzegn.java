package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzegn {

    /* renamed from: a, reason: collision with root package name */
    public final zzegj f6482a;
    public final zzgyw b;

    public zzegn(zzegj zzegjVar, zzgyw zzgywVar) {
        this.f6482a = zzegjVar;
        this.b = zzgywVar;
    }

    public final void a(zzflu zzfluVar) {
        final zzegj zzegjVar = this.f6482a;
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzegm
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzegj.this.getWritableDatabase();
            }
        };
        zzgyw zzgywVar = this.b;
        ListenableFuture v0 = zzgywVar.v0(callable);
        v0.k(new zzgyk(v0, new zzegl(this, zzfluVar)), zzgywVar);
    }
}
