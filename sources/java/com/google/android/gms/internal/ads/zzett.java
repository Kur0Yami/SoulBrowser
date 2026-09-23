package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzett implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6931a;

    public zzett(zzcmg zzcmgVar) {
        this.f6931a = zzcmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzetr zzb() {
        VersionInfoParcel a2 = ((zzcmg) this.f6931a).a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzetr(a2, zzgywVar);
    }
}
