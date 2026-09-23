package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdsb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcwc f6087a;
    public final zzije b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdoe f6088c;
    public final zzijp d;

    public zzdsb(zzcwc zzcwcVar, zzije zzijeVar, zzdoe zzdoeVar, zzijf zzijfVar) {
        this.f6087a = zzcwcVar;
        this.b = zzijeVar;
        this.f6088c = zzdoeVar;
        this.d = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzdsa(this.f6087a.f5527a.f5525c, (zzdnh) this.b.zzb(), this.f6088c.a(), (zzdxe) this.d.zzb());
    }
}
