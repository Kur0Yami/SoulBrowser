package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzgbm implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7802a;
    public final zzijf b;

    public zzgbm(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f7802a = zzijfVar;
        this.b = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Executor executor = (Executor) this.f7802a.zzb();
        return new zzgbl(executor);
    }
}
