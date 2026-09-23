package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.KotlinVersion;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public final class zzhhm {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhhh f8551a = new zzhhh(new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new long[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0});
    public static final zzhhj b = new zzhhj(new zzhhk(new long[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0}), new long[]{1, 0, 0, 0, 0, 0, 0, 0, 0, 0});

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f8552c = {-19, -45, -11, 92, 26, 99, 18, 88, -42, -100, -9, -94, -34, -7, -34, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16};

    public static byte[] a(byte[] bArr) {
        int i;
        byte[] bArr2 = new byte[64];
        int i2 = 0;
        while (true) {
            if (i2 >= 32) {
                break;
            }
            int i3 = i2 + i2;
            bArr2[i3] = (byte) (bArr[i2] & 15);
            bArr2[i3 + 1] = (byte) ((bArr[i2] & UByte.MAX_VALUE) >> 4);
            i2++;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < 63) {
            byte b2 = (byte) (bArr2[i4] + i5);
            bArr2[i4] = b2;
            int i6 = (b2 + 8) >> 4;
            bArr2[i4] = (byte) (b2 - (i6 << 4));
            i4++;
            i5 = i6;
        }
        bArr2[63] = (byte) (bArr2[63] + i5);
        zzhhj zzhhjVar = new zzhhj();
        zzhhl zzhhlVar = new zzhhl();
        for (i = 1; i < 64; i += 2) {
            zzhhh zzhhhVar = new zzhhh();
            h(zzhhhVar, i / 2, bArr2[i]);
            zzhhl.a(zzhhlVar, zzhhjVar);
            d(zzhhjVar, zzhhlVar, zzhhhVar);
        }
        zzhhk zzhhkVar = new zzhhk();
        zzhhk.a(zzhhjVar, zzhhkVar);
        f(zzhhjVar, zzhhkVar);
        zzhhk.a(zzhhjVar, zzhhkVar);
        f(zzhhjVar, zzhhkVar);
        zzhhk.a(zzhhjVar, zzhhkVar);
        f(zzhhjVar, zzhhkVar);
        zzhhk.a(zzhhjVar, zzhhkVar);
        f(zzhhjVar, zzhhkVar);
        for (int i7 = 0; i7 < 64; i7 += 2) {
            zzhhh zzhhhVar2 = new zzhhh();
            h(zzhhhVar2, i7 / 2, bArr2[i7]);
            zzhhl.a(zzhhlVar, zzhhjVar);
            d(zzhhjVar, zzhhlVar, zzhhhVar2);
        }
        zzhhk zzhhkVar2 = new zzhhk(zzhhjVar);
        long[] jArr = new long[10];
        zzhht.f(jArr, zzhhkVar2.f8548a);
        long[] jArr2 = new long[10];
        zzhht.f(jArr2, zzhhkVar2.b);
        long[] jArr3 = new long[10];
        zzhht.f(jArr3, zzhhkVar2.f8549c);
        long[] jArr4 = new long[10];
        zzhht.f(jArr4, jArr3);
        long[] jArr5 = new long[10];
        zzhht.b(jArr5, jArr2, jArr);
        zzhht.e(jArr5, jArr5, jArr3);
        long[] jArr6 = new long[10];
        zzhht.e(jArr6, jArr, jArr2);
        zzhht.e(jArr6, jArr6, zzhho.f8554a);
        zzhht.a(jArr6, jArr6, jArr4);
        zzhht.c(jArr6, jArr6);
        if (MessageDigest.isEqual(zzhht.h(jArr5), zzhht.h(jArr6))) {
            return zzhhkVar2.b();
        }
        throw new IllegalStateException("arithmetic error in scalar multiplication");
    }

    public static byte[] b(byte[] bArr) {
        MessageDigest messageDigest = (MessageDigest) zzhwc.e.f8846a.zza("SHA-512");
        messageDigest.update(bArr, 0, 32);
        byte[] digest = messageDigest.digest();
        digest[0] = (byte) (digest[0] & 248);
        int i = digest[31] & ByteCompanionObject.MAX_VALUE;
        digest[31] = (byte) i;
        digest[31] = (byte) (i | 64);
        return digest;
    }

    public static /* synthetic */ boolean c(long[] jArr) {
        long[] jArr2 = new long[11];
        System.arraycopy(jArr, 0, jArr2, 0, 10);
        zzhht.d(jArr2);
        byte[] h = zzhht.h(jArr2);
        for (int i = 0; i < 32; i++) {
            if (h[i] != 0) {
                return true;
            }
        }
        return false;
    }

    public static void d(zzhhj zzhhjVar, zzhhl zzhhlVar, zzhhh zzhhhVar) {
        zzhhk zzhhkVar = zzhhlVar.f8550a;
        zzhhk zzhhkVar2 = zzhhjVar.f8547a;
        long[] jArr = new long[10];
        long[] jArr2 = zzhhkVar2.f8548a;
        long[] jArr3 = zzhhkVar.b;
        long[] jArr4 = zzhhkVar.f8548a;
        zzhht.a(jArr2, jArr3, jArr4);
        long[] jArr5 = zzhhkVar2.b;
        zzhht.b(jArr5, jArr3, jArr4);
        zzhht.e(jArr5, jArr5, zzhhhVar.b);
        long[] jArr6 = zzhhhVar.f8545a;
        long[] jArr7 = zzhhkVar2.f8549c;
        zzhht.e(jArr7, jArr2, jArr6);
        long[] jArr8 = zzhhjVar.b;
        zzhht.e(jArr8, zzhhlVar.b, zzhhhVar.f8546c);
        zzhhhVar.a(jArr2, zzhhkVar.f8549c);
        zzhht.a(jArr, jArr2, jArr2);
        zzhht.b(jArr2, jArr7, jArr5);
        zzhht.a(jArr5, jArr7, jArr5);
        zzhht.a(jArr7, jArr, jArr8);
        zzhht.b(jArr8, jArr, jArr8);
    }

    public static void e(zzhhj zzhhjVar, zzhhl zzhhlVar, zzhhh zzhhhVar) {
        zzhhk zzhhkVar = zzhhlVar.f8550a;
        zzhhk zzhhkVar2 = zzhhjVar.f8547a;
        long[] jArr = new long[10];
        long[] jArr2 = zzhhkVar2.f8548a;
        long[] jArr3 = zzhhkVar.b;
        long[] jArr4 = zzhhkVar.f8548a;
        zzhht.a(jArr2, jArr3, jArr4);
        long[] jArr5 = zzhhkVar2.b;
        zzhht.b(jArr5, jArr3, jArr4);
        zzhht.e(jArr5, jArr5, zzhhhVar.f8545a);
        long[] jArr6 = zzhhhVar.b;
        long[] jArr7 = zzhhkVar2.f8549c;
        zzhht.e(jArr7, jArr2, jArr6);
        long[] jArr8 = zzhhjVar.b;
        zzhht.e(jArr8, zzhhlVar.b, zzhhhVar.f8546c);
        zzhhhVar.a(jArr2, zzhhkVar.f8549c);
        zzhht.a(jArr, jArr2, jArr2);
        zzhht.b(jArr2, jArr7, jArr5);
        zzhht.a(jArr5, jArr7, jArr5);
        zzhht.b(jArr7, jArr, jArr8);
        zzhht.a(jArr8, jArr, jArr8);
    }

    public static void f(zzhhj zzhhjVar, zzhhk zzhhkVar) {
        zzhhk zzhhkVar2 = zzhhjVar.f8547a;
        long[] jArr = zzhhkVar2.f8548a;
        long[] jArr2 = zzhhkVar.f8548a;
        long[] jArr3 = new long[10];
        zzhht.f(jArr, jArr2);
        long[] jArr4 = zzhhkVar2.f8549c;
        long[] jArr5 = zzhhkVar.b;
        zzhht.f(jArr4, jArr5);
        long[] jArr6 = zzhhjVar.b;
        zzhht.f(jArr6, zzhhkVar.f8549c);
        zzhht.a(jArr6, jArr6, jArr6);
        long[] jArr7 = zzhhkVar2.b;
        zzhht.a(jArr7, jArr2, jArr5);
        zzhht.f(jArr3, jArr7);
        zzhht.a(jArr7, jArr4, jArr);
        zzhht.b(jArr4, jArr4, jArr);
        zzhht.b(jArr, jArr3, jArr7);
        zzhht.b(jArr6, jArr6, jArr4);
    }

    public static int g(int i, int i2) {
        int i3 = (~(i ^ i2)) & KotlinVersion.MAX_COMPONENT_VALUE;
        int i4 = i3 & (i3 << 4);
        int i5 = i4 & (i4 << 2);
        return (i5 & (i5 + i5)) >> 7;
    }

    public static void h(zzhhh zzhhhVar, int i, byte b2) {
        zzhhh[][] zzhhhVarArr = zzhho.d;
        zzhhh zzhhhVar2 = zzhhhVarArr[i][0];
        int i2 = (b2 & UByte.MAX_VALUE) >> 7;
        int i3 = (-i2) & b2;
        int i4 = b2 - (i3 + i3);
        zzhhhVar.b(zzhhhVar2, g(i4, 1));
        zzhhhVar.b(zzhhhVarArr[i][1], g(i4, 2));
        zzhhhVar.b(zzhhhVarArr[i][2], g(i4, 3));
        zzhhhVar.b(zzhhhVarArr[i][3], g(i4, 4));
        zzhhhVar.b(zzhhhVarArr[i][4], g(i4, 5));
        zzhhhVar.b(zzhhhVarArr[i][5], g(i4, 6));
        zzhhhVar.b(zzhhhVarArr[i][6], g(i4, 7));
        zzhhhVar.b(zzhhhVarArr[i][7], g(i4, 8));
        long[] jArr = zzhhhVar.f8546c;
        long[] jArr2 = zzhhhVar.f8545a;
        long[] copyOf = Arrays.copyOf(zzhhhVar.b, 10);
        long[] copyOf2 = Arrays.copyOf(jArr2, 10);
        long[] copyOf3 = Arrays.copyOf(jArr, 10);
        for (int i5 = 0; i5 < copyOf3.length; i5++) {
            copyOf3[i5] = -copyOf3[i5];
        }
        zzhhhVar.b(new zzhhh(copyOf, copyOf2, copyOf3), i2);
    }

    public static byte[] i(byte[] bArr) {
        int i;
        byte[] bArr2 = new byte[256];
        for (int i2 = 0; i2 < 256; i2++) {
            bArr2[i2] = (byte) (1 & ((bArr[i2 >> 3] & UByte.MAX_VALUE) >> (i2 & 7)));
        }
        for (int i3 = 0; i3 < 256; i3++) {
            if (bArr2[i3] != 0) {
                for (int i4 = 1; i4 <= 6 && (i = i3 + i4) < 256; i4++) {
                    byte b2 = bArr2[i];
                    if (b2 != 0) {
                        byte b3 = bArr2[i3];
                        int i5 = b2 << i4;
                        int i6 = b3 + i5;
                        if (i6 <= 15) {
                            bArr2[i3] = (byte) i6;
                            bArr2[i] = 0;
                        } else {
                            int i7 = b3 - i5;
                            if (i7 >= -15) {
                                bArr2[i3] = (byte) i7;
                                while (true) {
                                    if (i >= 256) {
                                        break;
                                    }
                                    if (bArr2[i] == 0) {
                                        bArr2[i] = 1;
                                        break;
                                    }
                                    bArr2[i] = 0;
                                    i++;
                                }
                            }
                        }
                    }
                }
            }
        }
        return bArr2;
    }

    public static long j(byte[] bArr, int i) {
        return ((bArr[i + 2] & UByte.MAX_VALUE) << 16) | (bArr[i] & 255) | ((bArr[i + 1] & UByte.MAX_VALUE) << 8);
    }

    public static long k(byte[] bArr, int i) {
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | j(bArr, i);
    }
}
