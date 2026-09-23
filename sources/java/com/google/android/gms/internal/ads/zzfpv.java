package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzfpv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7548a;
    public final zzfqe b;

    /* renamed from: c, reason: collision with root package name */
    public final zzclp f7549c;
    public final zzijf d;
    public final zzijf e;

    public zzfpv(zzijf zzijfVar, zzfqe zzfqeVar, zzclp zzclpVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f7548a = zzijfVar;
        this.b = zzfqeVar;
        this.f7549c = zzclpVar;
        this.d = zzijfVar2;
        this.e = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzfpu((zzfqz) this.f7548a.zzb(), this.b.zzb(), this.f7549c.a(), (Clock) this.d.zzb(), (zzfpp) this.e.zzb());
    }
}
