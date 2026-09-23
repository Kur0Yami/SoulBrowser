package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzghu implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7968a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7969c;

    public zzghu(zzijf zzijfVar, zzijh zzijhVar, zzijh zzijhVar2) {
        this.f7968a = zzijhVar;
        this.b = zzijhVar2;
        this.f7969c = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzghr((Context) this.f7968a.zzb(), (ExecutorService) this.b.zzb(), (zzgcf) this.f7969c.zzb());
    }
}
