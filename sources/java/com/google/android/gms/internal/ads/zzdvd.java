package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ads.zzbfp;

/* loaded from: classes.dex */
public final class zzdvd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6175a;
    public final zzecm b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6176c;
    public final zzijp d;
    public final zzijf e;

    public zzdvd(zzclp zzclpVar, zzecm zzecmVar, zzcmg zzcmgVar, zzijp zzijpVar, zzijf zzijfVar) {
        this.f6175a = zzclpVar;
        this.b = zzecmVar;
        this.f6176c = zzcmgVar;
        this.d = zzijpVar;
        this.e = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        int i;
        Context a2 = ((zzclp) this.f6175a).a();
        final String packageName = ((zzclp) this.b.f6369a).a().getPackageName();
        zzijo.a(packageName);
        VersionInfoParcel a3 = ((zzcmg) this.f6176c).a();
        final zzbfp.zza.EnumC0010zza enumC0010zza = (zzbfp.zza.EnumC0010zza) this.d.zzb();
        final String str = (String) this.e.zzb();
        zzbfj zzbfjVar = new zzbfj(new zzbfo(a2));
        zzbfp.zzar.zza E = zzbfp.zzar.E();
        int i2 = a3.buddyApkVersion;
        E.k();
        ((zzbfp.zzar) E.f).F(i2);
        int i3 = a3.clientJarVersion;
        E.k();
        ((zzbfp.zzar) E.f).G(i3);
        if (true != a3.isClientJar) {
            i = 2;
        } else {
            i = 0;
        }
        E.k();
        ((zzbfp.zzar) E.f).D(i);
        final zzbfp.zzar zzarVar = (zzbfp.zzar) E.m();
        zzbfjVar.a(new zzbfi() { // from class: com.google.android.gms.internal.ads.zzdvc
            @Override // com.google.android.gms.internal.ads.zzbfi
            public final void a(zzbfp.zzt.zza zzaVar) {
                zzbfp.zza.zzb zzbVar = (zzbfp.zza.zzb) ((zzbfp.zzt) zzaVar.f).F().v();
                zzbVar.k();
                ((zzbfp.zza) zzbVar.f).E(zzbfp.zza.EnumC0010zza.this);
                zzaVar.k();
                ((zzbfp.zzt) zzaVar.f).K((zzbfp.zza) zzbVar.m());
                zzbfp.zzm.zza zzaVar2 = (zzbfp.zzm.zza) ((zzbfp.zzt) zzaVar.f).D().v();
                zzaVar2.k();
                ((zzbfp.zzm) zzaVar2.f).E(packageName);
                zzaVar2.k();
                ((zzbfp.zzm) zzaVar2.f).F(zzarVar);
                zzaVar.k();
                ((zzbfp.zzt) zzaVar.f).J((zzbfp.zzm) zzaVar2.m());
                zzaVar.k();
                ((zzbfp.zzt) zzaVar.f).E(str);
            }
        });
        return zzbfjVar;
    }
}
