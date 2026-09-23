package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdru implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcwc f6077a;
    public final zzije b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdoe f6078c;

    public zzdru(zzcwc zzcwcVar, zzije zzijeVar, zzdoe zzdoeVar) {
        this.f6077a = zzcwcVar;
        this.b = zzijeVar;
        this.f6078c = zzdoeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzdrt(this.f6077a.f5527a.f5525c, (zzdnh) this.b.zzb(), this.f6078c.a());
    }
}
