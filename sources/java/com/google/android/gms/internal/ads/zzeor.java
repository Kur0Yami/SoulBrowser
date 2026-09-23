package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzeor implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6764a;
    public final zzijh b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6765c;
    public final zzijp d;
    public final zzeox e;

    public zzeor(zzijf zzijfVar, zzijh zzijhVar, zzijf zzijfVar2, zzijp zzijpVar, zzeox zzeoxVar) {
        this.f6764a = zzijfVar;
        this.b = zzijhVar;
        this.f6765c = zzijfVar2;
        this.d = zzijpVar;
        this.e = zzeoxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzeop((Context) this.f6764a.zzb(), (zzcuh) this.b.f9006a, (zzfmu) this.f6765c.zzb(), (zzgyw) this.d.zzb(), this.e.f6774a.f6773a);
    }
}
