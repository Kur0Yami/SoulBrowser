package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzebq implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclp f6344a;
    public final zzcmg b;

    public zzebq(zzclp zzclpVar, zzcmg zzcmgVar) {
        this.f6344a = zzclpVar;
        this.b = zzcmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = this.f6344a.a();
        VersionInfoParcel a3 = this.b.a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzebp(a2, a3, zzgywVar);
    }
}
