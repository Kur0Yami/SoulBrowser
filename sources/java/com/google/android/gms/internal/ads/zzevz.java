package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzevz implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzewz f7007a;
    public final zzijp b;

    public zzevz(zzewz zzewzVar, zzclp zzclpVar) {
        this.f7007a = zzewzVar;
        this.b = zzclpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Object obj;
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzewx zzewxVar = new zzewx(((zzclp) this.f7007a.f7039a).a(), zzgywVar);
        Context a2 = ((zzclp) this.b).a();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Kc)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            if (com.google.android.gms.ads.internal.util.zzs.zzG(a2)) {
                int i = zzgtn.g;
                obj = new zzgvo(zzewxVar);
                zzijo.a(obj);
                return obj;
            }
        }
        int i2 = zzgtn.g;
        obj = zzgve.n;
        zzijo.a(obj);
        return obj;
    }
}
