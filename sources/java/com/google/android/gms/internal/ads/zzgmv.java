package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgmv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f8140a;
    public final zzijh b;

    public zzgmv(zzijh zzijhVar, zzijh zzijhVar2) {
        this.f8140a = zzijhVar;
        this.b = zzijhVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzgmu((Context) this.f8140a.f9006a, (ExecutorService) this.b.f9006a);
    }
}
