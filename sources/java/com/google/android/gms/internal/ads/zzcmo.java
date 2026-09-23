package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzcmo implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclp f5270a;
    public final zzijf b;

    public zzcmo(zzclp zzclpVar, zzijf zzijfVar) {
        this.f5270a = zzclpVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzbyw zzb() {
        Context a2 = this.f5270a.a();
        zzfnr zzfnrVar = (zzfnr) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzbsf a3 = com.google.android.gms.ads.internal.zzt.zzr().a(a2, VersionInfoParcel.forPackage(), zzfnrVar);
        zzbrz zzbrzVar = zzbsc.f4867a;
        a3.getClass();
        return new zzbyw(a2, com.google.android.gms.ads.internal.zzt.zzr().a(a2, VersionInfoParcel.forPackage(), zzfnrVar).a("google.afma.sdkConstants.getSdkConstants", zzbrzVar, zzbrzVar), VersionInfoParcel.forPackage(), zzgywVar);
    }
}
