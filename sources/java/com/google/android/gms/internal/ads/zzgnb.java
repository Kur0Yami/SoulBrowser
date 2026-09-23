package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgnb implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzgna f8151a;

    public zzgnb(zzgnc zzgncVar, zzgna zzgnaVar) {
        this.f8151a = zzgnaVar;
        Objects.requireNonNull(zzgncVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        this.f8151a.c();
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzgna zzgnaVar = this.f8151a;
        zzgnaVar.b(th);
        zzgnaVar.c();
    }
}
