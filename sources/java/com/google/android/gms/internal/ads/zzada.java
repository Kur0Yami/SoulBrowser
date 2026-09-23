package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzada implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzadf f3917c;
    public final /* synthetic */ Object f;
    public final /* synthetic */ long g;

    public /* synthetic */ zzada(zzadf zzadfVar, Object obj, long j) {
        this.f3917c = zzadfVar;
        this.f = obj;
        this.g = j;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        String str = zzfj.f7405a;
        this.f3917c.b.c(this.g, this.f);
    }
}
