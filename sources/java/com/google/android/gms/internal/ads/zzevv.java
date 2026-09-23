package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7003a;

    public zzevv(zzijf zzijfVar) {
        this.f7003a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Object obj;
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzeun zzeunVar = new zzeun(zzgywVar);
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7003a.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.V4)).booleanValue()) {
            zzeyj zzeyjVar = new zzeyj(zzeunVar, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.W4)).intValue(), scheduledExecutorService);
            int i = zzgtn.g;
            obj = new zzgvo(zzeyjVar);
        } else {
            int i2 = zzgtn.g;
            obj = zzgve.n;
        }
        zzijo.a(obj);
        return obj;
    }
}
