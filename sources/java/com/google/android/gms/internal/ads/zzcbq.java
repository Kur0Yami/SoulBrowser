package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzcbq implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f5023a;
    public final zzijf b;

    public zzcbq(zzijf zzijfVar, zzijh zzijhVar) {
        this.f5023a = zzijhVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzcbp((Clock) this.f5023a.f9006a, (zzcbn) this.b.zzb());
    }
}
