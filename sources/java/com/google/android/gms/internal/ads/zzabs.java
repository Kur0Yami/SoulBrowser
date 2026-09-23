package com.google.android.gms.internal.ads;

import android.os.Trace;

/* loaded from: classes.dex */
final class zzabs implements zzadj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzug f3881a;
    public final /* synthetic */ int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzabw f3882c;

    public zzabs(zzabw zzabwVar, zzug zzugVar, int i, long j) {
        this.f3881a = zzugVar;
        this.b = i;
        this.f3882c = zzabwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadj
    public final void a(long j) {
        this.f3882c.x0(this.f3881a, this.b, j);
    }

    @Override // com.google.android.gms.internal.ads.zzadj
    public final void zzb() {
        zzabw zzabwVar = this.f3882c;
        zzabwVar.getClass();
        Trace.beginSection("dropVideoBuffer");
        this.f3881a.zzc(this.b);
        Trace.endSection();
        zzabwVar.v0(0, 1);
    }
}
