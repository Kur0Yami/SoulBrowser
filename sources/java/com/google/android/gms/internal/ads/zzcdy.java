package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcdy implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcea f5073a;

    public zzcdy(zzcea zzceaVar) {
        this.f5073a = zzceaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        this.f5073a.b.set(1);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        this.f5073a.b.set(-1);
    }
}
