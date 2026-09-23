package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzeld implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6628a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdab f6629c;
    public final zzijp d;
    public final zzijh e;
    public final zzijf f;
    public final zzijp g;
    public final zzijf h;
    public final zzijp i;

    public zzeld(zzcmg zzcmgVar, zzdab zzdabVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijf zzijfVar5, zzijf zzijfVar6, zzijh zzijhVar) {
        this.f6628a = zzijfVar;
        this.b = zzcmgVar;
        this.f6629c = zzdabVar;
        this.d = zzijfVar2;
        this.e = zzijhVar;
        this.f = zzijfVar3;
        this.g = zzijfVar4;
        this.h = zzijfVar5;
        this.i = zzijfVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzelc((Context) this.f6628a.zzb(), ((zzcmg) this.b).a(), this.f6629c.a(), (Executor) this.d.zzb(), (zzdkz) this.e.f9006a, (zzdua) this.f.zzb(), new zzbnq(), (zzeif) this.g.zzb(), (zzdwy) this.h.zzb(), (zzdxe) this.i.zzb());
    }
}
