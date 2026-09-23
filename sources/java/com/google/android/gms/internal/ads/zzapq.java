package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzapq implements zzaeo {

    /* renamed from: a, reason: collision with root package name */
    public final List f4324a;
    public final zzer b = new zzer(new byte[9400], 0);

    /* renamed from: c, reason: collision with root package name */
    public final SparseIntArray f4325c;
    public final zzaod d;
    public final zzalr e;
    public final SparseArray f;
    public final SparseBooleanArray g;
    public final SparseBooleanArray h;
    public final zzapm i;
    public zzapl j;
    public zzaer k;
    public boolean l;
    public boolean m;
    public boolean n;
    public int o;

    public zzapq(zzalr zzalrVar, zzfg zzfgVar, zzaod zzaodVar) {
        this.d = zzaodVar;
        this.e = zzalrVar;
        this.f4324a = Collections.singletonList(zzfgVar);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.g = sparseBooleanArray;
        this.h = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.f = sparseArray;
        this.f4325c = new SparseIntArray();
        this.i = new zzapm();
        this.k = zzaer.d;
        this.o = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i = 0; i < size; i++) {
            this.f.put(sparseArray2.keyAt(i), (zzapv) sparseArray2.valueAt(i));
        }
        this.f.put(0, new zzaph(new zzapn(this)));
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        zzapl zzaplVar;
        List list = this.f4324a;
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            zzfg zzfgVar = (zzfg) list.get(i2);
            if (zzfgVar.b() != -9223372036854775807L) {
                long a2 = zzfgVar.a();
                if (a2 != -9223372036854775807L) {
                    if (a2 != 0) {
                        if (a2 == j2) {
                        }
                    }
                }
            }
            zzfgVar.c(j2);
        }
        if (j2 != 0 && (zzaplVar = this.j) != null) {
            zzaplVar.a(j2);
        }
        this.b.y(0);
        this.f4325c.clear();
        while (true) {
            SparseArray sparseArray = this.f;
            if (i < sparseArray.size()) {
                ((zzapv) sparseArray.valueAt(i)).zzb();
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        r1 = r1 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(com.google.android.gms.internal.ads.zzaep r7) {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzer r0 = r6.b
            byte[] r0 = r0.f6834a
            com.google.android.gms.internal.ads.zzaef r7 = (com.google.android.gms.internal.ads.zzaef) r7
            r1 = 940(0x3ac, float:1.317E-42)
            r2 = 0
            r7.m(r0, r2, r1, r2)
            r1 = r2
        Ld:
            r3 = 188(0xbc, float:2.63E-43)
            if (r1 >= r3) goto L29
            r3 = r2
        L12:
            r4 = 5
            if (r3 >= r4) goto L24
            int r4 = r3 * 188
            int r4 = r4 + r1
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L21
            int r1 = r1 + 1
            goto Ld
        L21:
            int r3 = r3 + 1
            goto L12
        L24:
            r7.d(r1, r2)
            r7 = 1
            return r7
        L29:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapq.d(com.google.android.gms.internal.ads.zzaep):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:173:0x0275, code lost:
    
        if (r5 == false) goto L155;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.ads.zzaea, com.google.android.gms.internal.ads.zzapl] */
    /* JADX WARN: Type inference failed for: r5v14, types: [com.google.android.gms.internal.ads.zzadx, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r27, com.google.android.gms.internal.ads.zzafo r28) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapq.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.k = new zzalz(zzaerVar, this.e);
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
