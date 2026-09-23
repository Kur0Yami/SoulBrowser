package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzgfv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7915a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f7916c;
    public final zzijp d;
    public final zzijp e;

    public zzgfv(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar, zzijh zzijhVar2, zzijh zzijhVar3) {
        this.f7915a = zzijhVar;
        this.b = zzijfVar;
        this.f7916c = zzijhVar2;
        this.d = zzijhVar3;
        this.e = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgfu((zzavs) this.f7915a.f9006a, (zzgev) this.b.zzb(), (Map) this.f7916c.f9006a, (Context) this.d.zzb(), (zzgnc) this.e.zzb());
    }
}
