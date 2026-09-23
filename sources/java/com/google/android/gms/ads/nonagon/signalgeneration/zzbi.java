package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzecu;
import com.google.android.gms.internal.ads.zzgyw;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijo;
import com.google.android.gms.internal.ads.zzijp;

/* loaded from: classes.dex */
public final class zzbi implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3258a;

    public zzbi(zzijp zzijpVar) {
        this.f3258a = zzijpVar;
    }

    public static zzbi zzc(zzijp zzijpVar, zzijp zzijpVar2) {
        return new zzbi(zzijpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzbh zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzbh(zzgywVar, ((zzecu) this.f3258a).zzb());
    }
}
