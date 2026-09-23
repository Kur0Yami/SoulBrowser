package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzenf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6714a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f6715c;

    public zzenf(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar) {
        this.f6714a = zzijfVar;
        this.b = zzijfVar2;
        this.f6715c = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzene((Context) this.f6714a.zzb(), (Executor) this.b.zzb(), (zzdtj) this.f6715c.f9006a);
    }
}
