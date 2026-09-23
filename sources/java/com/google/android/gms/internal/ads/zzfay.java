package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfay implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7179a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfce f7180c;
    public final zzfcf d;
    public final zzfcg e;

    public zzfay(zzclp zzclpVar, zzijf zzijfVar, zzfce zzfceVar, zzfcf zzfcfVar, zzfcg zzfcgVar) {
        this.f7179a = zzclpVar;
        this.b = zzijfVar;
        this.f7180c = zzfceVar;
        this.d = zzfcfVar;
        this.e = zzfcgVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzccs, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ?? obj = new Object();
        Context a2 = ((zzclp) this.f7179a).a();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzfaw(obj, a2, scheduledExecutorService, zzgywVar, this.f7180c.f7212a.b, this.d.f7213a.f7210a.p, this.e.f7214a.f7210a.o);
    }
}
