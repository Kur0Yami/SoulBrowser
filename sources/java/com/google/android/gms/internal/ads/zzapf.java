package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.util.List;
import kotlin.UByte;
import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
public final class zzapf implements zzaeo {
    public boolean e;
    public boolean f;
    public boolean g;
    public long h;
    public zzapb i;
    public zzaer j;
    public boolean k;

    /* renamed from: a, reason: collision with root package name */
    public final zzfg f4310a = new zzfg();

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4311c = new zzer(ConstantsKt.DEFAULT_BLOCK_SIZE);
    public final SparseArray b = new SparseArray();
    public final zzapc d = new zzapc();

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001f, code lost:
    
        if (r0 != r7) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035 A[LOOP:0: B:13:0x002d->B:15:0x0035, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(long r5, long r7) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzfg r5 = r4.f4310a
            long r0 = r5.b()
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 == 0) goto L21
            long r0 = r5.a()
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 == 0) goto L24
            r2 = 0
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 == 0) goto L24
            int r6 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r6 == 0) goto L24
        L21:
            r5.c(r7)
        L24:
            com.google.android.gms.internal.ads.zzapb r5 = r4.i
            r6 = 0
            if (r5 == 0) goto L2c
            r5.a(r7)
        L2c:
            r5 = r6
        L2d:
            android.util.SparseArray r7 = r4.b
            int r8 = r7.size()
            if (r5 >= r8) goto L45
            java.lang.Object r7 = r7.valueAt(r5)
            com.google.android.gms.internal.ads.zzapd r7 = (com.google.android.gms.internal.ads.zzapd) r7
            r7.f = r6
            com.google.android.gms.internal.ads.zzaog r7 = r7.f4308a
            r7.zza()
            int r5 = r5 + 1
            goto L2d
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapf.c(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        byte[] bArr = new byte[14];
        zzaef zzaefVar = (zzaef) zzaepVar;
        zzaefVar.m(bArr, 0, 14, false);
        if ((((bArr[0] & UByte.MAX_VALUE) << 24) | ((bArr[1] & UByte.MAX_VALUE) << 16) | ((bArr[2] & UByte.MAX_VALUE) << 8) | (bArr[3] & UByte.MAX_VALUE)) == 442 && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            zzaefVar.e(bArr[13] & 7, false);
            zzaefVar.m(bArr, 0, 3, false);
            if ((((bArr[0] & UByte.MAX_VALUE) << 16) | ((bArr[1] & UByte.MAX_VALUE) << 8) | (bArr[2] & UByte.MAX_VALUE)) == 1) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x022b  */
    /* JADX WARN: Type inference failed for: r5v17, types: [com.google.android.gms.internal.ads.zzapb, com.google.android.gms.internal.ads.zzaea] */
    /* JADX WARN: Type inference failed for: r6v17, types: [com.google.android.gms.internal.ads.zzadx, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r26, com.google.android.gms.internal.ads.zzafo r27) {
        /*
            Method dump skipped, instructions count: 799
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzapf.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.j = zzaerVar;
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
