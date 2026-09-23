package com.google.android.gms.internal.consent_sdk;

import android.app.Application;

/* loaded from: classes.dex */
public final class zzbf implements zzth {

    /* renamed from: a, reason: collision with root package name */
    public final zztk f9948a;
    public final zztk b;

    /* renamed from: c, reason: collision with root package name */
    public final zztg f9949c;
    public final zztk d;
    public final zzti e;
    public final zzby f;
    public final zztk g;

    public zzbf(zzti zztiVar, zztg zztgVar, zztg zztgVar2, zztg zztgVar3, zzti zztiVar2, zzby zzbyVar, zztg zztgVar4) {
        this.f9948a = zztiVar;
        this.b = zztgVar;
        this.f9949c = zztgVar2;
        this.d = zztgVar3;
        this.e = zztiVar2;
        this.f = zzbyVar;
        this.g = zztgVar4;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zztm
    public final Object zzb() {
        Application application = (Application) this.f9948a.zzb();
        return new zzbe(application, (zzbz) this.f9949c.zzb(), (zzaq) this.d.zzb(), (zzbs) this.e.f10125a, this.f, (zzcr) this.g.zzb());
    }
}
