package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzgft implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7913a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7914c;
    public final zzijp d;

    public zzgft(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f7913a = zzijhVar;
        this.b = zzijfVar;
        this.f7914c = zzijhVar2;
        this.d = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgfs((zzavs) this.f7913a.f9006a, (zzgev) this.b.zzb(), (Context) this.f7914c.zzb(), (zzgnc) this.d.zzb());
    }
}
