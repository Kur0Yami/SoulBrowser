package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzagm implements zzaeo {
    public final zzalr d;
    public int e;
    public zzagn g;
    public long j;
    public zzagp k;
    public int o;
    public boolean p;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4009c = true;

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4008a = new zzer(12);
    public final zzagl b = new Object();
    public zzaer f = new Object();
    public zzagp[] i = new zzagp[0];
    public long m = -1;
    public long n = -1;
    public int l = -1;
    public long h = -9223372036854775807L;

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.internal.ads.zzagl, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, com.google.android.gms.internal.ads.zzaer] */
    public zzagm(zzalr zzalrVar) {
        this.d = zzalrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.j = -1L;
        this.k = null;
        int i = 0;
        for (zzagp zzagpVar : this.i) {
            if (zzagpVar.k == 0) {
                zzagpVar.i = 0;
            } else {
                zzagpVar.i = zzagpVar.n[zzfj.q(zzagpVar.m, j, true)];
            }
        }
        if (j == 0) {
            if (this.i.length != 0) {
                i = 3;
            }
            this.e = i;
            return;
        }
        this.e = 6;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        zzer zzerVar = this.f4008a;
        zzaepVar.j(zzerVar.f6834a, 0, 12);
        zzerVar.E(0);
        if (zzerVar.c() != 1179011410) {
            return false;
        }
        zzerVar.G(4);
        if (zzerVar.c() != 541677121) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03be  */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r31, com.google.android.gms.internal.ads.zzafo r32) {
        /*
            Method dump skipped, instructions count: 1158
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagm.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.e = 0;
        if (this.f4009c) {
            zzaerVar = new zzalz(zzaerVar, this.d);
        }
        this.f = zzaerVar;
        this.j = -1L;
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
