package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzgey implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7890a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7891c;
    public final zzijf d;
    public final zzijp e;
    public final zzijp f;
    public final zzijp g;

    public zzgey(zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijh zzijhVar, zzijh zzijhVar2, zzijh zzijhVar3) {
        this.f7890a = zzijhVar;
        this.b = zzijhVar2;
        this.f7891c = zzijfVar;
        this.d = zzijfVar2;
        this.e = zzijfVar3;
        this.f = zzijfVar4;
        this.g = zzijhVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context context = (Context) this.f7890a.zzb();
        ExecutorService executorService = (ExecutorService) this.b.zzb();
        zzgec zzgecVar = (zzgec) this.f7891c.zzb();
        zzgeu zzgeuVar = (zzgeu) this.d.zzb();
        File file = (File) this.e.zzb();
        zzgnc zzgncVar = (zzgnc) this.f.zzb();
        zzgad zzgadVar = (zzgad) this.g.zzb();
        return new zzgex(context, executorService, zzgecVar, zzgeuVar, file, zzgncVar, zzgadVar.V(), zzgfb.a());
    }
}
