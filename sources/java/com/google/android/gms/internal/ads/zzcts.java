package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzcts implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5464a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcwb f5465c;
    public final zzijp d;

    public zzcts(zzctj zzctjVar, zzijf zzijfVar, zzcmg zzcmgVar, zzcwb zzcwbVar, zzdab zzdabVar) {
        this.f5464a = zzijfVar;
        this.b = zzcmgVar;
        this.f5465c = zzcwbVar;
        this.d = zzdabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzdij(new zzcti((Context) this.f5464a.zzb(), ((zzcmg) this.b).a(), this.f5465c.a(), ((zzdab) this.d).a()), zzcdo.g);
    }
}
