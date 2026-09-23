package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfeg implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7270a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f7271c;
    public final zzijp d;
    public final zzijf e;
    public final zzijf f;
    public final zzijf g;

    public zzfeg(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijh zzijhVar, zzijh zzijhVar2, zzijh zzijhVar3) {
        this.f7270a = zzijhVar;
        this.b = zzijfVar;
        this.f7271c = zzijhVar2;
        this.d = zzijhVar3;
        this.e = zzijfVar2;
        this.f = zzijfVar3;
        this.g = zzijfVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzfef((Context) this.f7270a.f9006a, (Executor) this.b.zzb(), (com.google.android.gms.ads.internal.client.zzr) this.f7271c.f9006a, (zzclg) this.d.zzb(), (zzeqp) this.e.zzb(), (zzeqt) this.f.zzb(), new zzfij(), (zzdfq) this.g.zzb());
    }
}
