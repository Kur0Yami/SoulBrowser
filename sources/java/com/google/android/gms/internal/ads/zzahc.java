package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzahc implements zzaeo {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4027a = new zzer(4);
    public final zzer b = new zzer(9);

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4028c = new zzer(11);
    public final zzer d = new zzer();
    public final zzahd e;
    public zzaer f;
    public int g;
    public boolean h;
    public long i;
    public int j;
    public int k;
    public int l;
    public long m;
    public boolean n;
    public zzaha o;
    public zzahg p;

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.ads.zzahf, com.google.android.gms.internal.ads.zzahd] */
    public zzahc() {
        ?? zzahfVar = new zzahf(new zzael());
        zzahfVar.b = -9223372036854775807L;
        zzahfVar.f4029c = new long[0];
        zzahfVar.d = new long[0];
        this.e = zzahfVar;
        this.g = 1;
    }

    public final zzer a(zzaep zzaepVar) {
        int i = this.l;
        zzer zzerVar = this.d;
        byte[] bArr = zzerVar.f6834a;
        if (i > bArr.length) {
            int length = bArr.length;
            zzerVar.z(new byte[Math.max(length + length, i)], 0);
        } else {
            zzerVar.E(0);
        }
        zzerVar.C(this.l);
        zzaepVar.i(zzerVar.f6834a, 0, this.l);
        return zzerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        if (j == 0) {
            this.g = 1;
            this.h = false;
        } else {
            this.g = 3;
        }
        this.j = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        zzer zzerVar = this.f4027a;
        zzaef zzaefVar = (zzaef) zzaepVar;
        zzaefVar.m(zzerVar.f6834a, 0, 3, false);
        zzerVar.E(0);
        if (zzerVar.O() == 4607062) {
            zzaefVar.m(zzerVar.f6834a, 0, 2, false);
            zzerVar.E(0);
            if ((zzerVar.L() & 250) == 0) {
                zzaefVar.m(zzerVar.f6834a, 0, 4, false);
                zzerVar.E(0);
                int b = zzerVar.b();
                zzaefVar.f = 0;
                zzaefVar.e(b, false);
                zzaefVar.m(zzerVar.f6834a, 0, 4, false);
                zzerVar.E(0);
                if (zzerVar.b() == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0396 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x03b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v34, types: [com.google.android.gms.internal.ads.zzahf, com.google.android.gms.internal.ads.zzaha] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r32, com.google.android.gms.internal.ads.zzafo r33) {
        /*
            Method dump skipped, instructions count: 1115
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahc.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.f = zzaerVar;
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
