package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzgxi;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public abstract class zzb {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f3120a = new zza(this);

    public abstract void zza();

    public ListenableFuture zzb() {
        return ((zzgxi) zzcdo.f5068a).E0(this.f3120a);
    }
}
