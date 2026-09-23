package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzx implements zzth {

    /* renamed from: a, reason: collision with root package name */
    public final zzti f10130a;
    public final zztg b;

    /* renamed from: c, reason: collision with root package name */
    public final zztg f10131c;
    public final zztg d;
    public final zzq e;
    public final zzac f;
    public final zztg g;
    public final zztg h;

    public zzx(zzti zztiVar, zztg zztgVar, zztg zztgVar2, zztg zztgVar3, zzq zzqVar, zzac zzacVar, zztg zztgVar4, zztg zztgVar5) {
        this.f10130a = zztiVar;
        this.b = zztgVar;
        this.f10131c = zztgVar2;
        this.d = zztgVar3;
        this.e = zzqVar;
        this.f = zzacVar;
        this.g = zztgVar4;
        this.h = zztgVar5;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zztm
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzw zzb() {
        Application application = (Application) this.f10130a.f10125a;
        Handler handler = zzcz.f10001a;
        zztj.a(handler);
        Executor executor = zzcz.b;
        zztj.a(executor);
        return new zzw(application, handler, executor, (zzaq) this.f10131c.zzb(), (zzbq) this.d.zzb(), this.e.zzb(), this.f.zzb(), (zze) this.g.zzb(), (zzcr) this.h.zzb());
    }
}
