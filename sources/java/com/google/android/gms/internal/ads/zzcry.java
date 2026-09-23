package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzcry implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5421a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f5422c;
    public final zzijf d;
    public final zzijp e;

    public zzcry(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijf zzijfVar5) {
        this.f5421a = zzijfVar;
        this.b = zzijfVar2;
        this.f5422c = zzijfVar3;
        this.d = zzijfVar4;
        this.e = zzijfVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcrx((zzbso) this.f5421a.zzb(), (zzcrt) this.b.zzb(), (Executor) this.f5422c.zzb(), (zzcrs) this.d.zzb(), (Clock) this.e.zzb());
    }
}
