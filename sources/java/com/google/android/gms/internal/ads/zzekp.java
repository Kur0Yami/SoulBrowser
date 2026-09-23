package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzekp implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6604a;
    public final zzcuh b;

    /* renamed from: c, reason: collision with root package name */
    public View f6605c;
    public zzbti d;

    public zzekp(Context context, zzcuh zzcuhVar) {
        this.f6604a = context;
        this.b = zzcuhVar;
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
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y8)).booleanValue();
            Context context = this.f6604a;
            if (booleanValue && zzfhrVar.g0) {
                String str2 = zzfhrVar.U;
                String jSONObject2 = jSONObject.toString();
                zzfik zzfikVar = zzficVar.f7383a.f7378a;
                zzbuyVar.m1(str2, jSONObject2, zzfikVar.d, new ObjectWrapper(context), new zzeko(this, zzejjVar), (zzbtf) iInterface, zzfikVar.f);
                return;
            }
            String str3 = zzfhrVar.U;
            String jSONObject3 = jSONObject.toString();
            zzfik zzfikVar2 = zzficVar.f7383a.f7378a;
            zzbuyVar.j2(str3, jSONObject3, zzfikVar2.d, new ObjectWrapper(context), new zzeko(this, zzejjVar), (zzbtf) iInterface, zzfikVar2.f);
        } catch (RemoteException e) {
            throw new Exception(e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final Object b(zzfic zzficVar, final zzfhr zzfhrVar, final zzejj zzejjVar) {
        final View view;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y8)).booleanValue() && zzfhrVar.g0) {
            try {
                view = (View) ObjectWrapper.f2(this.d.zze());
                boolean zzf = this.d.zzf();
                if (view != null) {
                    if (zzf) {
                        try {
                            view = (View) ((zzgxf) zzgym.h(zzgyq.f, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzekm
                                @Override // com.google.android.gms.internal.ads.zzgxu
                                public final /* synthetic */ ListenableFuture zza(Object obj) {
                                    return zzgym.a(zzcuw.a(zzekp.this.f6604a, view, zzfhrVar));
                                }
                            }, zzcdo.f)).get();
                        } catch (InterruptedException | ExecutionException e) {
                            throw new Exception(e);
                        }
                    }
                } else {
                    throw new Exception(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
            } catch (RemoteException e2) {
                throw new Exception(e2);
            }
        } else {
            view = this.f6605c;
        }
        zzctd d = this.b.d(new zzcwa(zzficVar, zzfhrVar, zzejjVar.f6559a), new zzctj(view, null, new zzcvi() { // from class: com.google.android.gms.internal.ads.zzekn
            @Override // com.google.android.gms.internal.ads.zzcvi
            public final com.google.android.gms.ads.internal.client.zzed zza() {
                try {
                    return ((zzbuy) zzejj.this.b).zzh();
                } catch (RemoteException e3) {
                    throw new Exception(e3);
                }
            }
        }, (zzfhs) zzfhrVar.u.get(0)));
        d.i().t0(view);
        ((zzekv) zzejjVar.f6560c).d5(d.f());
        return d.g();
    }
}
