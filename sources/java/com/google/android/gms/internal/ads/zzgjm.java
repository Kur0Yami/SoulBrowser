package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgjm implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f8025a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f8026c;
    public final zzijp d;
    public final zzijp e;
    public final zzijf f;
    public final zzijf g;

    public zzgjm(zzijh zzijhVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijh zzijhVar2, zzijf zzijfVar4, zzijf zzijfVar5) {
        this.f8025a = zzijhVar;
        this.b = zzijfVar;
        this.f8026c = zzijfVar2;
        this.d = zzijfVar3;
        this.e = zzijhVar2;
        this.f = zzijfVar4;
        this.g = zzijfVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzgjl((Context) this.f8025a.zzb(), zzijf.b(this.b), (zzgjv) this.f8026c.zzb(), (zzgnc) this.d.zzb(), (ExecutorService) this.e.zzb(), (zzgic) this.f.zzb(), (zzfuf) this.g.zzb());
    }
}
