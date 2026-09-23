package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzgmf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f8119a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f8120c;
    public final zzijf d;

    public zzgmf(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f8119a = zzijhVar;
        this.b = zzijfVar;
        this.f8120c = zzijhVar2;
        this.d = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgme((Context) this.f8119a.f9006a, (zzgad) this.f8120c.f9006a, (zzgnc) this.b.zzb(), (zzgyw) this.d.zzb());
    }
}
