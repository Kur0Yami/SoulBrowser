package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import com.google.android.gms.internal.ads.zzayq;
import com.google.android.gms.internal.ads.zzbhq;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzclg;
import com.google.android.gms.internal.ads.zzclp;
import com.google.android.gms.internal.ads.zzcmg;
import com.google.android.gms.internal.ads.zzdxj;
import com.google.android.gms.internal.ads.zzfio;
import com.google.android.gms.internal.ads.zzfjj;
import com.google.android.gms.internal.ads.zzfpi;
import com.google.android.gms.internal.ads.zzgyw;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijo;
import com.google.android.gms.internal.ads.zzijp;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzav implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3238a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f3239c;
    public final zzijp d;
    public final zzijp e;
    public final zzijp f;
    public final zzijp g;
    public final zzijp h;
    public final zzijp i;
    public final zzijp j;
    public final zzijp k;
    public final zzijp l;

    public zzav(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4, zzijp zzijpVar5, zzijp zzijpVar6, zzijp zzijpVar7, zzijp zzijpVar8, zzijp zzijpVar9, zzijp zzijpVar10, zzijp zzijpVar11, zzijp zzijpVar12) {
        this.f3238a = zzijpVar;
        this.b = zzijpVar2;
        this.f3239c = zzijpVar3;
        this.d = zzijpVar4;
        this.e = zzijpVar5;
        this.f = zzijpVar6;
        this.g = zzijpVar7;
        this.h = zzijpVar8;
        this.i = zzijpVar9;
        this.j = zzijpVar10;
        this.k = zzijpVar11;
        this.l = zzijpVar12;
    }

    public static zzav zza(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4, zzijp zzijpVar5, zzijp zzijpVar6, zzijp zzijpVar7, zzijp zzijpVar8, zzijp zzijpVar9, zzijp zzijpVar10, zzijp zzijpVar11, zzijp zzijpVar12, zzijp zzijpVar13) {
        return new zzav(zzijpVar, zzijpVar2, zzijpVar3, zzijpVar4, zzijpVar6, zzijpVar7, zzijpVar8, zzijpVar9, zzijpVar10, zzijpVar11, zzijpVar12, zzijpVar13);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzclg zzclgVar = (zzclg) this.f3238a.zzb();
        Context a2 = ((zzclp) this.b).a();
        zzayq zzayqVar = (zzayq) this.f3239c.zzb();
        zzfjj zzfjjVar = (zzfjj) this.d.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzau(zzclgVar, a2, zzayqVar, zzfjjVar, zzgywVar, (ScheduledExecutorService) this.e.zzb(), (zzdxj) this.f.zzb(), (zzfpi) this.g.zzb(), ((zzcmg) this.h).a(), ((zzbhq) this.i).zzb(), (zzfio) this.j.zzb(), (zzo) this.k.zzb(), (zzf) this.l.zzb());
    }
}
