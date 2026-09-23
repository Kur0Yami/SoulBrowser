package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcrg implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f5399a;
    public final /* synthetic */ zzcrm b;

    public zzcrg(zzcrm zzcrmVar, String str) {
        this.f5399a = str;
        this.b = zzcrmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        String str = (String) obj;
        zzcrm zzcrmVar = this.b;
        zzcrmVar.l.a(zzcrmVar.k.b(zzcrmVar.i, zzcrmVar.j, false, this.f5399a, str, zzcrmVar.a(), zzcrmVar.s, zzcrmVar.w), zzcrmVar.r);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        zzcrm zzcrmVar = this.b;
        zzcrmVar.l.a(zzcrmVar.k.b(zzcrmVar.i, zzcrmVar.j, false, this.f5399a, null, zzcrmVar.a(), zzcrmVar.s, zzcrmVar.w), null);
    }
}
