package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzepq implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6795a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6796c;
    public final zzctp d;
    public final zzijp e;

    public zzepq(zzijf zzijfVar, zzdlr zzdlrVar, zzdab zzdabVar, zzctp zzctpVar, zzijf zzijfVar2) {
        this.f6795a = zzijfVar;
        this.b = zzdlrVar;
        this.f6796c = zzdabVar;
        this.d = zzctpVar;
        this.e = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzepp((Context) this.f6795a.zzb(), ((zzdlr) this.b).f5889a.b, ((zzdab) this.f6796c).a(), this.d.f5461a.zzb(), (zzdxe) this.e.zzb());
    }
}
