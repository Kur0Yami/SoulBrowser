package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzerw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6864a;
    public final zzdab b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6865c;

    public zzerw(zzdab zzdabVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6864a = zzijfVar;
        this.b = zzdabVar;
        this.f6865c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeru((Clock) this.f6864a.zzb(), this.b.a(), ((Long) this.f6865c.zzb()).longValue());
    }
}
