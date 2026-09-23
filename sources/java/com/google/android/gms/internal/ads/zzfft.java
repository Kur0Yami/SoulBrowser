package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfft implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzere f7309a;
    public final /* synthetic */ zzfno b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfne f7310c;
    public final /* synthetic */ zzdkz d;
    public final /* synthetic */ zzffv e;

    public zzfft(zzffv zzffvVar, zzere zzereVar, zzfno zzfnoVar, zzfne zzfneVar, zzdkz zzdkzVar) {
        this.f7309a = zzereVar;
        this.b = zzfnoVar;
        this.f7310c = zzfneVar;
        this.d = zzdkzVar;
        this.e = zzffvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzfno zzfnoVar;
        zzffv zzffvVar = this.e;
        zzdjs zzdjsVar = (zzdjs) obj;
        synchronized (zzffvVar) {
            if (zzdjsVar != null) {
                try {
                    zzdjsVar.b();
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzffvVar.i = null;
            zzbgb zzbgbVar = zzbgk.t9;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                zzdea zzdeaVar = zzdjsVar.g.f5755c;
                zzeqp zzeqpVar = zzffvVar.d;
                zzdfb zzdfbVar = zzdeaVar.f5728a;
                zzdfbVar.f = zzeqpVar;
                zzdfbVar.i = zzffvVar.e;
            }
            this.f7309a.a(zzdjsVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
                zzffvVar.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffs
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfft.this.e.d.zzg();
                    }
                });
                zzffvVar.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffp
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzfft.this.e.e.zzg();
                    }
                });
            }
            if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzfnoVar = this.b) != null) {
                zzfnoVar.e(zzdjsVar.f5506a.b);
                zzfnoVar.g(zzdjsVar.f.f5650c);
                zzfne zzfneVar = this.f7310c;
                zzfneVar.zzd(true);
                zzfnoVar.a(zzfneVar);
                zzfnoVar.h();
            } else {
                zzfnr zzfnrVar = zzffvVar.g;
                zzfne zzfneVar2 = this.f7310c;
                zzfneVar2.e(zzdjsVar.f5506a.b);
                zzfneVar2.zzi(zzdjsVar.f.f5650c);
                zzfneVar2.zzd(true);
                zzfnrVar.b(zzfneVar2.zzm());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzfno zzfnoVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F6)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Interstitial ad failed to load", th);
        }
        zzdkz zzdkzVar = this.d;
        final com.google.android.gms.ads.internal.client.zze b = zzfjm.b(th, zzdkzVar.b().l);
        zzffv zzffvVar = this.e;
        synchronized (zzffvVar) {
            try {
                zzffvVar.i = null;
                zzdkzVar.a().S(b);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t9)).booleanValue()) {
                    zzffvVar.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffq
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzfft.this.e.d.S(b);
                        }
                    });
                    zzffvVar.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffr
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzfft.this.e.e.S(b);
                        }
                    });
                }
                zzfjh.a(b.zza, "InterstitialAdLoader.onFailure", th);
                this.f7309a.zza();
                if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzfnoVar = this.b) != null) {
                    zzfnoVar.f(b);
                    zzfne zzfneVar = this.f7310c;
                    zzfneVar.a(th);
                    zzfneVar.zzd(false);
                    zzfnoVar.a(zzfneVar);
                    zzfnoVar.h();
                } else {
                    zzfnr zzfnrVar = zzffvVar.g;
                    zzfne zzfneVar2 = this.f7310c;
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
