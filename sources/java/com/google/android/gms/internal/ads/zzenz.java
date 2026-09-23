package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzenz implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6740a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdtj f6741c;

    public zzenz(Context context, Executor executor, zzdtj zzdtjVar) {
        this.f6740a = context;
        this.b = executor;
        this.f6741c = zzdtjVar;
    }

    public static final void c(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        try {
            zzfji zzfjiVar = (zzfji) zzejjVar.b;
            try {
                zzfjiVar.f7412a.d0(zzficVar.f7383a.f7378a.d, zzfhrVar.v.toString());
            } catch (Throwable th) {
                throw new Exception(th);
            }
        } catch (Exception e) {
            String str = zzejjVar.f6559a;
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to load ad from adapter ".concat(String.valueOf(str)), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final void a(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzfji zzfjiVar = (zzfji) zzejjVar.b;
        if (!zzfjiVar.a()) {
            zzenw zzenwVar = new zzenw(this, zzficVar, zzfhrVar, zzejjVar);
            IInterface iInterface = zzejjVar.f6560c;
            zzekw zzekwVar = (zzekw) iInterface;
            synchronized (zzekwVar) {
                zzekwVar.g = zzenwVar;
            }
            Context context = this.f6740a;
            zzfik zzfikVar = zzficVar.f7383a.f7378a;
            zzbzx zzbzxVar = (zzbzx) iInterface;
            String jSONObject = zzfhrVar.v.toString();
            try {
                zzfjiVar.f7412a.j1(new ObjectWrapper(context), zzfikVar.d, zzbzxVar, jSONObject);
                return;
            } catch (Throwable th) {
                throw new Exception(th);
            }
        }
        c(zzficVar, zzfhrVar, zzejjVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [com.google.android.gms.internal.ads.zzdjw, com.google.android.gms.internal.ads.zzdtg] */
    @Override // com.google.android.gms.internal.ads.zzejm
    public final Object b(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzdtf a2 = this.f6741c.a(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzdjw(new zzenx(this, zzejjVar, zzfhrVar), null));
        a2.a().m0(new zzcqq((zzfji) zzejjVar.b), this.b);
        zzcnx zzcnxVar = (zzcnx) a2;
        zzdbr zzdbrVar = (zzdbr) zzcnxVar.l.zzb();
        zzdai b = a2.b();
        zzdcv zzdcvVar = (zzdcv) zzcnxVar.r.zzb();
        zzdja i = a2.i();
        zzekw zzekwVar = (zzekw) zzejjVar.f6560c;
        zzeny zzenyVar = new zzeny(this, zzdcvVar, b, zzdbrVar, i);
        synchronized (zzekwVar) {
            zzekwVar.f6616c = zzenyVar;
        }
        return a2.g();
    }
}
