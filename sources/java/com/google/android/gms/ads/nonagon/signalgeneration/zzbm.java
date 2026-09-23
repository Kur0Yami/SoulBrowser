package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijp;

/* loaded from: classes.dex */
public final class zzbm implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3262a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f3263c;

    public zzbm(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3) {
        this.f3262a = zzijpVar;
        this.b = zzijpVar2;
        this.f3263c = zzijpVar3;
    }

    public static zzbm zza(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3) {
        return new zzbm(zzijpVar, zzijpVar2, zzijpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzbl((zzb) this.f3262a.zzb(), ((Integer) this.b.zzb()).intValue(), (String) this.f3263c.zzb());
    }
}
