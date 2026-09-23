package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzghw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7971a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7972c;

    public zzghw(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar) {
        this.f7971a = zzijhVar;
        this.b = zzijfVar;
        this.f7972c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context context = (Context) this.f7971a.zzb();
        return new zzgib(context, context.getSharedPreferences("pcvmspf2", 0), zzijf.b(this.b), (zzgnc) this.f7972c.zzb());
    }
}
