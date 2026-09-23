package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzete implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f6911a;
    public final zzcda b;

    public zzete(Executor executor, zzcda zzcdaVar) {
        this.f6911a = executor;
        this.b = zzcdaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H3)).booleanValue()) {
            return zzgym.a(new zzetf(null));
        }
        return zzgym.i(this.b.j(), zzetd.f6910a, this.f6911a);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 10;
    }
}
