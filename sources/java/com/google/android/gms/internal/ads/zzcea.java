package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;

@Deprecated
/* loaded from: classes.dex */
public class zzcea {

    /* renamed from: a, reason: collision with root package name */
    public final zzcdt f5076a;
    public final AtomicInteger b;

    public zzcea() {
        zzcdt zzcdtVar = new zzcdt();
        this.f5076a = zzcdtVar;
        this.b = new AtomicInteger(0);
        zzcdy zzcdyVar = new zzcdy(this);
        zzcdtVar.k(new zzgyk(zzcdtVar, zzcdyVar), zzcdo.g);
    }

    public final void a(zzcdx zzcdxVar, zzcdv zzcdvVar) {
        zzcdz zzcdzVar = new zzcdz(this, zzcdxVar, zzcdvVar);
        zzgyw zzgywVar = zzcdo.g;
        zzcdt zzcdtVar = this.f5076a;
        zzcdtVar.k(new zzgyk(zzcdtVar, zzcdzVar), zzgywVar);
    }

    public final void b() {
        this.f5076a.b(new Exception());
    }

    public final void c(String str, Throwable th) {
        this.f5076a.b(th);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F8)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().g(str, th);
        }
    }
}
