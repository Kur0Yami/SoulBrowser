package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzetp implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6926a;
    public final zzczy b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6927c;
    public final zzijf d;
    public final zzijf e;
    public final zzdab f;
    public final zzijf g;
    public final zzijp h;
    public final zzijp i;

    public zzetp(zzclp zzclpVar, zzczy zzczyVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzdab zzdabVar, zzijf zzijfVar4, zzijf zzijfVar5, zzijf zzijfVar6) {
        this.f6926a = zzclpVar;
        this.b = zzczyVar;
        this.f6927c = zzijfVar;
        this.d = zzijfVar2;
        this.e = zzijfVar3;
        this.f = zzdabVar;
        this.g = zzijfVar4;
        this.h = zzijfVar5;
        this.i = zzijfVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = ((zzclp) this.f6926a).a();
        String str = ((zzcxa) this.b.f5642a.zzb()).f.e;
        zzijo.a(str);
        return new zzetn(a2, str, (String) this.f6927c.zzb(), (zzcxa) this.d.zzb(), (zzfjs) this.e.zzb(), this.f.a(), (zzdwy) this.g.zzb(), (zzcxo) this.h.zzb(), ((Long) this.i.zzb()).longValue());
    }
}
