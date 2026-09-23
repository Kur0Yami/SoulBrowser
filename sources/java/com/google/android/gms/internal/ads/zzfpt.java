package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzfpt implements zzbde {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfpu f7545c;

    public zzfpt(zzfpu zzfpuVar) {
        Objects.requireNonNull(zzfpuVar);
        this.f7545c = zzfpuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbde
    public final void zza(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z)).booleanValue()) {
            this.f7545c.c(z);
        }
    }
}
