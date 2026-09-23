package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzezt implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7138a;
    public final Context b;

    public zzezt(Context context, zzgyw zzgywVar) {
        this.f7138a = zzgywVar;
        this.b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7138a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzezs
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return new zzezr(com.google.android.gms.ads.internal.util.zzac.zzb(zzezt.this.b, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.W6)));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 37;
    }
}
