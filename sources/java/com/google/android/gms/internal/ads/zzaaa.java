package com.google.android.gms.internal.ads;

import android.util.Pair;
import j$.util.Objects;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzaaa extends zzaad {
    @Override // com.google.android.gms.internal.ads.zzaad
    public final void e(Object obj) {
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    @Override // com.google.android.gms.internal.ads.zzaad
    public final zzaae f(zzmk[] zzmkVarArr, zzyh zzyhVar, zzwg zzwgVar, zzbf zzbfVar) {
        boolean z;
        boolean z2;
        zzgtd zzgtdVar;
        int[] iArr;
        boolean z3;
        zzyh zzyhVar2 = zzyhVar;
        int[] iArr2 = new int[3];
        zzbg[][] zzbgVarArr = new zzbg[3];
        int[][][] iArr3 = new int[3][];
        for (int i = 0; i < 3; i++) {
            int i2 = zzyhVar2.f9388a;
            zzbgVarArr[i] = new zzbg[i2];
            iArr3[i] = new int[i2];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            iArr4[i4] = zzmkVarArr[i4].zzu();
        }
        int i5 = 0;
        while (i5 < zzyhVar2.f9388a) {
            zzbg a2 = zzyhVar2.a(i5);
            int i6 = a2.f4646c;
            zzv[] zzvVarArr = a2.d;
            int i7 = a2.f4645a;
            int i8 = i3;
            int i9 = 0;
            int i10 = 0;
            boolean z4 = true;
            while (i9 < i3) {
                zzmk zzmkVar = zzmkVarArr[i9];
                int i11 = 0;
                for (int i12 = 0; i12 < i7; i12++) {
                    i11 = Math.max(i11, zzmkVar.s(zzvVarArr[i12]) & 7);
                }
                if (iArr2[i9] == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (i11 <= i10) {
                    if (i11 == i10 && i6 == 5 && !z4 && z3) {
                        z4 = true;
                    }
                    i9++;
                    i3 = 2;
                } else {
                    z4 = z3;
                }
                i10 = i11;
                i8 = i9;
                i9++;
                i3 = 2;
            }
            if (i8 == i3) {
                iArr = new int[i7];
            } else {
                zzmk zzmkVar2 = zzmkVarArr[i8];
                int[] iArr5 = new int[i7];
                for (int i13 = 0; i13 < i7; i13++) {
                    iArr5[i13] = zzmkVar2.s(zzvVarArr[i13]);
                }
                iArr = iArr5;
            }
            int i14 = iArr2[i8];
            zzbgVarArr[i8][i14] = a2;
            iArr3[i8][i14] = iArr;
            iArr2[i8] = i14 + 1;
            i5++;
            zzyhVar2 = zzyhVar;
            i3 = 2;
        }
        int i15 = i3;
        zzyh[] zzyhVarArr = new zzyh[i15];
        String[] strArr = new String[i15];
        int[] iArr6 = new int[i15];
        int i16 = 0;
        while (i16 < i15) {
            int i17 = iArr2[i16];
            zzyhVarArr[i16] = new zzyh((zzbg[]) zzfj.m(i17, zzbgVarArr[i16]));
            iArr3[i16] = (int[][]) zzfj.m(i17, iArr3[i16]);
            strArr[i16] = zzmkVarArr[i16].c();
            iArr6[i16] = zzmkVarArr[i16].zza();
            i16++;
            i15 = 2;
        }
        int i18 = i15;
        zzzz zzzzVar = new zzzz(iArr6, zzyhVarArr, iArr4, iArr3, new zzyh((zzbg[]) zzfj.m(iArr2[i18], zzbgVarArr[i18])));
        Pair g = g(zzzzVar, iArr3, iArr4);
        zzaab[] zzaabVarArr = (zzaab[]) g.second;
        List[] listArr = new List[zzaabVarArr.length];
        for (int i19 = 0; i19 < zzaabVarArr.length; i19++) {
            zzaab zzaabVar = zzaabVarArr[i19];
            if (zzaabVar != null) {
                zzgtdVar = zzgtd.r(zzaabVar);
            } else {
                zzgtdVar = zzguy.i;
            }
            listArr[i19] = zzgtdVar;
        }
        int i20 = 4;
        ?? zzgsxVar = new zzgsx(4);
        int i21 = 0;
        while (i21 < 2) {
            zzyh zzyhVar3 = zzyhVarArr[i21];
            List list = listArr[i21];
            int i22 = 0;
            while (i22 < zzyhVar3.f9388a) {
                zzbg a3 = zzyhVar3.a(i22);
                int i23 = zzyhVarArr[i21].a(i22).f4645a;
                int[] iArr7 = new int[i23];
                int i24 = 0;
                for (int i25 = 0; i25 < i23; i25++) {
                    if ((iArr3[i21][i22][i25] & 7) == i20) {
                        int i26 = i24;
                        i24 = i26 + 1;
                        iArr7[i26] = i25;
                    }
                }
                int[] copyOf = Arrays.copyOf(iArr7, i24);
                String str = null;
                int i27 = 16;
                int i28 = 0;
                boolean z5 = false;
                int i29 = 0;
                while (i28 < copyOf.length) {
                    int[] iArr8 = copyOf;
                    String str2 = zzyhVarArr[i21].a(i22).d[copyOf[i28]].m;
                    int i30 = i29 + 1;
                    if (i29 == 0) {
                        str = str2;
                    } else {
                        z5 |= !Objects.equals(str, str2);
                    }
                    i27 = Math.min(i27, iArr3[i21][i22][i28] & 24);
                    i28++;
                    copyOf = iArr8;
                    i29 = i30;
                }
                if (z5) {
                    i27 = Math.min(i27, zzzzVar.f9424c[i21]);
                }
                if (i27 != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i31 = a3.f4645a;
                int[] iArr9 = new int[i31];
                boolean[] zArr = new boolean[i31];
                int i32 = 0;
                while (i32 < i31) {
                    iArr9[i32] = iArr3[i21][i22][i32] & 7;
                    List[] listArr2 = listArr;
                    int i33 = i31;
                    int i34 = 0;
                    while (true) {
                        if (i34 < list.size()) {
                            zzaab zzaabVar2 = (zzaab) list.get(i34);
                            int i35 = i34;
                            if (zzaabVar2.zza().equals(a3) && zzaabVar2.p(i32) != -1) {
                                z2 = true;
                                break;
                            }
                            i34 = i35 + 1;
                        } else {
                            z2 = false;
                            break;
                        }
                    }
                    zArr[i32] = z2;
                    i32++;
                    listArr = listArr2;
                    i31 = i33;
                }
                zzgsxVar.c(new zzbm(a3, z, iArr9, zArr));
                i22++;
                listArr = listArr;
                i20 = 4;
            }
            i21++;
            i20 = 4;
        }
        int i36 = 0;
        while (true) {
            zzyh zzyhVar4 = zzzzVar.d;
            if (i36 < zzyhVar4.f9388a) {
                zzbg a4 = zzyhVar4.a(i36);
                int i37 = a4.f4645a;
                int[] iArr10 = new int[i37];
                Arrays.fill(iArr10, 0);
                zzgsxVar.c(new zzbm(a4, false, iArr10, new boolean[i37]));
                i36++;
            } else {
                return new zzaae((zzml[]) g.first, (zzzw[]) g.second, new zzbn(zzgsxVar.f()), zzzzVar);
            }
        }
    }

    public abstract Pair g(zzzz zzzzVar, int[][][] iArr, int[] iArr2);
}
