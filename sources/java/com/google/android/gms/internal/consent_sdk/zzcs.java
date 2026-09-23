package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzcs implements zzth {

    /* renamed from: a, reason: collision with root package name */
    public final zztg f9993a;
    public final zzti b;

    /* renamed from: c, reason: collision with root package name */
    public final zztg f9994c;

    public zzcs(zztg zztgVar, zztg zztgVar2, zzti zztiVar) {
        this.f9993a = zztgVar;
        this.b = zztiVar;
        this.f9994c = zztgVar2;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zztm
    public final Object zzb() {
        Application application = (Application) this.b.f10125a;
        Executor executor = zzcz.b;
        zztj.a(executor);
        return new zzcr(application, executor, (zzco) this.f9994c.zzb(), false);
    }
}
