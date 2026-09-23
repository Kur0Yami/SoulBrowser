package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzevl implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6989a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6990c;

    public zzevl(zzerp zzerpVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6989a = zzerpVar;
        this.b = zzijfVar;
        this.f6990c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzezx zzernVar = new zzern(((zzclp) ((zzerp) this.f6989a).f6852a).a());
        zzezx zzezxVar = (zzeul) this.b.zzb();
        if (true == ((List) this.f6990c.zzb()).contains("2")) {
            zzernVar = zzezxVar;
        }
        zzijo.a(zzernVar);
        return zzernVar;
    }
}
