package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzdij;
import com.google.android.gms.internal.ads.zzgyw;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijo;
import com.google.android.gms.internal.ads.zzijp;

/* loaded from: classes.dex */
public final class zzbe implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3252a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f3253c;

    public zzbe(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3) {
        this.f3252a = zzijpVar;
        this.b = zzijpVar2;
        this.f3253c = zzijpVar3;
    }

    public static zzbe zza(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4) {
        return new zzbe(zzijpVar, zzijpVar2, zzijpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Object obj = (zzw) this.f3252a.zzb();
        Object obj2 = (zzbl) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        if (((Integer) this.f3253c.zzb()).intValue() == 2) {
            obj = obj2;
        }
        return new zzdij(obj, zzgywVar);
    }
}
