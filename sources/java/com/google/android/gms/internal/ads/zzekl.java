package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzekl implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6598a;
    public final zzijh b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6599c;

    public zzekl(zzijf zzijfVar, zzijh zzijhVar, zzijp zzijpVar) {
        this.f6598a = zzijfVar;
        this.b = zzijhVar;
        this.f6599c = zzijpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzekk((Context) this.f6598a.zzb(), (zzcuh) this.b.f9006a, (Executor) this.f6599c.zzb());
    }
}
