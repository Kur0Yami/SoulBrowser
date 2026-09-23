package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcna implements zzfcv {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5286a;

    public zzcna(zzcmv zzcmvVar, Context context, String str) {
        zzijh a2 = zzijh.a(context);
        zzijh a3 = zzijh.a(str);
        zzijf zzijfVar = zzcmvVar.J0;
        zzffl zzfflVar = new zzffl(zzijfVar, zzcmvVar.K0, a2);
        zzijf a4 = zzijf.a(new zzfds(zzijfVar));
        zzijf zzijfVar2 = zzcmvVar.d;
        zzijh zzijhVar = zzcmvVar.F;
        zzcmg zzcmgVar = zzcmvVar.j;
        this.f5286a = zzijf.a(new zzfea(zzijhVar, a2, a3, zzijf.a(new zzfdu(a2, zzijfVar2, zzijhVar, zzfflVar, a4, zzcmgVar)), a4, zzcmgVar, zzcmvVar.l));
    }

    @Override // com.google.android.gms.internal.ads.zzfcv
    public final zzfdz zza() {
        return (zzfdz) this.f5286a.zzb();
    }
}
