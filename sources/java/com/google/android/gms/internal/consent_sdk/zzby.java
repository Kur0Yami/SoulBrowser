package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;

/* loaded from: classes.dex */
public final class zzby implements zzth {

    /* renamed from: a, reason: collision with root package name */
    public final zztg f9962a;
    public final zzce b;

    public zzby(zztg zztgVar, zzce zzceVar) {
        this.f9962a = zztgVar;
        this.b = zzceVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zztm
    public final Object zzb() {
        zzbz zzbzVar = (zzbz) this.f9962a.zzb();
        Handler handler = zzcz.f10001a;
        zztj.a(handler);
        return new zzbx(zzbzVar, handler, this.b.zzb());
    }
}
