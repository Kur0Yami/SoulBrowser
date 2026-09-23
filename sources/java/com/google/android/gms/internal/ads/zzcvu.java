package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzcvu implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgyj f5514a;
    public final /* synthetic */ zzcvz b;

    public zzcvu(zzcvz zzcvzVar, zzgyj zzgyjVar) {
        this.f5514a = zzgyjVar;
        Objects.requireNonNull(zzcvzVar);
        this.b = zzcvzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        zzcvz zzcvzVar = this.b;
        zzcvzVar.getClass();
        ((zzcdn) zzcdo.f).execute(new zzcvx(zzcvzVar));
        ((zzerj) this.f5514a).a((zzcvk) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzcvz zzcvzVar = this.b;
        zzcvzVar.getClass();
        ((zzcdn) zzcdo.f).execute(new zzcvx(zzcvzVar));
        ((zzerj) this.f5514a).b(th);
    }
}
