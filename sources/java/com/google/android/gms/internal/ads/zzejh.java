package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzejh implements zzejg {

    /* renamed from: a, reason: collision with root package name */
    public final zzejg f6558a;
    public final zzgpr b;

    public zzejh(zzejg zzejgVar, zzgpr zzgprVar) {
        this.f6558a = zzejgVar;
        this.b = zzgprVar;
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(zzfic zzficVar, zzfhr zzfhrVar) {
        return zzgym.i(this.f6558a.a(zzficVar, zzfhrVar), this.b, zzcdo.f5068a);
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final boolean b(zzfic zzficVar, zzfhr zzfhrVar) {
        return this.f6558a.b(zzficVar, zzfhrVar);
    }
}
