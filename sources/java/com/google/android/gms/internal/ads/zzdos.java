package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzdos implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdmn f5972a;
    public final zzijp b;

    public zzdos(zzdmn zzdmnVar, zzijf zzijfVar) {
        this.f5972a = zzdmnVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzdsp zzdspVar = this.f5972a.f5913a.b;
        zzijo.a(zzdspVar);
        return new zzdor(zzdspVar, (Clock) this.b.zzb());
    }
}
