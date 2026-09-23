package com.google.android.gms.cast.internal;

/* loaded from: classes.dex */
final class zzs implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzx f3630c;
    public final /* synthetic */ int f;

    public zzs(zzw zzwVar, zzx zzxVar, int i) {
        this.f3630c = zzxVar;
        this.f = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3630c.g.b(this.f);
    }
}
