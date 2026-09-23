package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbfp;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdwd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzfch f6196a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijk f6197c;

    public zzdwd(zzfch zzfchVar, zzclp zzclpVar, zzijk zzijkVar) {
        this.f6196a = zzfchVar;
        this.b = zzclpVar;
        this.f6197c = zzijkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Set set;
        final String str = this.f6196a.f7215a.f7210a.l;
        zzijo.a(str);
        Context a2 = ((zzclp) this.b).a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        Map zzb = this.f6197c.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y5)).booleanValue()) {
            zzbfj zzbfjVar = new zzbfj(new zzbfo(a2));
            zzbfjVar.a(new zzbfi() { // from class: com.google.android.gms.internal.ads.zzdwe
                @Override // com.google.android.gms.internal.ads.zzbfi
                public final void a(zzbfp.zzt.zza zzaVar) {
                    zzaVar.k();
                    ((zzbfp.zzt) zzaVar.f).E(str);
                }
            });
            set = Collections.singleton(new zzdij(new zzdwg(zzbfjVar, zzb), zzgywVar));
        } else {
            set = Collections.EMPTY_SET;
        }
        zzijo.a(set);
        return set;
    }
}
