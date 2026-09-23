package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzgmj implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f8125a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f8126c;
    public final zzijh d;

    public zzgmj(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f8125a = zzijhVar;
        this.b = zzijfVar;
        this.f8126c = zzijfVar2;
        this.d = zzijhVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgmi((Context) this.f8125a.f9006a, (zzgad) this.d.f9006a, (zzgnc) this.b.zzb(), (zzgyw) this.f8126c.zzb());
    }
}
