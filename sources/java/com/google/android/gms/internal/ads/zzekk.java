package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzekk implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6596a;
    public final zzcuh b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6597c;

    public zzekk(Context context, zzcuh zzcuhVar, Executor executor) {
        this.f6596a = context;
        this.b = zzcuhVar;
        this.f6597c = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final void a(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        com.google.android.gms.ads.internal.client.zzr a2;
        Exception exc;
        zzfhw zzfhwVar = zzfhrVar.s;
        JSONObject jSONObject = zzfhrVar.v;
        boolean z = zzfhrVar.g0;
        IInterface iInterface = zzejjVar.f6560c;
        Object obj = zzejjVar.b;
        zzfik zzfikVar = zzficVar.f7383a.f7378a;
        com.google.android.gms.ads.internal.client.zzr zzrVar = zzfikVar.f;
        boolean z2 = zzrVar.zzn;
        Context context = this.f6596a;
        if (z2) {
            a2 = new com.google.android.gms.ads.internal.client.zzr(context, com.google.android.gms.ads.zzc.zzb(zzrVar.zze, zzrVar.zzb));
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y8)).booleanValue() && z) {
                a2 = new com.google.android.gms.ads.internal.client.zzr(context, com.google.android.gms.ads.zzc.zzc(zzrVar.zze, zzrVar.zzb));
            } else {
                a2 = zzfiq.a(context, zzfhrVar.u);
            }
        }
        com.google.android.gms.ads.internal.client.zzr zzrVar2 = a2;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y8)).booleanValue() && z) {
            zzfji zzfjiVar = (zzfji) obj;
            try {
                zzfjiVar.f7412a.R0(new ObjectWrapper(context), zzrVar2, zzfikVar.d, jSONObject.toString(), com.google.android.gms.ads.internal.util.zzbp.zzm(zzfhwVar), (zzbtf) iInterface);
                return;
            } finally {
            }
        }
        zzfji zzfjiVar2 = (zzfji) obj;
        try {
            zzfjiVar2.f7412a.q2(new ObjectWrapper(context), zzrVar2, zzfikVar.d, jSONObject.toString(), com.google.android.gms.ads.internal.util.zzbp.zzm(zzfhwVar), (zzbtf) iInterface);
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final Object b(zzfic zzficVar, final zzfhr zzfhrVar, zzejj zzejjVar) {
        Exception exc;
        final View view;
        Object obj = zzejjVar.b;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y8)).booleanValue() && zzfhrVar.g0) {
            try {
                zzbti m = ((zzfji) obj).f7412a.m();
                if (m != null) {
                    try {
                        view = (View) ObjectWrapper.f2(m.zze());
                        boolean zzf = m.zzf();
                        if (view != null) {
                            if (zzf) {
                                try {
                                    view = (View) ((zzgxf) zzgym.h(zzgyq.f, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzeki
                                        @Override // com.google.android.gms.internal.ads.zzgxu
                                        public final /* synthetic */ ListenableFuture zza(Object obj2) {
                                            return zzgym.a(zzcuw.a(zzekk.this.f6596a, view, zzfhrVar));
                                        }
                                    }, zzcdo.f)).get();
                                } catch (InterruptedException | ExecutionException e) {
                                    throw new Exception(e);
                                }
                            }
                        } else {
                            throw new Exception(new Exception("BannerAdapterWrapper interscrollerView should not be null"));
                        }
                    } catch (RemoteException e2) {
                        throw new Exception(e2);
                    }
                } else {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad.");
                    throw new Exception(new Exception("getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."));
                }
            } finally {
            }
        } else {
            try {
                view = (View) ObjectWrapper.f2(((zzfji) obj).f7412a.zzf());
            } finally {
            }
        }
        final zzfji zzfjiVar = (zzfji) obj;
        zzctd d = this.b.d(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzctj(view, null, new zzcvi() { // from class: com.google.android.gms.internal.ads.zzekj
            @Override // com.google.android.gms.internal.ads.zzcvi
            public final com.google.android.gms.ads.internal.client.zzed zza() {
                try {
                    return zzfji.this.f7412a.zzB();
                } catch (Throwable th) {
                    throw new Exception(th);
                }
            }
        }, (zzfhs) zzfhrVar.u.get(0)));
        d.i().t0(view);
        d.a().m0(new zzcqq(zzfjiVar), this.f6597c);
        ((zzekv) zzejjVar.f6560c).d5(d.e());
        return d.g();
    }
}
