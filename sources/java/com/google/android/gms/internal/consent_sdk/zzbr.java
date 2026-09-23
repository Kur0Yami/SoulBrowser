package com.google.android.gms.internal.consent_sdk;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzbr implements zzth {

    /* renamed from: a, reason: collision with root package name */
    public final zztk f9956a;

    public zzbr(zztk zztkVar) {
        this.f9956a = zztkVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zztm
    public final Object zzb() {
        Executor executor = zzcz.b;
        zztj.a(executor);
        return new zzbq(this.f9956a, executor);
    }
}
