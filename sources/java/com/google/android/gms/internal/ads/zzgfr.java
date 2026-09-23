package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
public final class zzgfr implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7911a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f7912c;
    public final zzijp d;

    public zzgfr(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f7911a = zzijhVar;
        this.b = zzijfVar;
        this.f7912c = zzijhVar2;
        this.d = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgfq((zzavs) this.f7911a.f9006a, (zzgev) this.b.zzb(), (Map) this.f7912c.f9006a, (zzgnc) this.d.zzb());
    }
}
