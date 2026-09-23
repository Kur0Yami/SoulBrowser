package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfcp implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7223a;
    public final zzfcg b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfcd f7224c;
    public final zzijp d;
    public final zzfci e;
    public final zzfcj f;

    public zzfcp(zzijf zzijfVar, zzfcg zzfcgVar, zzfcd zzfcdVar, zzijf zzijfVar2, zzfci zzfciVar, zzfcj zzfcjVar) {
        this.f7223a = zzijfVar;
        this.b = zzfcgVar;
        this.f7224c = zzfcdVar;
        this.d = zzijfVar2;
        this.e = zzfciVar;
        this.f = zzfcjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzcda zzcdaVar = (zzcda) this.f7223a.zzb();
        boolean z = this.b.f7214a.f7210a.o;
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzijo.a(this.f7224c.f7211a.f7210a.h);
        return new zzfcn(zzcdaVar, z, zzgywVar, (ScheduledExecutorService) this.d.zzb(), this.e.f7216a.a(), this.f.f7217a.f7210a.s);
    }
}
