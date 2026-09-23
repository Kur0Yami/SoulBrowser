package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzffl implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7300a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7301c;

    public zzffl(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar) {
        this.f7300a = zzijhVar;
        this.b = zzijfVar;
        this.f7301c = zzijfVar2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.ads.zzffj, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.lang.Object, com.google.android.gms.internal.ads.zzfez] */
    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzffj zzb() {
        zzccv zzj;
        Context context = (Context) this.f7300a.f9006a;
        zzfjv zzfjvVar = (zzfjv) this.b.zzb();
        zzfkn zzfknVar = (zzfkn) this.f7301c.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f7)).booleanValue()) {
            zzj = com.google.android.gms.ads.internal.zzt.zzh().i().zzi();
        } else {
            zzj = com.google.android.gms.ads.internal.zzt.zzh().i().zzj();
        }
        boolean z = false;
        if (zzj != null && zzj.j) {
            z = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.v7)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e7)).booleanValue() || z) {
                zzfkm a2 = zzfknVar.a(zzfkd.g, context, zzfjvVar, new zzfem(new zzfel()));
                zzffa zzffaVar = new zzffa(new Object());
                zzfjz zzfjzVar = a2.f7437a;
                zzgyw zzgywVar = zzcdo.f5068a;
                return new zzfeq(zzffaVar, new zzfew(zzfjzVar, zzgywVar), a2.b, ((zzfka) zzfjzVar).b.k, zzgywVar);
            }
        }
        return new Object();
    }
}
