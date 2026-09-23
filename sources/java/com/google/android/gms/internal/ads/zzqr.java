package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzqr implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzqx f9200c;
    public final /* synthetic */ zzik f;

    public /* synthetic */ zzqr(zzqx zzqxVar, zzik zzikVar) {
        this.f9200c = zzqxVar;
        this.f = zzikVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzdy] */
    @Override // java.lang.Runnable
    public final void run() {
        zzqx zzqxVar = this.f9200c;
        synchronized (this.f) {
        }
        String str = zzfj.f7405a;
        zzoz zzozVar = ((zzjl) zzqxVar.b).f9043c.r;
        zzozVar.n(zzozVar.q(zzozVar.d.e), 1013, new Object());
    }
}
