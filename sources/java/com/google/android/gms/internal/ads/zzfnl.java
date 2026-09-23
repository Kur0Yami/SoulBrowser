package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfnl implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfno f7505a;
    public final /* synthetic */ zzfne b;

    public zzfnl(zzfno zzfnoVar, zzfne zzfneVar) {
        this.f7505a = zzfnoVar;
        this.b = zzfneVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzfne zzfneVar = this.b;
        zzfneVar.a(th);
        zzfneVar.zzd(false);
        this.f7505a.a(zzfneVar);
    }
}
