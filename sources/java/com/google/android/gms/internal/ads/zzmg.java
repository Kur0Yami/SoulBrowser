package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzmg extends zzii {
    public static final /* synthetic */ int k = 0;
    public final int d;
    public final int e;
    public final int[] f;
    public final int[] g;
    public final zzbf[] h;
    public final Object[] i;
    public final HashMap j;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzmg(java.util.List r7, com.google.android.gms.internal.ads.zzxz r8) {
        /*
            r6 = this;
            int r0 = r7.size()
            com.google.android.gms.internal.ads.zzbf[] r0 = new com.google.android.gms.internal.ads.zzbf[r0]
            java.util.Iterator r1 = r7.iterator()
            r2 = 0
            r3 = r2
        Lc:
            boolean r4 = r1.hasNext()
            if (r4 == 0) goto L22
            java.lang.Object r4 = r1.next()
            com.google.android.gms.internal.ads.zzlo r4 = (com.google.android.gms.internal.ads.zzlo) r4
            int r5 = r3 + 1
            com.google.android.gms.internal.ads.zzbf r4 = r4.zzb()
            r0[r3] = r4
            r3 = r5
            goto Lc
        L22:
            int r1 = r7.size()
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.util.Iterator r7 = r7.iterator()
        L2c:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L42
            java.lang.Object r3 = r7.next()
            com.google.android.gms.internal.ads.zzlo r3 = (com.google.android.gms.internal.ads.zzlo) r3
            int r4 = r2 + 1
            java.lang.Object r3 = r3.zza()
            r1[r2] = r3
            r2 = r4
            goto L2c
        L42:
            r6.<init>(r0, r1, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmg.<init>(java.util.List, com.google.android.gms.internal.ads.zzxz):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int a() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final int c() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int p(int i) {
        return zzfj.p(this.f, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int q(int i) {
        return zzfj.p(this.g, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int r(Object obj) {
        Integer num = (Integer) this.j.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final zzbf s(int i) {
        return this.h[i];
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int t(int i) {
        return this.f[i];
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final int u(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.ads.zzii
    public final Object v(int i) {
        return this.i[i];
    }

    public zzmg(zzbf[] zzbfVarArr, Object[] objArr, zzxz zzxzVar) {
        super(zzxzVar);
        this.h = zzbfVarArr;
        int length = zzbfVarArr.length;
        this.f = new int[length];
        this.g = new int[length];
        this.i = objArr;
        this.j = new HashMap();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < zzbfVarArr.length) {
            zzbf zzbfVar = zzbfVarArr[i];
            this.h[i4] = zzbfVar;
            this.g[i4] = i2;
            this.f[i4] = i3;
            i2 += zzbfVar.a();
            i3 += this.h[i4].c();
            this.j.put(objArr[i4], Integer.valueOf(i4));
            i++;
            i4++;
        }
        this.d = i2;
        this.e = i3;
    }
}
