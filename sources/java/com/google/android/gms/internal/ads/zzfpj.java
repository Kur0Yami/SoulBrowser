package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzfpj implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclp f7534a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7535c;
    public final zzijf d;
    public final zzijf e;
    public final zzijf f;

    public zzfpj(zzclp zzclpVar, zzijf zzijfVar, zzijp zzijpVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4) {
        this.f7534a = zzclpVar;
        this.b = zzijfVar;
        this.f7535c = zzijpVar;
        this.d = zzijfVar2;
        this.e = zzijfVar3;
        this.f = zzijfVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = this.f7534a.a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzfpi(a2, zzgywVar, (zzgyx) this.b.zzb(), (com.google.android.gms.ads.internal.util.client.zzu) this.f7535c.zzb(), (zzfpa) this.d.zzb(), (zzfnr) this.e.zzb(), (zzcld) this.f.zzb());
    }
}
