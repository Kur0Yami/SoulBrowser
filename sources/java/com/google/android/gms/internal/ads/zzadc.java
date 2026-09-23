package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzadc implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzadf f3919c;
    public final /* synthetic */ zzik f;

    public /* synthetic */ zzadc(zzadf zzadfVar, zzik zzikVar) {
        this.f3919c = zzadfVar;
        this.f = zzikVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzadf zzadfVar = this.f3919c;
        zzik zzikVar = this.f;
        synchronized (zzikVar) {
        }
        String str = zzfj.f7405a;
        zzadfVar.b.b(zzikVar);
    }
}
