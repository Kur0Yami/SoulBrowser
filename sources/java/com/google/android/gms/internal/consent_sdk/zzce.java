package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzce implements zzth {

    /* renamed from: a, reason: collision with root package name */
    public final zztk f9970a;
    public final zztg b;

    /* renamed from: c, reason: collision with root package name */
    public final zztk f9971c;
    public final zztk d;
    public final zztf e;
    public final zztk f;

    public zzce(zzti zztiVar, zztg zztgVar, zztg zztgVar2, zzap zzapVar, zztf zztfVar, zztg zztgVar3) {
        this.f9970a = zztiVar;
        this.b = zztgVar;
        this.f9971c = zztgVar2;
        this.d = zzapVar;
        this.e = zztfVar;
        this.f = zztgVar3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zztm
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzcd zzb() {
        Application application = (Application) this.f9970a.zzb();
        zzbz zzbzVar = (zzbz) this.b.zzb();
        Handler handler = zzcz.f10001a;
        zztj.a(handler);
        Executor executor = zzcz.b;
        zztj.a(executor);
        return new zzcd(application, zzbzVar, handler, executor, (zze) this.f9971c.zzb(), ((zzap) this.d).zzb(), (zzbe) this.e.zzb(), (zzaq) this.f.zzb());
    }
}
