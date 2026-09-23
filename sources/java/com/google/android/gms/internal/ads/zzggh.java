package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzggh implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7931a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f7932c;
    public final zzijh d;

    public zzggh(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f7931a = zzijhVar;
        this.b = zzijfVar;
        this.f7932c = zzijfVar2;
        this.d = zzijhVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzggg((Context) this.f7931a.f9006a, (zzgnc) this.b.zzb(), (zzgec) this.f7932c.zzb(), (zzgad) this.d.f9006a);
    }
}
