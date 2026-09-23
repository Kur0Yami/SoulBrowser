package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzcxb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5556a;
    public final zzijf b;

    public zzcxb(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f5556a = zzijfVar;
        this.b = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcxa((Clock) this.f5556a.zzb(), (zzccu) this.b.zzb());
    }
}
