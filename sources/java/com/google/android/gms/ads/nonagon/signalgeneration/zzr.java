package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzclp;
import com.google.android.gms.internal.ads.zzdxj;
import com.google.android.gms.internal.ads.zzgyw;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijo;
import com.google.android.gms.internal.ads.zzijp;

/* loaded from: classes.dex */
public final class zzr implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3294a;
    public final zzijp b;

    public zzr(zzijp zzijpVar, zzijp zzijpVar2) {
        this.f3294a = zzijpVar;
        this.b = zzijpVar2;
    }

    public static zzr zza(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3) {
        return new zzr(zzijpVar, zzijpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = ((zzclp) this.f3294a).a();
        zzdxj zzdxjVar = (zzdxj) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzo(a2, zzdxjVar, zzgywVar);
    }
}
