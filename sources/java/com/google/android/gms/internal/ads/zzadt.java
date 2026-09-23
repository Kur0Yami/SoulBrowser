package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzadt {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3935a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3936c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final float k;
    public final String l;

    public zzadt(ArrayList arrayList, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, float f, String str) {
        this.f3935a = arrayList;
        this.b = i;
        this.f3936c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = i6;
        this.h = i7;
        this.i = i8;
        this.j = i9;
        this.k = f;
        this.l = str;
    }

    public static zzadt a(zzer zzerVar) {
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        float f;
        int i7;
        int i8;
        try {
            zzerVar.G(4);
            int K = (zzerVar.K() & 3) + 1;
            if (K != 3) {
                ArrayList arrayList = new ArrayList();
                int K2 = zzerVar.K() & 31;
                for (int i9 = 0; i9 < K2; i9++) {
                    int L = zzerVar.L();
                    int i10 = zzerVar.b;
                    zzerVar.G(L);
                    byte[] bArr = zzerVar.f6834a;
                    byte[] bArr2 = zzdo.f5952a;
                    byte[] bArr3 = new byte[L + 4];
                    System.arraycopy(zzdo.f5952a, 0, bArr3, 0, 4);
                    System.arraycopy(bArr, i10, bArr3, 4, L);
                    arrayList.add(bArr3);
                }
                int K3 = zzerVar.K();
                for (int i11 = 0; i11 < K3; i11++) {
                    int L2 = zzerVar.L();
                    int i12 = zzerVar.b;
                    zzerVar.G(L2);
                    byte[] bArr4 = zzerVar.f6834a;
                    byte[] bArr5 = zzdo.f5952a;
                    byte[] bArr6 = new byte[L2 + 4];
                    System.arraycopy(zzdo.f5952a, 0, bArr6, 0, 4);
                    System.arraycopy(bArr4, i12, bArr6, 4, L2);
                    arrayList.add(bArr6);
                }
                if (K2 > 0) {
                    zzgl d = zzgm.d((byte[]) arrayList.get(0), 5, ((byte[]) arrayList.get(0)).length);
                    int i13 = d.e;
                    int i14 = d.f;
                    int i15 = d.h + 8;
                    int i16 = d.i + 8;
                    int i17 = d.j;
                    int i18 = d.k;
                    int i19 = d.l;
                    int i20 = d.m;
                    float f2 = d.g;
                    int i21 = d.f8075a;
                    int i22 = d.b;
                    int i23 = d.f8076c;
                    byte[] bArr7 = zzdo.f5952a;
                    str = String.format("avc1.%02X%02X%02X", Integer.valueOf(i21), Integer.valueOf(i22), Integer.valueOf(i23));
                    i6 = i20;
                    f = f2;
                    i7 = i18;
                    i8 = i19;
                    i4 = i16;
                    i5 = i17;
                    i2 = i14;
                    i3 = i15;
                    i = i13;
                } else {
                    str = null;
                    i = -1;
                    i2 = -1;
                    i3 = -1;
                    i4 = -1;
                    i5 = -1;
                    i6 = 16;
                    f = 1.0f;
                    i7 = -1;
                    i8 = -1;
                }
                return new zzadt(arrayList, K, i, i2, i3, i4, i5, i7, i8, i6, f, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzat.a("Error parsing AVC config", e);
        }
    }
}
