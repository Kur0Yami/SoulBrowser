package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevx implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzewr f7005a;
    public final zzijp b;

    public zzevx(zzewr zzewrVar, zzijf zzijfVar) {
        this.f7005a = zzewrVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = ((zzclp) this.f7005a.f7032a).a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyj(new zzewq(a2, zzgywVar), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ed)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
