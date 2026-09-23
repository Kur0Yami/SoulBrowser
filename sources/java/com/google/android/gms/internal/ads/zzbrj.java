package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzbrj implements zzcdx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbrl f4854a;

    public zzbrj(zzbrl zzbrlVar) {
        Objects.requireNonNull(zzbrlVar);
        this.f4854a = zzbrlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final /* synthetic */ void zza(Object obj) {
        com.google.android.gms.ads.internal.util.zze.zza("Releasing engine reference.");
        this.f4854a.d.e();
    }
}
