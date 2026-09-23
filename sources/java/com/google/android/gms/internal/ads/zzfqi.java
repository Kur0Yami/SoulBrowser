package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzfqi implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7562a;
    public final zzfqe b;

    /* renamed from: c, reason: collision with root package name */
    public final zzclp f7563c;
    public final zzijf d;

    public zzfqi(zzijf zzijfVar, zzfqe zzfqeVar, zzclp zzclpVar, zzijf zzijfVar2) {
        this.f7562a = zzijfVar;
        this.b = zzfqeVar;
        this.f7563c = zzclpVar;
        this.d = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzfqh((zzfqz) this.f7562a.zzb(), this.b.zzb(), this.f7563c.a(), (Clock) this.d.zzb());
    }
}
