package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzelh implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6636a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f6637c;

    public zzelh(zzijf zzijfVar, zzcmg zzcmgVar, zzijh zzijhVar) {
        this.f6636a = zzijfVar;
        this.b = zzcmgVar;
        this.f6637c = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context context = (Context) this.f6636a.zzb();
        VersionInfoParcel a2 = ((zzcmg) this.b).a();
        zzdkz zzdkzVar = (zzdkz) this.f6637c.f9006a;
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzelg(context, a2, zzdkzVar, zzgywVar);
    }
}
