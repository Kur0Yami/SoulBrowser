package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
final class zzdsi implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfhr f6095a;
    public final /* synthetic */ zzfhu b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcra f6096c;
    public final /* synthetic */ zzdsp d;

    public zzdsi(zzdsp zzdspVar, zzfhr zzfhrVar, zzfhu zzfhuVar, zzcra zzcraVar) {
        this.f6095a = zzfhrVar;
        this.b = zzfhuVar;
        this.f6096c = zzcraVar;
        this.d = zzdspVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        zzfhu zzfhuVar = this.b;
        zzfhr zzfhrVar = this.f6095a;
        zzcirVar.T(zzfhrVar, zzfhuVar);
        zzcjc D = zzcirVar.D();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.xb)).booleanValue() && D != null) {
            zzdsp zzdspVar = this.d;
            zzehu zzehuVar = zzdspVar.i;
            zzfpi zzfpiVar = zzdspVar.j;
            zzcra zzcraVar = this.f6096c;
            D.U(zzcraVar, zzehuVar, zzfpiVar);
            D.Z(zzcraVar, zzdspVar.i, zzdspVar.d);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.te)).booleanValue() && D != null) {
            zzcir zzcirVar2 = D.f5194c;
            if (com.google.android.gms.ads.internal.zzt.zzD().a(zzcirVar2.getContext())) {
                D.f("/logScionEvent");
                new HashMap();
                D.b("/logScionEvent", new zzbnt(zzcirVar2.getContext(), zzfhrVar.w0));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
    }
}
