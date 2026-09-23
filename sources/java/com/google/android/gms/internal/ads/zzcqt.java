package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcqt implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfpi f5382a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.ads.internal.util.client.zzv f5383c;
    public final /* synthetic */ zzcra d;

    public zzcqt(zzcra zzcraVar, zzfpi zzfpiVar, String str, com.google.android.gms.ads.internal.util.client.zzv zzvVar) {
        this.f5382a = zzfpiVar;
        this.b = str;
        this.f5383c = zzvVar;
        Objects.requireNonNull(zzcraVar);
        this.d = zzcraVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        final String str = (String) obj;
        final com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.f5383c;
        final zzfpi zzfpiVar = this.f5382a;
        this.d.e.E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqr
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzfpi.this.b(str, zzvVar, null, null);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(final Throwable th) {
        final String str = this.b;
        final com.google.android.gms.ads.internal.util.client.zzv zzvVar = this.f5383c;
        final zzfpi zzfpiVar = this.f5382a;
        this.d.e.E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqs
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Hb)).booleanValue();
                Throwable th2 = th;
                zzcqt zzcqtVar = zzcqt.this;
                if (booleanValue) {
                    zzcra zzcraVar = zzcqtVar.d;
                    zzbxx e = zzbxv.e(zzcraVar.f5391a);
                    zzcraVar.i = e;
                    e.a("AttributionReporting.registerSourceAndPingClickUrl", th2);
                } else {
                    zzcra zzcraVar2 = zzcqtVar.d;
                    zzbxx c2 = zzbxv.c(zzcraVar2.f5391a);
                    zzcraVar2.h = c2;
                    c2.a("AttributionReportingSampled.registerSourceAndPingClickUrl", th2);
                }
                zzfpiVar.b(str, zzvVar, null, null);
            }
        });
    }
}
