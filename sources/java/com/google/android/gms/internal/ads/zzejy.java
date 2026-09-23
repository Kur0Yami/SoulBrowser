package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzejy implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6579a;
    public final zzcsq b;

    public zzejy(Context context, zzcsq zzcsqVar) {
        this.f6579a = context;
        this.b = zzcsqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final void a(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        try {
            zzbuy zzbuyVar = (zzbuy) zzejjVar.b;
            zzbuyVar.zzo(zzfhrVar.Z);
            zzbuyVar.H2(zzfhrVar.U, zzfhrVar.v.toString(), zzficVar.f7383a.f7378a.d, new ObjectWrapper(this.f6579a), new zzejx(zzejjVar), (zzbtf) zzejjVar.f6560c);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading an app open RTB ad", e);
            throw new Exception(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final Object b(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzele zzeleVar = new zzele(zzfhrVar, (zzbuy) zzejjVar.b, AdFormat.APP_OPEN_AD);
        zzcsn a2 = this.b.a(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzdjw(zzeleVar, null), new zzcso(zzfhrVar.a0));
        zzeleVar.d = a2.c();
        ((zzekv) zzejjVar.f6560c).d5(a2.f());
        return a2.g();
    }
}
