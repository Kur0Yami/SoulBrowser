package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzclp;
import com.google.android.gms.internal.ads.zzcmg;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijp;

/* loaded from: classes.dex */
public final class zzg implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3278a;
    public final zzijp b;

    public zzg(zzijp zzijpVar, zzijp zzijpVar2) {
        this.f3278a = zzijpVar;
        this.b = zzijpVar2;
    }

    public static zzg zza(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4) {
        return new zzg(zzijpVar, zzijpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = ((zzclp) this.f3278a).a();
        zzbgb zzbgbVar = zzbgk.f4658a;
        return new zzf(a2, com.google.android.gms.ads.internal.client.zzbd.zzb().a(), ((zzcmg) this.b).a());
    }
}
