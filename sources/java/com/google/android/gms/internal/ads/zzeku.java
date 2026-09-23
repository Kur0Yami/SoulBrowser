package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzeku implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6613a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f6614c;
    public final zzijp d;
    public final zzijp e;

    public zzeku(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijh zzijhVar) {
        this.f6613a = zzijfVar;
        this.b = zzijfVar2;
        this.f6614c = zzijhVar;
        this.d = zzijfVar3;
        this.e = zzijfVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzekt((Context) this.f6613a.zzb(), (Executor) this.b.zzb(), (zzdkz) this.f6614c.f9006a, (zzfhq) this.d.zzb(), (zzdxe) this.e.zzb());
    }
}
