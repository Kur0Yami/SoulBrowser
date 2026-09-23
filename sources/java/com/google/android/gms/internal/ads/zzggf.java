package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;

/* loaded from: classes.dex */
public final class zzggf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7927a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f7928c;
    public final zzijh d;
    public final zzijp e;

    public zzggf(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f7927a = zzijhVar;
        this.b = zzijfVar;
        this.f7928c = zzijfVar2;
        this.d = zzijhVar2;
        this.e = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgge((zzavs) this.f7927a.f9006a, (zzgev) this.b.zzb(), (DisplayMetrics) this.f7928c.zzb(), (View) this.d.f9006a, (zzgnc) this.e.zzb());
    }
}
