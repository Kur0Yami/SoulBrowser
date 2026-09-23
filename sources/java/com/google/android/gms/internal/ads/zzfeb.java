package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfeb implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfno f7263a;
    public final /* synthetic */ zzfne b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcuh f7264c;
    public final /* synthetic */ zzfef d;

    public zzfeb(zzfef zzfefVar, zzfno zzfnoVar, zzfne zzfneVar, zzcuh zzcuhVar) {
        this.f7263a = zzfnoVar;
        this.b = zzfneVar;
        this.f7264c = zzcuhVar;
        this.d = zzfefVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzfno zzfnoVar;
        zzfef zzfefVar = this.d;
        zzctc zzctcVar = (zzctc) obj;
        synchronized (zzfefVar) {
            if (zzctcVar != null) {
                try {
                    zzctcVar.b();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (zzfefVar.m) {
                zzfefVar.c();
            }
            if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzfnoVar = this.f7263a) != null) {
                zzfnoVar.e(zzctcVar.f5506a.b);
                zzfnoVar.g(zzctcVar.f.f5650c);
                zzfne zzfneVar = this.b;
                zzfneVar.zzd(true);
                zzfnoVar.a(zzfneVar);
                zzfnoVar.h();
            } else {
                zzfnr zzfnrVar = zzfefVar.i;
                zzfne zzfneVar2 = this.b;
                zzfneVar2.e(zzctcVar.f5506a.b);
                zzfneVar2.zzi(zzctcVar.f.f5650c);
                zzfneVar2.zzd(true);
                zzfnrVar.b(zzfneVar2.zzm());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzfno zzfnoVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F6)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Banner ad failed to load", th);
        }
        zzfef zzfefVar = this.d;
        synchronized (zzfefVar) {
            try {
                zzcuh zzcuhVar = this.f7264c;
                com.google.android.gms.ads.internal.client.zze b = zzfjm.b(th, zzcuhVar.b().l);
                zzfefVar.n = b;
                zzcuhVar.a().S(b);
                zzfjh.a(b.zza, "BannerAdLoader.onFailure", th);
                if (zzfefVar.m) {
                    zzfefVar.e();
                    zzfefVar.h.t0(zzfefVar.j.a());
                }
                if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzfnoVar = this.f7263a) != null) {
                    zzfnoVar.f(b);
                    zzfne zzfneVar = this.b;
                    zzfneVar.a(th);
                    zzfneVar.zzd(false);
                    zzfnoVar.a(zzfneVar);
                    zzfnoVar.h();
                } else {
                    zzfnr zzfnrVar = zzfefVar.i;
                    zzfne zzfneVar2 = this.b;
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
