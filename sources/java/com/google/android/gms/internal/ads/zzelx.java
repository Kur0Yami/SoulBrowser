package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzelx implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6658a;
    public final zzdlv b;

    /* renamed from: c, reason: collision with root package name */
    public zzbto f6659c;
    public final VersionInfoParcel d;

    public zzelx(Context context, zzdlv zzdlvVar, VersionInfoParcel versionInfoParcel) {
        this.f6658a = context;
        this.b = zzdlvVar;
        this.d = versionInfoParcel;
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
            int i = this.d.clientJarVersion;
            int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l2)).intValue();
            Context context = this.f6658a;
            if (i < intValue) {
                zzbuyVar.L3(zzfhrVar.U, jSONObject.toString(), zzficVar.f7383a.f7378a.d, new ObjectWrapper(context), new zzelw(this, zzejjVar), (zzbtf) iInterface);
                return;
            }
            String str2 = zzfhrVar.U;
            String jSONObject2 = jSONObject.toString();
            zzfik zzfikVar = zzficVar.f7383a.f7378a;
            zzbuyVar.N(str2, jSONObject2, zzfikVar.d, new ObjectWrapper(context), new zzelw(this, zzejjVar), (zzbtf) iInterface, zzfikVar.j);
        } catch (RemoteException e) {
            throw new Exception(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final Object b(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        ArrayList arrayList = zzficVar.f7383a.f7378a.h;
        if (arrayList.contains(Integer.toString(6))) {
            zzdnm x = zzdnm.x(this.f6659c);
            if (arrayList.contains(Integer.toString(x.T()))) {
                zzdno d = this.b.d(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzdnx(x), new zzdpq(null, null, this.f6659c));
                ((zzekv) zzejjVar.f6560c).d5(d.f());
                return d.g();
            }
            throw new zzebr(1, "No corresponding native ad listener");
        }
        throw new zzebr(2, "Unified must be used for RTB.");
    }
}
