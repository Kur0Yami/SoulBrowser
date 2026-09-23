package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzdwy;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijp;

/* loaded from: classes.dex */
public final class zzx implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3300a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f3301c;
    public final zzijp d;

    public zzx(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4) {
        this.f3300a = zzijpVar;
        this.b = zzijpVar2;
        this.f3301c = zzijpVar3;
        this.d = zzijpVar4;
    }

    public static zzx zza(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4) {
        return new zzx(zzijpVar, zzijpVar2, zzijpVar3, zzijpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzw((zzdwy) this.f3300a.zzb(), (zzv) this.b.zzb(), (String) this.f3301c.zzb(), ((Integer) this.d.zzb()).intValue());
    }
}
