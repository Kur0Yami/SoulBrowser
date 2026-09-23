package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzajx implements zzaju {

    /* renamed from: a, reason: collision with root package name */
    public final int f4109a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4110c;

    public zzajx(zzfv zzfvVar, zzv zzvVar) {
        zzer zzerVar = zzfvVar.b;
        this.f4110c = zzerVar;
        zzerVar.E(12);
        int h = zzerVar.h();
        if ("audio/raw".equals(zzvVar.m)) {
            int d = zzfj.d(zzvVar.G) * zzvVar.E;
            if (h == 0 || h % d != 0) {
                zzee.c("BoxParsers", com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(d).length() + 66 + String.valueOf(h).length()), "Audio sample size mismatch. stsd sample size: ", d, ", stsz sample size: ", h));
                h = d;
            }
        }
        this.f4109a = h == 0 ? -1 : h;
        this.b = zzerVar.h();
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final int zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final int zzb() {
        return this.f4109a;
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final int zzc() {
        int i = this.f4109a;
        if (i == -1) {
            return this.f4110c.h();
        }
        return i;
    }
}
