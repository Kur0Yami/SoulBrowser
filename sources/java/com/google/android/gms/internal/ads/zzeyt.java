package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzeyt implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7099a;
    public final zzdab b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7100c;

    public zzeyt(zzclp zzclpVar, zzdab zzdabVar, zzcmg zzcmgVar) {
        this.f7099a = zzclpVar;
        this.b = zzdabVar;
        this.f7100c = zzcmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzeyr zzb() {
        Context a2 = ((zzclp) this.f7099a).a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyr(a2, zzgywVar, this.b.a(), ((zzcmg) this.f7100c).a());
    }
}
