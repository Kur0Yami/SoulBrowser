package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nonagon.util.logging.csi.CsiParamDefaults;
import com.google.android.gms.ads.nonagon.util.logging.csi.CsiParamDefaults_Factory;
import com.google.android.gms.ads.nonagon.util.logging.csi.CsiUrlBuilder_Factory;

/* loaded from: classes.dex */
public final class zzdxo implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6239a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6240c;
    public final zzclp d;

    public zzdxo(zzijp zzijpVar, CsiParamDefaults_Factory csiParamDefaults_Factory, CsiUrlBuilder_Factory csiUrlBuilder_Factory, zzclp zzclpVar) {
        this.f6239a = zzijpVar;
        this.b = csiParamDefaults_Factory;
        this.f6240c = csiUrlBuilder_Factory;
        this.d = zzclpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        com.google.android.gms.ads.internal.util.client.zzu zzuVar = (com.google.android.gms.ads.internal.util.client.zzu) this.f6239a.zzb();
        CsiParamDefaults zzb = ((CsiParamDefaults_Factory) this.b).zzb();
        zzdxn zzdxnVar = new zzdxn(zzgywVar, zzuVar, ((CsiUrlBuilder_Factory) this.f6240c).zzb(), this.d.a());
        zzb.set(zzdxnVar.f6237a);
        return zzdxnVar;
    }
}
