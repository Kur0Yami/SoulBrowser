package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzerj implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzere f6844a;
    public final /* synthetic */ zzfno b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfne f6845c;
    public final /* synthetic */ zzdlv d;
    public final /* synthetic */ zzerm e;

    public zzerj(zzerm zzermVar, zzere zzereVar, zzfno zzfnoVar, zzfne zzfneVar, zzdlv zzdlvVar) {
        this.f6844a = zzereVar;
        this.b = zzfnoVar;
        this.f6845c = zzfneVar;
        this.d = zzdlvVar;
        this.e = zzermVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzfno zzfnoVar;
        zzerm zzermVar = this.e;
        zzcvk zzcvkVar = (zzcvk) obj;
        synchronized (zzermVar) {
            if (zzcvkVar != null) {
                try {
                    zzcvkVar.b();
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzcvkVar.g.f5755c.f5728a.f = zzermVar.d.b;
            ((zzeqz) this.f6844a).a(zzcvkVar);
            zzermVar.b.f().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeri
                @Override // java.lang.Runnable
                public final void run() {
                    zzerj.this.e.d.b.zzg();
                }
            });
            if (((Boolean) zzbid.f4704c.c()).booleanValue() && (zzfnoVar = this.b) != null) {
                zzfnoVar.e(zzcvkVar.f5506a.b);
                zzfnoVar.g(zzcvkVar.f.f5650c);
                zzfne zzfneVar = this.f6845c;
                zzfneVar.zzd(true);
                zzfnoVar.a(zzfneVar);
                zzfnoVar.h();
            } else {
                zzfnr zzfnrVar = zzermVar.e;
                zzfne zzfneVar2 = this.f6845c;
                zzfneVar2.e(zzcvkVar.f5506a.b);
                zzfneVar2.zzi(zzcvkVar.f.f5650c);
                zzfneVar2.zzd(true);
                zzfnrVar.b(zzfneVar2.zzm());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzfno zzfnoVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F6)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zzb("Native ad failed to load", th);
        }
        zzdlv zzdlvVar = this.d;
        final com.google.android.gms.ads.internal.client.zze b = zzfjm.b(th, zzdlvVar.a().l);
        zzdlvVar.b().S(b);
        zzerm zzermVar = this.e;
        zzermVar.b.f().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzerh
            @Override // java.lang.Runnable
            public final void run() {
                ((zzerb) zzerj.this.e.d.f6840c).S(b);
            }
        });
        zzfjh.a(b.zza, "NativeAdLoader.onFailure", th);
        ((zzeqz) this.f6844a).zza();
        boolean booleanValue = ((Boolean) zzbid.f4704c.c()).booleanValue();
        zzfne zzfneVar = this.f6845c;
        if (booleanValue && (zzfnoVar = this.b) != null) {
            zzfnoVar.f(b);
            zzfneVar.a(th);
            zzfneVar.zzd(false);
            zzfnoVar.a(zzfneVar);
            zzfnoVar.h();
            return;
        }
        zzfnr zzfnrVar = zzermVar.e;
        zzfneVar.b(b);
        zzfneVar.a(th);
        zzfneVar.zzd(false);
        zzfnrVar.b(zzfneVar.zzm());
    }
}
