package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzakp implements zzaeo {

    /* renamed from: a, reason: collision with root package name */
    public final zzalw f4133a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4134c;
    public final zzer d;
    public final zzer e;
    public final zzer f;
    public final ArrayDeque g;
    public final zzakt h;
    public final ArrayList i;
    public zzgtd j;
    public int k;
    public int l;
    public long m;
    public int n;
    public zzer o;
    public int p;
    public int q;
    public int r;
    public int s;
    public boolean t;
    public boolean u;
    public zzaer v;
    public zzako[] w;
    public long[][] x;
    public int y;

    public zzakp() {
        this(zzalw.f4170a, 16);
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0193  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(long r42) {
        /*
            Method dump skipped, instructions count: 703
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakp.a(long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.g.clear();
        this.n = 0;
        this.p = -1;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = false;
        if (j == 0) {
            if (this.k != 3) {
                this.k = 0;
                this.n = 0;
                return;
            } else {
                zzakt zzaktVar = this.h;
                zzaktVar.f4138a.clear();
                zzaktVar.b = 0;
                this.i.clear();
                return;
            }
        }
        for (zzako zzakoVar : this.w) {
            zzaky zzakyVar = zzakoVar.b;
            int a2 = zzakyVar.a(j2);
            if (a2 == -1) {
                a2 = zzakyVar.b(j2);
            }
            zzakoVar.e = a2;
            zzagb zzagbVar = zzakoVar.d;
            if (zzagbVar != null) {
                zzagbVar.b = false;
                zzagbVar.f3997c = 0;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        zzgtd zzgtdVar;
        zzafv a2 = zzaku.a(zzaepVar, false, false);
        if (a2 != null) {
            zzgtdVar = zzgtd.r(a2);
        } else {
            zzgvs zzgvsVar = zzgtd.f;
            zzgtdVar = zzguy.i;
        }
        this.j = zzgtdVar;
        if (a2 != null) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:332:0x029f, code lost:
    
        if (r33 < r29) goto L116;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:210:0x007f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:216:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x02af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x038c A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v9, types: [com.google.android.gms.internal.ads.zzafk, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r38, com.google.android.gms.internal.ads.zzafo r39) {
        /*
            Method dump skipped, instructions count: 1766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakp.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        if ((this.b & 16) == 0) {
            zzaerVar = new zzalz(zzaerVar, this.f4133a);
        }
        this.v = zzaerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final /* synthetic */ List zzb() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void zzf() {
    }

    public zzakp(zzalw zzalwVar, int i) {
        this.f4133a = zzalwVar;
        this.b = i;
        zzgvs zzgvsVar = zzgtd.f;
        this.j = zzguy.i;
        this.k = 0;
        this.h = new zzakt();
        this.i = new ArrayList();
        this.f = new zzer(16);
        this.g = new ArrayDeque();
        this.f4134c = new zzer(zzgm.f8111a);
        this.d = new zzer(6);
        this.e = new zzer();
        this.p = -1;
        this.v = zzaer.d;
        this.w = new zzako[0];
    }
}
