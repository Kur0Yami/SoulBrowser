package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzfqf implements zzbde {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfqh f7558c;

    public zzfqf(zzfqh zzfqhVar) {
        Objects.requireNonNull(zzfqhVar);
        this.f7558c = zzfqhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbde
    public final void zza(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z)).booleanValue()) {
            this.f7558c.d(z);
        }
    }
}
