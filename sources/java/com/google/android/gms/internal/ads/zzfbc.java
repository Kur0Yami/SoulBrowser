package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfbc implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f7184a;
    public final String b;

    public zzfbc(String str, Executor executor) {
        this.f7184a = executor;
        this.b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        ListenableFuture a2 = zzgym.a(this.b);
        zzfbb zzfbbVar = zzfbb.f7183a;
        Executor executor = this.f7184a;
        return zzgym.f(zzgym.i(a2, zzfbbVar, executor), Throwable.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfba
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                return zzgym.a(new zzfbd(zzfbc.this.b));
            }
        }, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 41;
    }
}
