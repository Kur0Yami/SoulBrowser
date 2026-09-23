package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzfab implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7148a;
    public final zzijs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f7149c;
    public final zzijp d;

    public zzfab(zzijp zzijpVar, zzijs zzijsVar, zzijf zzijfVar, zzijp zzijpVar2) {
        this.f7148a = zzijpVar;
        this.b = zzijsVar;
        this.f7149c = zzijfVar;
        this.d = zzijpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzfaa zzb() {
        Context a2 = ((zzclp) this.f7148a).a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzfaa(a2, zzgywVar, this.b.zzb(), (zzfno) this.f7149c.zzb(), (zzdxe) this.d.zzb());
    }
}
