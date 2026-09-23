package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzeca implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzecn f6357a;
    public final zzefx b;

    public zzeca(zzecn zzecnVar, zzefx zzefxVar) {
        this.f6357a = zzecnVar;
        this.b = zzefxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.b;
        zzijo.a(zzgywVar);
        zzgyw zzgywVar2 = zzcdo.f5068a;
        zzijo.a(zzgywVar2);
        return new zzebz(zzgywVar, zzgywVar2, new zzedj((Context) this.f6357a.f6370a.zzb(), zzgywVar2), zzijf.b(this.b));
    }
}
