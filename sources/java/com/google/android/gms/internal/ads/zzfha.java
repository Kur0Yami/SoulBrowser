package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfha implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzere f7346a;
    public final /* synthetic */ zzfno b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfne f7347c;
    public final /* synthetic */ zzfhd d;
    public final /* synthetic */ zzfhe e;

    public zzfha(zzfhe zzfheVar, zzere zzereVar, zzfno zzfnoVar, zzfne zzfneVar, zzfhd zzfhdVar) {
        this.f7346a = zzereVar;
        this.b = zzfnoVar;
        this.f7347c = zzfneVar;
        this.d = zzfhdVar;
        this.e = zzfheVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzfno zzfnoVar;
        zzfhe zzfheVar = this.e;
        zzdte zzdteVar = (zzdte) obj;
        synchronized (zzfheVar) {
            if (zzdteVar != null) {
                try {
                    zzdteVar.b();
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzdteVar.g.f5755c.f5728a.i = zzfheVar.d;
            this.f7346a.a(zzdteVar);
            Executor executor = zzfheVar.b;
            final zzfgv zzfgvVar = zzfheVar.d;
            Objects.requireNonNull(zzfgvVar);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfgy
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfgv.this.zzg();
                }
            });
            zzfheVar.d.onAdMetadataChanged();
            if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzfnoVar = this.b) != null) {
                zzfnoVar.e(zzdteVar.f5506a.b);
                zzfnoVar.g(zzdteVar.f.f5650c);
                zzfne zzfneVar = this.f7347c;
                zzfneVar.zzd(true);
                zzfnoVar.a(zzfneVar);
                zzfnoVar.h();
            } else {
                zzfnr zzfnrVar = zzfheVar.g;
                zzfne zzfneVar2 = this.f7347c;
                zzfneVar2.e(zzdteVar.f5506a.b);
                zzfneVar2.zzi(zzdteVar.f.f5650c);
                zzfneVar2.zzd(true);
                zzfnrVar.b(zzfneVar2.zzm());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        final com.google.android.gms.ads.internal.client.zze b;
        zzfno zzfnoVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F6)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Rewarded ad failed to load", th);
        }
        zzfhe zzfheVar = this.e;
        zzdtj zzdtjVar = (zzdtj) zzfheVar.e.zzd();
        if (zzdtjVar == null) {
            b = zzfjm.b(th, null);
        } else {
            b = zzfjm.b(th, ((zzcnz) zzdtjVar).zza().l);
        }
        synchronized (zzfheVar) {
            try {
                if (zzdtjVar != null) {
                    zzdtjVar.zze().S(b);
                    zzfheVar.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfgz
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzfha.this.e.d.S(b);
                        }
                    });
                } else {
                    zzfheVar.d.S(b);
                    ((zzcnz) ((zzcny) zzfheVar.b(this.d)).zzh()).zza().f.zzo();
                }
                zzfjh.a(b.zza, "RewardedAdLoader.onFailure", th);
                this.f7346a.zza();
                if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzfnoVar = this.b) != null) {
                    zzfnoVar.f(b);
                    zzfne zzfneVar = this.f7347c;
                    zzfneVar.a(th);
                    zzfneVar.zzd(false);
                    zzfnoVar.a(zzfneVar);
                    zzfnoVar.h();
                } else {
                    zzfnr zzfnrVar = zzfheVar.g;
                    zzfne zzfneVar2 = this.f7347c;
                    zzfneVar2.b(b);
                    zzfneVar2.a(th);
                    zzfneVar2.zzd(false);
                    zzfnrVar.b(zzfneVar2.zzm());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
