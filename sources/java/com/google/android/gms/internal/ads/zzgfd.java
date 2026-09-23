package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;

/* loaded from: classes.dex */
public final class zzgfd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7895a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f7896c;
    public final zzijh d;
    public final zzijp e;

    public zzgfd(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar, zzijh zzijhVar2, zzijh zzijhVar3) {
        this.f7895a = zzijhVar;
        this.b = zzijfVar;
        this.f7896c = zzijhVar2;
        this.d = zzijhVar3;
        this.e = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgfc((zzavs) this.f7895a.f9006a, (zzgev) this.b.zzb(), (View) this.f7896c.f9006a, (Activity) this.d.f9006a, (zzgnc) this.e.zzb());
    }
}
