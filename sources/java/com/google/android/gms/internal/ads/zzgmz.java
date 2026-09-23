package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgmz implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f8145a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f8146c;

    public zzgmz(zzijf zzijfVar, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f8145a = zzijhVar;
        this.b = zzijfVar;
        this.f8146c = zzijhVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context context = (Context) this.f8145a.f9006a;
        return new zzgmy(context, (ExecutorService) this.f8146c.f9006a, zzgmy.h);
    }
}
