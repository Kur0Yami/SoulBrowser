package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzduc implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6149a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6150c;
    public final zzijp d;
    public final zzijp e;
    public final zzijf f;
    public final zzijg g;
    public final zzijp h;
    public final zzijp i;
    public final zzijp j;
    public final zzijp k;

    public zzduc(zzijf zzijfVar, zzijp zzijpVar, zzijf zzijfVar2, zzijp zzijpVar2, zzijp zzijpVar3, zzijf zzijfVar3, zzijg zzijgVar, zzijp zzijpVar4, zzijp zzijpVar5, zzijp zzijpVar6, zzijp zzijpVar7) {
        this.f6149a = zzijfVar;
        this.b = zzijpVar;
        this.f6150c = zzijfVar2;
        this.d = zzijpVar2;
        this.e = zzijpVar3;
        this.f = zzijfVar3;
        this.g = zzijgVar;
        this.h = zzijpVar4;
        this.i = zzijpVar5;
        this.j = zzijpVar6;
        this.k = zzijpVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context context = (Context) this.f6149a.zzb();
        zzayq zzayqVar = (zzayq) this.b.zzb();
        zzbhr zzbhrVar = (zzbhr) this.f6150c.zzb();
        VersionInfoParcel a2 = ((zzcmg) this.d).a();
        zzcod zzcodVar = ((zzcoe) this.e).f5336a;
        return new zzdua(context, zzayqVar, zzbhrVar, a2, zzcoe.a(), (zzbfj) this.f.zzb(), (zzddl) this.g.zzb(), (zzeif) this.h.zzb(), (zzfio) this.i.zzb(), (zzdxe) this.j.zzb(), (zzckq) this.k.zzb());
    }
}
