package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzene implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6712a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdtj f6713c;

    public zzene(Context context, Executor executor, zzdtj zzdtjVar) {
        this.f6712a = context;
        this.b = executor;
        this.f6713c = zzdtjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final void a(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        Exception exc;
        JSONObject jSONObject = zzfhrVar.v;
        IInterface iInterface = zzejjVar.f6560c;
        Object obj = zzejjVar.b;
        try {
            zzfik zzfikVar = zzficVar.f7383a.f7378a;
            zzfhy zzfhyVar = zzfikVar.p;
            com.google.android.gms.ads.internal.client.zzm zzmVar = zzfikVar.d;
            int i = zzfhyVar.f7377a;
            Context context = this.f6712a;
            if (i == 3) {
                zzfji zzfjiVar = (zzfji) obj;
                try {
                    zzfjiVar.f7412a.j4(new ObjectWrapper(context), zzmVar, jSONObject.toString(), (zzbtf) iInterface);
                    return;
                } finally {
                }
            }
            zzfji zzfjiVar2 = (zzfji) obj;
            try {
                zzfjiVar2.f7412a.M(new ObjectWrapper(context), zzmVar, jSONObject.toString(), (zzbtf) iInterface);
                return;
            } finally {
            }
        } catch (Exception e) {
            String str = zzejjVar.f6559a;
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to load ad from adapter ".concat(String.valueOf(str)), e);
        }
        String str2 = zzejjVar.f6559a;
        int i22 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to load ad from adapter ".concat(String.valueOf(str2)), e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzdjw, com.google.android.gms.internal.ads.zzdtg] */
    @Override // com.google.android.gms.internal.ads.zzejm
    public final Object b(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzdtf a2 = this.f6713c.a(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzdjw(new zzend(this, zzejjVar, zzfhrVar), null));
        a2.a().m0(new zzcqq((zzfji) zzejjVar.b), this.b);
        ((zzekv) zzejjVar.f6560c).d5((zzenj) ((zzcnx) a2).z.zzb());
        return a2.g();
    }
}
