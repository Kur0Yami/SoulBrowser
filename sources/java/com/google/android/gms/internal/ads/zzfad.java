package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzfad implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7151a;
    public final zzgyw b;

    public zzfad(Context context, zzgyw zzgywVar) {
        this.f7151a = context;
        this.b = zzgywVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        if (((Boolean) zzbic.b.c()).booleanValue()) {
            return this.b.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzfac
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Context context = zzfad.this.f7151a;
                    return new zzfae(zzbfv.b(context, "init_without_write"), zzbfv.b(context, "crash_without_write"));
                }
            });
        }
        return zzgym.a(new zzfae(-1, -1));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 59;
    }
}
