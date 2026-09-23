package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
final class zzhhk {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f8548a;
    public final long[] b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f8549c;

    public zzhhk(long[] jArr, long[] jArr2, long[] jArr3) {
        this.f8548a = jArr;
        this.b = jArr2;
        this.f8549c = jArr3;
    }

    public static void a(zzhhj zzhhjVar, zzhhk zzhhkVar) {
        zzhhk zzhhkVar2 = zzhhjVar.f8547a;
        long[] jArr = zzhhkVar.f8548a;
        long[] jArr2 = zzhhkVar2.f8548a;
        long[] jArr3 = zzhhjVar.b;
        zzhht.e(jArr, jArr2, jArr3);
        long[] jArr4 = zzhhkVar.b;
        long[] jArr5 = zzhhkVar2.b;
        long[] jArr6 = zzhhkVar2.f8549c;
        zzhht.e(jArr4, jArr5, jArr6);
        zzhht.e(zzhhkVar.f8549c, jArr6, jArr3);
    }

    public final byte[] b() {
        long[] jArr = new long[10];
        long[] jArr2 = new long[10];
        long[] jArr3 = new long[10];
        long[] jArr4 = new long[10];
        long[] jArr5 = new long[10];
        long[] jArr6 = new long[10];
        long[] jArr7 = new long[10];
        long[] jArr8 = new long[10];
        long[] jArr9 = new long[10];
        long[] jArr10 = new long[10];
        long[] jArr11 = new long[10];
        long[] jArr12 = new long[10];
        long[] jArr13 = new long[10];
        long[] jArr14 = this.f8549c;
        zzhht.f(jArr4, jArr14);
        zzhht.f(jArr13, jArr4);
        zzhht.f(jArr12, jArr13);
        zzhht.e(jArr5, jArr12, jArr14);
        zzhht.e(jArr6, jArr5, jArr4);
        zzhht.f(jArr12, jArr6);
        zzhht.e(jArr7, jArr12, jArr5);
        zzhht.f(jArr12, jArr7);
        zzhht.f(jArr13, jArr12);
        zzhht.f(jArr12, jArr13);
        zzhht.f(jArr13, jArr12);
        zzhht.f(jArr12, jArr13);
        zzhht.e(jArr8, jArr12, jArr7);
        zzhht.f(jArr12, jArr8);
        zzhht.f(jArr13, jArr12);
        for (int i = 2; i < 10; i += 2) {
            zzhht.f(jArr12, jArr13);
            zzhht.f(jArr13, jArr12);
        }
        zzhht.e(jArr9, jArr13, jArr8);
        zzhht.f(jArr12, jArr9);
        zzhht.f(jArr13, jArr12);
        for (int i2 = 2; i2 < 20; i2 += 2) {
            zzhht.f(jArr12, jArr13);
            zzhht.f(jArr13, jArr12);
        }
        zzhht.e(jArr12, jArr13, jArr9);
        zzhht.f(jArr13, jArr12);
        zzhht.f(jArr12, jArr13);
        for (int i3 = 2; i3 < 10; i3 += 2) {
            zzhht.f(jArr13, jArr12);
            zzhht.f(jArr12, jArr13);
        }
        zzhht.e(jArr10, jArr12, jArr8);
        zzhht.f(jArr12, jArr10);
        zzhht.f(jArr13, jArr12);
        for (int i4 = 2; i4 < 50; i4 += 2) {
            zzhht.f(jArr12, jArr13);
            zzhht.f(jArr13, jArr12);
        }
        zzhht.e(jArr11, jArr13, jArr10);
        zzhht.f(jArr13, jArr11);
        zzhht.f(jArr12, jArr13);
        for (int i5 = 2; i5 < 100; i5 += 2) {
            zzhht.f(jArr13, jArr12);
            zzhht.f(jArr12, jArr13);
        }
        zzhht.e(jArr13, jArr12, jArr11);
        zzhht.f(jArr12, jArr13);
        zzhht.f(jArr13, jArr12);
        for (int i6 = 2; i6 < 50; i6 += 2) {
            zzhht.f(jArr12, jArr13);
            zzhht.f(jArr13, jArr12);
        }
        zzhht.e(jArr12, jArr13, jArr10);
        zzhht.f(jArr13, jArr12);
        zzhht.f(jArr12, jArr13);
        zzhht.f(jArr13, jArr12);
        zzhht.f(jArr12, jArr13);
        zzhht.f(jArr13, jArr12);
        zzhht.e(jArr, jArr13, jArr6);
        zzhht.e(jArr2, this.f8548a, jArr);
        zzhht.e(jArr3, this.b, jArr);
        byte[] h = zzhht.h(jArr3);
        h[31] = (byte) (((zzhht.h(jArr2)[0] & 1) << 7) ^ h[31]);
        return h;
    }

    public zzhhk() {
        this(new long[10], new long[10], new long[10]);
    }

    public zzhhk(zzhhj zzhhjVar) {
        this();
        a(zzhhjVar, this);
    }

    public zzhhk(zzhhk zzhhkVar) {
        this.f8548a = Arrays.copyOf(zzhhkVar.f8548a, 10);
        this.b = Arrays.copyOf(zzhhkVar.b, 10);
        this.f8549c = Arrays.copyOf(zzhhkVar.f8549c, 10);
    }
}
