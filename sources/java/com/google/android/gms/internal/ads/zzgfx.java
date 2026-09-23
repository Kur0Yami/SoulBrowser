package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzgfx implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7917a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f7918c;
    public final zzijh d;
    public final zzijh e;
    public final zzijp f;

    public zzgfx(zzijh zzijhVar, zzijf zzijfVar, zzijh zzijhVar2, zzijh zzijhVar3, zzijh zzijhVar4, zzijf zzijfVar2) {
        this.f7917a = zzijhVar;
        this.b = zzijfVar;
        this.f7918c = zzijhVar2;
        this.d = zzijhVar3;
        this.e = zzijhVar4;
        this.f = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgfw((zzavs) this.f7917a.f9006a, (zzgev) this.b.zzb(), (zzgba) this.f7918c.f9006a, (Context) this.d.f9006a, (Map) this.e.f9006a, (zzgnc) this.f.zzb());
    }
}
