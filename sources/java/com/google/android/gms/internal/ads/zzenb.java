package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzenb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzena f6709a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzemu f6710c;
    public final zzijf d;
    public final zzijp e;

    public zzenb(zzena zzenaVar, zzijp zzijpVar, zzemu zzemuVar, zzijf zzijfVar, zzijp zzijpVar2) {
        this.f6709a = zzenaVar;
        this.b = zzijpVar;
        this.f6710c = zzemuVar;
        this.d = zzijfVar;
        this.e = zzijpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Clock clock = (Clock) this.b.zzb();
        zzemu zzemuVar = this.f6710c;
        zzemt zzemtVar = new zzemt((zzfjd) zzemuVar.f6698a.zzb(), (zzdur) zzemuVar.b.zzb(), (zzdxe) zzemuVar.f6699c.zzb());
        zzejl zzejlVar = (zzejl) this.d.zzb();
        zzfpi zzfpiVar = (zzfpi) this.e.zzb();
        zzemr zzemrVar = this.f6709a.f6708a;
        if (zzemrVar != null) {
            return zzemrVar;
        }
        return new zzemr(clock, zzemtVar, zzejlVar, zzfpiVar);
    }
}
