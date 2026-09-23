package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfiw implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfix f7400a;
    public final /* synthetic */ int b;

    public zzfiw(zzfix zzfixVar, int i) {
        this.b = i;
        this.f7400a = zzfixVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        String str = (String) obj;
        zzfix zzfixVar = this.f7400a;
        zzfhr zzfhrVar = zzfixVar.f7401a;
        if (!zzfhrVar.i0) {
            zzfixVar.f7402c.b(str, zzfhrVar.x0, zzfixVar.e, null);
            return;
        }
        zzfpa zzfpaVar = zzfixVar.d;
        String str2 = zzfixVar.b.b;
        zzfpaVar.getClass();
        zzehw zzehwVar = new zzehw(this.b, str2, str, com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
        zzehu zzehuVar = zzfpaVar.f7521a;
        zzehuVar.getClass();
        zzehuVar.a(new zzehr(zzehuVar, zzehwVar));
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        com.google.android.gms.ads.internal.zzt.zzh().f("BufferingUrlPinger.attributionReportingManager", th);
    }
}
