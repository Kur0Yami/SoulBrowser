package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzggd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7925a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f7926c;
    public final zzijf d;
    public final zzijp e;

    public zzggd(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f7925a = zzijhVar;
        this.b = zzijfVar;
        this.f7926c = zzijhVar2;
        this.d = zzijfVar2;
        this.e = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzggc((zzavs) this.f7925a.f9006a, (zzgev) this.b.zzb(), (Map) this.f7926c.f9006a, (DisplayMetrics) this.d.zzb(), (zzgnc) this.e.zzb());
    }
}
