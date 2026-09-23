package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzaft implements zzaeo {

    /* renamed from: a, reason: collision with root package name */
    public final int f3988a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3989c;
    public int d;
    public int e;
    public zzaer f;
    public zzaga g;

    public zzaft(int i, int i2, String str) {
        this.f3988a = i;
        this.b = i2;
        this.f3989c = str;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        if (j == 0 || this.e == 1) {
            this.e = 1;
            this.d = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        boolean z;
        int i = this.b;
        int i2 = this.f3988a;
        if (i2 != -1 && i != -1) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        zzer zzerVar = new zzer(i);
        ((zzaef) zzaepVar).m(zzerVar.f6834a, 0, i, false);
        if (zzerVar.L() == i2) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final int e(zzaep zzaepVar, zzafo zzafoVar) {
        int i = this.e;
        if (i != 1) {
            if (i == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        zzaga zzagaVar = this.g;
        zzagaVar.getClass();
        int f = zzagaVar.f(zzaepVar, 1024, true);
        if (f == -1) {
            this.e = 2;
            this.g.d(0L, 1, this.d, 0, null);
            this.d = 0;
            return 0;
        }
        this.d += f;
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.google.android.gms.internal.ads.zzafr] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.f = zzaerVar;
        zzaga f = zzaerVar.f(1024, 4);
        this.g = f;
        zzt zztVar = new zzt();
        String str = this.f3989c;
        zztVar.d(str);
        zztVar.e(str);
        f.e(new zzv(zztVar));
        this.f.zzv();
        this.f.e(new Object());
        this.e = 1;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final List zzb() {
        zzgvs zzgvsVar = zzgtd.f;
        return zzguy.i;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void zzf() {
    }
}
