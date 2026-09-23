package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzejw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6577a;
    public final zzijh b;

    public zzejw(zzijf zzijfVar, zzijh zzijhVar) {
        this.f6577a = zzijfVar;
        this.b = zzijhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context context = (Context) this.f6577a.zzb();
        zzcsq zzcsqVar = (zzcsq) this.b.f9006a;
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzejv(context, zzcsqVar, zzgywVar);
    }
}
