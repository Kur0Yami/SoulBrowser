package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaoy implements zzapg {

    /* renamed from: a, reason: collision with root package name */
    public zzv f4300a;
    public zzfg b;

    /* renamed from: c, reason: collision with root package name */
    public zzaga f4301c;

    public zzaoy(String str) {
        zzt zztVar = new zzt();
        zztVar.d("video/mp2t");
        zztVar.e(str);
        this.f4300a = new zzv(zztVar);
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void a(zzfg zzfgVar, zzaer zzaerVar, zzapu zzapuVar) {
        this.b = zzfgVar;
        zzapuVar.a();
        zzapuVar.b();
        zzaga f = zzaerVar.f(zzapuVar.d, 5);
        this.f4301c = f;
        f.e(this.f4300a);
    }

    @Override // com.google.android.gms.internal.ads.zzapg
    public final void b(zzer zzerVar) {
        long a2;
        long j;
        this.b.getClass();
        String str = zzfj.f7405a;
        zzfg zzfgVar = this.b;
        synchronized (zzfgVar) {
            try {
                long j2 = zzfgVar.f7318c;
                if (j2 != -9223372036854775807L) {
                    a2 = j2 + zzfgVar.b;
                } else {
                    a2 = zzfgVar.a();
                }
                j = a2;
            } finally {
            }
        }
        long b = this.b.b();
        if (j != -9223372036854775807L && b != -9223372036854775807L) {
            zzv zzvVar = this.f4300a;
            if (b != zzvVar.r) {
                zzt zztVar = new zzt(zzvVar);
                zztVar.q = b;
                zzv zzvVar2 = new zzv(zztVar);
                this.f4300a = zzvVar2;
                this.f4301c.e(zzvVar2);
            }
            int B = zzerVar.B();
            this.f4301c.b(B, zzerVar);
            this.f4301c.d(j, 1, B, 0, null);
        }
    }
}
