package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import androidx.work.impl.workers.a;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzccn;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzczo;
import com.google.android.gms.internal.ads.zzczp;
import com.google.android.gms.internal.ads.zzdab;
import com.google.android.gms.internal.ads.zzdjg;
import com.google.android.gms.internal.ads.zzfmb;
import com.google.android.gms.internal.ads.zzfml;
import com.google.android.gms.internal.ads.zzfmo;
import com.google.android.gms.internal.ads.zzfmu;
import com.google.android.gms.internal.ads.zzgym;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijp;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzbf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3254a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f3255c;
    public final zzijp d;
    public final zzijp e;
    public final zzijp f;
    public final zzijp g;
    public final zzijp h;
    public final zzijp i;

    public zzbf(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4, zzijp zzijpVar5, zzijp zzijpVar6, zzijp zzijpVar7, zzijp zzijpVar8, zzijp zzijpVar9) {
        this.f3254a = zzijpVar;
        this.b = zzijpVar2;
        this.f3255c = zzijpVar3;
        this.d = zzijpVar4;
        this.e = zzijpVar5;
        this.f = zzijpVar6;
        this.g = zzijpVar7;
        this.h = zzijpVar8;
        this.i = zzijpVar9;
    }

    public static zzbf zza(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4, zzijp zzijpVar5, zzijp zzijpVar6, zzijp zzijpVar7, zzijp zzijpVar8, zzijp zzijpVar9) {
        return new zzbf(zzijpVar, zzijpVar2, zzijpVar3, zzijpVar4, zzijpVar5, zzijpVar6, zzijpVar7, zzijpVar8, zzijpVar9);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzau zzauVar = (zzau) this.f3254a.zzb();
        zzfmu zzfmuVar = (zzfmu) this.b.zzb();
        zzbh zzb = ((zzbi) this.f3255c).zzb();
        zzczo zzb2 = ((zzczp) this.d).zzb();
        zzdjg zzdjgVar = (zzdjg) this.e.zzb();
        zzb zzbVar = (zzb) this.f.zzb();
        zzccn zzccnVar = (zzccn) this.g.zzb();
        int intValue = ((Integer) this.h.zzb()).intValue();
        Bundle bundle = ((zzdab) this.i).a().t;
        zzbj zzbjVar = null;
        if (intValue == 1 && zzccnVar != null) {
            a.z("read-from-disk-start", bundle);
            zzbjVar = zzbVar.zzb(zzccnVar, zzauVar, bundle);
            a.z("read-from-disk-end", bundle);
        }
        if (zzbjVar != null) {
            zzdjgVar.t0(zzbjVar);
            return zzgym.a(zzbjVar);
        }
        zzfml b = zzfmuVar.a(zzb2.b(), zzfmo.GENERATE_SIGNALS).b(zzb);
        long intValue2 = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x6)).intValue();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        zzfmb d = b.c(intValue2).d();
        zzgym.k(d, new zzaw(zzdjgVar), zzcdo.f5068a);
        return d;
    }
}
