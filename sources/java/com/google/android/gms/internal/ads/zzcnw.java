package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcnw implements zzfhl {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5323a;
    public final zzijf b;

    public zzcnw(zzcmv zzcmvVar, Context context, String str) {
        zzijh a2 = zzijh.a(context);
        zzijf zzijfVar = zzcmvVar.J0;
        zzffm zzffmVar = new zzffm(zzijfVar, zzcmvVar.K0, a2);
        zzijf a3 = zzijf.a(new zzfgw(zzijfVar));
        zzijf a4 = zzijf.a(zzfih.f7387a);
        zzijf a5 = zzijf.a(new zzfhf(a2, zzcmvVar.d, zzcmvVar.F, zzffmVar, a3, a4));
        this.f5323a = zzijf.a(new zzfhp(a5, a3, a4));
        this.b = zzijf.a(new zzfhj(zzijh.b(str), a5, a2, a3, a4, zzcmvVar.j, zzcmvVar.G, zzcmvVar.l));
    }

    @Override // com.google.android.gms.internal.ads.zzfhl
    public final zzfho zza() {
        return (zzfho) this.f5323a.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfhl
    public final zzfhi zzb() {
        return (zzfhi) this.b.zzb();
    }
}
