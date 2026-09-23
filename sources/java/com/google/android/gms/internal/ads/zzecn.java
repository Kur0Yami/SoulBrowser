package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzecn implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6370a;

    public zzecn(zzijf zzijfVar) {
        this.f6370a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context context = (Context) this.f6370a.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzedj(context, zzgywVar);
    }
}
