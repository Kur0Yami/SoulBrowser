package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzelj implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6639a;
    public final zzdkz b;

    public zzelj(Context context, zzdkz zzdkzVar) {
        this.f6639a = context;
        this.b = zzdkzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final void a(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        try {
            zzbuy zzbuyVar = (zzbuy) zzejjVar.b;
            zzbuyVar.zzo(zzfhrVar.Z);
            zzbuyVar.s1(zzfhrVar.U, zzfhrVar.v.toString(), zzficVar.f7383a.f7378a.d, new ObjectWrapper(this.f6639a), new zzeli(this, zzejjVar), (zzbtf) zzejjVar.f6560c);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Remote exception loading a interstitial RTB ad", e);
            throw new Exception(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final Object b(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzele zzeleVar = new zzele(zzfhrVar, (zzbuy) zzejjVar.b, AdFormat.INTERSTITIAL);
        zzdjt d = this.b.d(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzdjw(zzeleVar, null));
        zzeleVar.d = d.c();
        ((zzekv) zzejjVar.f6560c).d5(d.f());
        return d.g();
    }
}
