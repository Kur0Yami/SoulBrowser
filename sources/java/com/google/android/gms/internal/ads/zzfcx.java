package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfcx implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzere f7229a;
    public final /* synthetic */ zzfno b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfne f7230c;
    public final /* synthetic */ zzfcy d;
    public final /* synthetic */ zzfdb e;

    public zzfcx(zzfdb zzfdbVar, zzere zzereVar, zzfno zzfnoVar, zzfne zzfneVar, zzfcy zzfcyVar) {
        this.f7229a = zzereVar;
        this.b = zzfnoVar;
        this.f7230c = zzfneVar;
        this.d = zzfcyVar;
        this.e = zzfdbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzfno zzfnoVar;
        zzfdb zzfdbVar = this.e;
        zzcvk zzcvkVar = (zzcvk) obj;
        synchronized (zzfdbVar) {
            if (zzcvkVar != null) {
                try {
                    zzcvkVar.b();
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzfdbVar.j = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s9)).booleanValue()) {
                zzcvkVar.g.f5755c.f5728a.h = zzfdbVar.d;
            }
            this.f7229a.a(zzcvkVar);
            if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzfnoVar = this.b) != null) {
                zzfnoVar.e(zzcvkVar.f5506a.b);
                zzfnoVar.g(zzcvkVar.f.f5650c);
                zzfne zzfneVar = this.f7230c;
                zzfneVar.zzd(true);
                zzfnoVar.a(zzfneVar);
                zzfnoVar.h();
            } else {
                zzfnr zzfnrVar = zzfdbVar.h;
                zzfne zzfneVar2 = this.f7230c;
                zzfneVar2.e(zzcvkVar.f5506a.b);
                zzfneVar2.zzi(zzcvkVar.f.f5650c);
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
            com.google.android.gms.ads.internal.util.zze.zzb("App open ad failed to load", th);
        }
        zzfdb zzfdbVar = this.e;
        zzcsm zzcsmVar = (zzcsm) zzfdbVar.e.zzd();
        if (zzcsmVar == null) {
            b = zzfjm.b(th, null);
        } else {
            b = zzfjm.b(th, zzcsmVar.zza().l);
        }
        synchronized (zzfdbVar) {
            try {
                zzfdbVar.j = null;
                if (zzcsmVar != null) {
                    zzcsmVar.zze().S(b);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s9)).booleanValue()) {
                        zzfdbVar.b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcw
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzfcx.this.e.d.S(b);
                            }
                        });
                    }
                } else {
                    zzfdbVar.d.S(b);
                    ((zzcsm) zzfdbVar.c(this.d).zzh()).zza().f.zzo();
                }
                zzfjh.a(b.zza, "AppOpenAdLoader.onFailure", th);
                this.f7229a.zza();
                if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzfnoVar = this.b) != null) {
                    zzfnoVar.f(b);
                    zzfne zzfneVar = this.f7230c;
                    zzfneVar.a(th);
                    zzfneVar.zzd(false);
                    zzfnoVar.a(zzfneVar);
                    zzfnoVar.h();
                } else {
                    zzfnr zzfnrVar = zzfdbVar.h;
                    zzfne zzfneVar2 = this.f7230c;
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
