package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzffw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7314a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7315c;
    public final zzijf d;
    public final zzijf e;

    public zzffw(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f7314a = zzijhVar;
        this.b = zzijfVar;
        this.f7315c = zzijhVar2;
        this.d = zzijfVar2;
        this.e = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzffv((Context) this.f7314a.f9006a, (Executor) this.b.zzb(), (zzclg) this.f7315c.zzb(), (zzeqp) this.d.zzb(), (zzfgv) this.e.zzb(), new zzfij());
    }
}
