package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes.dex */
public final class zzdgl implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdgk f5781a;
    public final zzijs b;

    public zzdgl(zzdgk zzdgkVar, zzijs zzijsVar) {
        this.f5781a = zzdgkVar;
        this.b = zzijsVar;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzdam, com.google.android.gms.internal.ads.zzdgi] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Set zzb = this.b.zzb();
        zzdgk zzdgkVar = this.f5781a;
        if (zzdgkVar.p == null) {
            zzdgkVar.p = new zzdgi(zzb);
        }
        zzdam zzdamVar = zzdgkVar.p;
        zzijo.a(zzdamVar);
        return zzdamVar;
    }
}
