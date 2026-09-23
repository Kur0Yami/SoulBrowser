package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Random;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgcg implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f7820a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijh f7821c;
    public final zzijf d;
    public final zzijh e;

    public zzgcg(zzijf zzijfVar, zzijf zzijfVar2, zzijh zzijhVar, zzijh zzijhVar2, zzijh zzijhVar3) {
        this.f7820a = zzijhVar;
        this.b = zzijfVar;
        this.f7821c = zzijhVar2;
        this.d = zzijfVar2;
        this.e = zzijhVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context context = (Context) this.f7820a.f9006a;
        zzgbj zzgbjVar = (zzgbj) this.b.zzb();
        ExecutorService executorService = (ExecutorService) this.f7821c.f9006a;
        zzgbc zzgbcVar = (zzgbc) this.d.zzb();
        zzgad zzgadVar = (zzgad) this.e.f9006a;
        return new zzgco(context, zzgbjVar, executorService, zzgbcVar, new Random(), zzgadVar.L().D(), zzgadVar.L().F(), zzgadVar.L().G(), zzgadVar.L().E(), zzgadVar.J(), zzgadVar.G() - 1);
    }
}
