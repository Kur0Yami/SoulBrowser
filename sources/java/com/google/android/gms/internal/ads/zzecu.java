package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzecu implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6378a;
    public final zzedt b;

    /* renamed from: c, reason: collision with root package name */
    public final zzefx f6379c;

    public zzecu(zzijf zzijfVar, zzedt zzedtVar, zzefx zzefxVar) {
        this.f6378a = zzijfVar;
        this.b = zzedtVar;
        this.f6379c = zzefxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzect zzb() {
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f6378a.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzgyw zzgywVar2 = zzcdo.b;
        zzijo.a(zzgywVar2);
        Context a2 = ((zzclp) this.b.f6406a).a();
        zzijo.a(zzgywVar);
        return new zzect(scheduledExecutorService, zzgywVar, zzgywVar2, new zzeds(a2, zzgywVar), zzijf.b(this.f6379c));
    }
}
