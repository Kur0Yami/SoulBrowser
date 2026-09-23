package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewl implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzezu f7024a;
    public final zzijp b;

    public zzewl(zzezu zzezuVar, zzijf zzijfVar) {
        this.f7024a = zzezuVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyj(new zzezt(((zzclp) this.f7024a.f7139a).a(), zzgywVar), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ud)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
