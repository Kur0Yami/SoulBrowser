package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzctf extends zzctc {
    public final Context l;
    public final View m;
    public final zzcir n;
    public final zzfhs o;
    public final zzcvi p;
    public final zzdnw q;
    public final zzdit r;
    public final zzija s;
    public final Executor t;
    public com.google.android.gms.ads.internal.client.zzr u;

    public zzctf(zzcvj zzcvjVar, Context context, zzfhs zzfhsVar, View view, zzcir zzcirVar, zzcvi zzcviVar, zzdnw zzdnwVar, zzdit zzditVar, zzija zzijaVar, Executor executor) {
        super(zzcvjVar);
        this.l = context;
        this.m = view;
        this.n = zzcirVar;
        this.o = zzfhsVar;
        this.p = zzcviVar;
        this.q = zzdnwVar;
        this.r = zzditVar;
        this.s = zzijaVar;
        this.t = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcvk
    public final void a() {
        this.t.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcte
            @Override // java.lang.Runnable
            public final void run() {
                zzctf zzctfVar = zzctf.this;
                zzblj zzbljVar = zzctfVar.q.d;
                if (zzbljVar == null) {
                    return;
                }
                try {
                    zzbljVar.g0((com.google.android.gms.ads.internal.client.zzbx) zzctfVar.s.zzb(), new ObjectWrapper(zzctfVar.l));
                } catch (RemoteException e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("RemoteException when notifyAdLoad is called", e);
                }
            }
        });
        super.a();
    }

    @Override // com.google.android.gms.internal.ads.zzctc
    public final View c() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.zzctc
    public final void d(FrameLayout frameLayout, com.google.android.gms.ads.internal.client.zzr zzrVar) {
        zzcir zzcirVar;
        if (frameLayout != null && (zzcirVar = this.n) != null) {
            zzcirVar.a0(zzclb.a(zzrVar));
            frameLayout.setMinimumHeight(zzrVar.zzc);
            frameLayout.setMinimumWidth(zzrVar.zzf);
            this.u = zzrVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzctc
    public final com.google.android.gms.ads.internal.client.zzed e() {
        try {
            return this.p.zza();
        } catch (zzfir unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzctc
    public final zzfhs f() {
        com.google.android.gms.ads.internal.client.zzr zzrVar = this.u;
        if (zzrVar != null) {
            if (zzrVar.zzi) {
                return new zzfhs(-3, 0, true);
            }
            return new zzfhs(zzrVar.zze, zzrVar.zzb, false);
        }
        zzfhr zzfhrVar = this.b;
        if (zzfhrVar.c0) {
            for (String str : zzfhrVar.f7367a) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            View view = this.m;
            return new zzfhs(view.getWidth(), view.getHeight(), false);
        }
        return (zzfhs) zzfhrVar.r.get(0);
    }

    @Override // com.google.android.gms.internal.ads.zzctc
    public final zzfhs g() {
        return this.o;
    }

    @Override // com.google.android.gms.internal.ads.zzctc
    public final int h() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y8)).booleanValue() && this.b.g0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z8)).booleanValue()) {
                return 0;
            }
        }
        return this.f5506a.b.b.f7373c;
    }

    @Override // com.google.android.gms.internal.ads.zzctc
    public final int i() {
        return this.f5506a.b.b.d;
    }

    @Override // com.google.android.gms.internal.ads.zzctc
    public final void j() {
        zzdit zzditVar = this.r;
        synchronized (zzditVar) {
            zzditVar.s0(zzdis.f5821a);
        }
    }
}
