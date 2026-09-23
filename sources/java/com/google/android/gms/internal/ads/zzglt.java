package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzglt implements zzgls {

    /* renamed from: a, reason: collision with root package name */
    public final zzija f8102a;
    public final zzgnc b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8103c;

    public zzglt(zzija zzijaVar, zzgnc zzgncVar, long j) {
        this.f8102a = zzijaVar;
        this.b = zzgncVar;
        this.f8103c = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgls
    public final boolean a(zzgcs zzgcsVar) {
        zzgnc zzgncVar = this.b;
        if (zzgcsVar != null && !zzgcsVar.equals(zzgcs.I())) {
            if (zzgcsVar.F() != this.f8102a.zzb()) {
                zzgncVar.b(15103);
                return false;
            }
            return true;
        }
        zzgncVar.b(15102);
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgls
    public final boolean b(zzgcs zzgcsVar) {
        boolean z = true;
        zzgnc zzgncVar = this.b;
        if (zzgcsVar != null && !zzgcsVar.equals(zzgcs.I())) {
            if (zzgcsVar.F() != this.f8102a.zzb()) {
                zzgncVar.b(15105);
                return true;
            }
            if ((zzgcsVar.D().F() * 1000) - System.currentTimeMillis() > this.f8103c) {
                z = false;
            }
            if (z) {
                zzgncVar.b(15106);
            }
            return z;
        }
        zzgncVar.b(15104);
        return true;
    }
}
