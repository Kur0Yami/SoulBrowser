package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzcxw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclp f5578a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcmg f5579c;

    public zzcxw(zzclp zzclpVar, zzcmg zzcmgVar, zzijf zzijfVar) {
        this.f5578a = zzclpVar;
        this.b = zzijfVar;
        this.f5579c = zzcmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = this.f5578a.a();
        zzfnr zzfnrVar = (zzfnr) this.b.zzb();
        VersionInfoParcel a3 = this.f5579c.a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzcxv(a2, zzfnrVar, a3, zzgywVar);
    }
}
