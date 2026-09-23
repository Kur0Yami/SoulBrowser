package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzap implements zzth {

    /* renamed from: a, reason: collision with root package name */
    public final zzti f9936a;
    public final zztg b;

    /* renamed from: c, reason: collision with root package name */
    public final zztg f9937c;

    public zzap(zztg zztgVar, zztg zztgVar2, zzti zztiVar) {
        this.f9936a = zztiVar;
        this.b = zztgVar;
        this.f9937c = zztgVar2;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zztm
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzao zzb() {
        Application application = (Application) this.f9936a.f10125a;
        zzaq zzaqVar = (zzaq) this.b.zzb();
        zzl zzlVar = (zzl) this.f9937c.zzb();
        Executor executor = zzcz.b;
        zztj.a(executor);
        return new zzao(application, zzaqVar, zzlVar, executor);
    }
}
