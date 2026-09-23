package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzczp implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5632a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f5633c;
    public final zzecm d;
    public final zzijp e;
    public final zzijf f;
    public final zzijp g;
    public final zzijf h;
    public final zzfab i;
    public final zzdab j;
    public final zzijf k;
    public final zzijf l;

    public zzczp(zzijf zzijfVar, zzijp zzijpVar, zzijp zzijpVar2, zzecm zzecmVar, zzijp zzijpVar3, zzijf zzijfVar2, zzijp zzijpVar4, zzijf zzijfVar3, zzfab zzfabVar, zzdab zzdabVar, zzijf zzijfVar4, zzijf zzijfVar5) {
        this.f5632a = zzijfVar;
        this.b = zzijpVar;
        this.f5633c = zzijpVar2;
        this.d = zzecmVar;
        this.e = zzijpVar3;
        this.f = zzijfVar2;
        this.g = zzijpVar4;
        this.h = zzijfVar3;
        this.i = zzfabVar;
        this.j = zzdabVar;
        this.k = zzijfVar4;
        this.l = zzijfVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzczo zzb() {
        zzfmu zzfmuVar = (zzfmu) this.f5632a.zzb();
        VersionInfoParcel a2 = ((zzcmg) this.b).a();
        ApplicationInfo applicationInfo = (ApplicationInfo) this.f5633c.zzb();
        String packageName = ((zzclp) this.d.f6369a).a().getPackageName();
        zzijo.a(packageName);
        zzbgb zzbgbVar = zzbgk.f4658a;
        return new zzczo(zzfmuVar, a2, applicationInfo, packageName, com.google.android.gms.ads.internal.client.zzbd.zzb().a(), (PackageInfo) this.e.zzb(), zzijf.b(this.f), ((zzclj) this.g).zzb(), (String) this.h.zzb(), this.i.zzb(), this.j.a(), (zzdgd) this.k.zzb(), ((Integer) this.l.zzb()).intValue());
    }
}
