package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzfix {

    /* renamed from: a, reason: collision with root package name */
    public final zzfhr f7401a;
    public final zzfhu b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfpi f7402c;
    public final zzfpa d;
    public final zzfno e;
    public final zzcra f;

    public zzfix(zzfpi zzfpiVar, zzfpa zzfpaVar, zzfhr zzfhrVar, zzfhu zzfhuVar, zzcra zzcraVar, zzfno zzfnoVar) {
        this.f7401a = zzfhrVar;
        this.b = zzfhuVar;
        this.f7402c = zzfpiVar;
        this.d = zzfpaVar;
        this.f = zzcraVar;
        this.e = zzfnoVar;
    }

    public final void a(ArrayList arrayList, zzdcz zzdczVar) {
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str = (String) obj;
            zzfhr zzfhrVar = this.f7401a;
            if (!zzfhrVar.i0) {
                zzfno zzfnoVar = this.e;
                this.f7402c.b(str, zzfhrVar.x0, zzfnoVar, zzdczVar);
            } else {
                String str2 = this.b.b;
                zzfpa zzfpaVar = this.d;
                zzfpaVar.getClass();
                zzehw zzehwVar = new zzehw(2, str2, str, com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
                zzehu zzehuVar = zzfpaVar.f7521a;
                zzehuVar.getClass();
                zzehuVar.a(new zzehr(zzehuVar, zzehwVar));
            }
        }
    }

    public final void b(int i, ArrayList arrayList) {
        ListenableFuture a2;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            String str = (String) obj;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.tb)).booleanValue() && zzcra.b(str)) {
                a2 = this.f.a(str, com.google.android.gms.ads.internal.client.zzbb.zzh());
            } else {
                a2 = zzgym.a(str);
            }
            zzfiw zzfiwVar = new zzfiw(this, i);
            a2.k(new zzgyk(a2, zzfiwVar), zzcdo.f5068a);
        }
    }
}
