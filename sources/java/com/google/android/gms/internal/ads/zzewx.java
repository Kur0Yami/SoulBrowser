package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzewx implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7037a;
    public final zzgyw b;

    public zzewx(Context context, zzgyw zzgywVar) {
        this.b = zzgywVar;
        this.f7037a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.b.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzeww
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                com.google.android.gms.ads.internal.zzt.zzc();
                return new zzewy(com.google.android.gms.ads.internal.util.zzs.zzw(zzewx.this.f7037a));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 57;
    }
}
