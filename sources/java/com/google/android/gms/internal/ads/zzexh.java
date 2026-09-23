package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzexh implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcta f7050a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijs f7051c;

    public zzexh(zzcta zzctaVar, zzijf zzijfVar, zzijs zzijsVar) {
        this.f7050a = zzctaVar;
        this.b = zzijfVar;
        this.f7051c = zzijsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzexf zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzexf(zzgywVar, this.f7050a.f5446a.f5443a, (Context) this.b.zzb(), this.f7051c.zzb());
    }
}
