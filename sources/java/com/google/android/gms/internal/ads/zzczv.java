package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzczv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzczt f5639a;
    public final zzijp b;

    public zzczv(zzczt zzcztVar, zzclp zzclpVar) {
        this.f5639a = zzcztVar;
        this.b = zzclpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ((zzclp) this.b).a();
        Context context = this.f5639a.f5636a;
        zzijo.a(context);
        return context;
    }
}
