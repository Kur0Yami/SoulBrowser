package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgmn implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f8131a;
    public final zzijh b;

    public zzgmn(zzijh zzijhVar, zzijh zzijhVar2) {
        this.f8131a = zzijhVar;
        this.b = zzijhVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgmm((Context) this.f8131a.f9006a, (ExecutorService) this.b.f9006a);
    }
}
