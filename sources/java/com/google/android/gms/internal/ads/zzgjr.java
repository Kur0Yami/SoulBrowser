package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgjr implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f8032a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f8033c;
    public final zzijp d;
    public final zzijp e;
    public final zzijf f;

    public zzgjr(zzijh zzijhVar, zzijh zzijhVar2, zzijh zzijhVar3, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3) {
        this.f8032a = zzijhVar;
        this.b = zzijhVar2;
        this.f8033c = zzijhVar3;
        this.d = zzijfVar;
        this.e = zzijfVar2;
        this.f = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzgjq((Context) this.f8032a.zzb(), (ExecutorService) this.b.zzb(), (zzgad) this.f8033c.zzb(), (zzgbc) this.d.zzb(), (zzgnc) this.e.zzb(), (zzgjs) this.f.zzb());
    }
}
