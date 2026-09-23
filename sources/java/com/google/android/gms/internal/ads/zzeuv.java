package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzeuv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzfaf f6963a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6964c;

    public zzeuv(zzfaf zzfafVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6963a = zzfafVar;
        this.b = zzijfVar;
        this.f6964c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = this.f6963a.f7153a.a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzfad zzfadVar = new zzfad(a2, zzgywVar);
        Clock clock = (Clock) this.b.zzb();
        zzijo.a(zzgywVar);
        return new zzeul(zzfadVar, 2147483647L, clock, zzgywVar, (zzdxe) this.f6964c.zzb());
    }
}
