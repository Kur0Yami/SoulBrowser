package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzekw extends zzbzw implements zzdbu {

    /* renamed from: c, reason: collision with root package name */
    public zzbzx f6616c;
    public zzdbt f;
    public zzdjc g;

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void B1(IObjectWrapper iObjectWrapper, int i) {
        zzdbt zzdbtVar = this.f;
        if (zzdbtVar != null) {
            zzdbtVar.zzb(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void O4(IObjectWrapper iObjectWrapper) {
        zzbzx zzbzxVar = this.f6616c;
        if (zzbzxVar != null) {
            ((zzeny) zzbzxVar).f.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void o0(IObjectWrapper iObjectWrapper) {
        zzbzx zzbzxVar = this.f6616c;
        if (zzbzxVar != null) {
            ((zzeny) zzbzxVar).g.s0(zzdbp.f5679a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void q3(IObjectWrapper iObjectWrapper) {
        zzbzx zzbzxVar = this.f6616c;
        if (zzbzxVar != null) {
            ((zzeny) zzbzxVar).h.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbu
    public final synchronized void r2(zzdbt zzdbtVar) {
        this.f = zzdbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void s2(IObjectWrapper iObjectWrapper) {
        zzbzx zzbzxVar = this.f6616c;
        if (zzbzxVar != null) {
            ((zzeny) zzbzxVar).h.U(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void u(IObjectWrapper iObjectWrapper) {
        zzdjc zzdjcVar = this.g;
        if (zzdjcVar != null) {
            final zzejj zzejjVar = ((zzenw) zzdjcVar).f6737c;
            final zzfhr zzfhrVar = ((zzenw) zzdjcVar).b;
            final zzfic zzficVar = ((zzenw) zzdjcVar).f6736a;
            ((zzenw) zzdjcVar).d.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzenv
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzenz.c(zzfic.this, zzfhrVar, zzejjVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void v3(IObjectWrapper iObjectWrapper, zzbzy zzbzyVar) {
        zzbzx zzbzxVar = this.f6616c;
        if (zzbzxVar != null) {
            ((zzeny) zzbzxVar).h.U(zzbzyVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void y(IObjectWrapper iObjectWrapper) {
        zzbzx zzbzxVar = this.f6616c;
        if (zzbzxVar != null) {
            ((zzeny) zzbzxVar).f6739c.zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzf(IObjectWrapper iObjectWrapper, int i) {
        zzdjc zzdjcVar = this.g;
        if (zzdjcVar != null) {
            String str = ((zzenw) zzdjcVar).f6737c.f6559a;
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Fail to initialize adapter ".concat(String.valueOf(str)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzg(IObjectWrapper iObjectWrapper) {
        zzdbt zzdbtVar = this.f;
        if (zzdbtVar != null) {
            zzdbtVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzj(IObjectWrapper iObjectWrapper) {
        zzbzx zzbzxVar = this.f6616c;
        if (zzbzxVar != null) {
            zzbzxVar.zzj(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final synchronized void zzn(IObjectWrapper iObjectWrapper) {
        zzbzx zzbzxVar = this.f6616c;
        if (zzbzxVar != null) {
            ((zzeny) zzbzxVar).g.t0();
        }
    }
}
