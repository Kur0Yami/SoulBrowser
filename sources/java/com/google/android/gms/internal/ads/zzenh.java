package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzenh implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6717a;
    public final zzdtj b;

    public zzenh(Context context, zzdtj zzdtjVar) {
        this.f6717a = context;
        this.b = zzdtjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final void a(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        try {
            Object obj = zzejjVar.b;
            IInterface iInterface = zzejjVar.f6560c;
            zzbuy zzbuyVar = (zzbuy) obj;
            String str = zzfhrVar.Z;
            JSONObject jSONObject = zzfhrVar.v;
            zzbuyVar.zzo(str);
            zzfik zzfikVar = zzficVar.f7383a.f7378a;
            int i = zzfikVar.p.f7377a;
            Context context = this.f6717a;
            if (i == 3) {
                zzbuyVar.W3(zzfhrVar.U, jSONObject.toString(), zzfikVar.d, new ObjectWrapper(context), new zzeng(this, zzejjVar), (zzbtf) iInterface);
            } else {
                zzbuyVar.D1(zzfhrVar.U, jSONObject.toString(), zzfikVar.d, new ObjectWrapper(context), new zzeng(this, zzejjVar), (zzbtf) iInterface);
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading a rewarded RTB ad", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzdjw, com.google.android.gms.internal.ads.zzdtg] */
    @Override // com.google.android.gms.internal.ads.zzejm
    public final Object b(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzele zzeleVar = new zzele(zzfhrVar, (zzbuy) zzejjVar.b, AdFormat.REWARDED);
        zzdtf a2 = this.b.a(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzdjw(zzeleVar, null));
        zzeleVar.d = a2.c();
        zzcnx zzcnxVar = (zzcnx) a2;
        ((zzekv) zzejjVar.f6560c).d5(new zzeod((zzdai) zzcnxVar.m.zzb(), (zzdip) zzcnxVar.o.zzb(), (zzdbc) zzcnxVar.i.zzb(), (zzdbr) zzcnxVar.l.zzb(), (zzdbw) zzcnxVar.p.zzb(), (zzdax) zzcnxVar.v.zzb(), (zzdfo) zzcnxVar.d.W.zzb(), (zzdjn) zzcnxVar.s.zzb(), (zzdcv) zzcnxVar.r.zzb(), (zzdja) zzcnxVar.x.zzb(), (zzdfk) zzcnxVar.t.zzb()));
        return a2.g();
    }
}
