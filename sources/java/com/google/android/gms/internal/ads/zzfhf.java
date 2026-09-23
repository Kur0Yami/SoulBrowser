package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzfhf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7353a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7354c;
    public final zzffm d;
    public final zzijf e;
    public final zzijf f;

    public zzfhf(zzijh zzijhVar, zzijf zzijfVar, zzijh zzijhVar2, zzffm zzffmVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f7353a = zzijhVar;
        this.b = zzijfVar;
        this.f7354c = zzijhVar2;
        this.d = zzffmVar;
        this.e = zzijfVar2;
        this.f = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzfhe((Context) this.f7353a.f9006a, (Executor) this.b.zzb(), (zzclg) this.f7354c.zzb(), this.d.zzb(), (zzfgv) this.e.zzb(), new zzfij(), (zzfid) this.f.zzb());
    }
}
