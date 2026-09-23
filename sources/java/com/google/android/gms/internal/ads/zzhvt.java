package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzhvt implements zzhaq {

    /* renamed from: a, reason: collision with root package name */
    public final zzhxc f8836a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8837c;

    public zzhvt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (zzhhb.a(1)) {
            if (bArr.length == 32) {
                this.f8836a = zzhxc.a(bArr);
                this.b = bArr2;
                this.f8837c = bArr3;
                if (zzhho.f8554a != null) {
                    return;
                } else {
                    throw new IllegalStateException("Could not initialize Ed25519.");
                }
            }
            throw new IllegalArgumentException("Given public key's length is not 32.");
        }
        throw new IllegalStateException(new GeneralSecurityException("Can not use Ed25519 in FIPS-mode."));
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.b;
        int length = bArr3.length;
        byte[] bArr4 = this.f8837c;
        if (length == 0 && bArr4.length == 0) {
            b(bArr, bArr2);
        } else {
            if (zzhkl.c(bArr3, bArr)) {
                if (bArr4.length != 0) {
                    bArr2 = zzhvp.a(bArr2, bArr4);
                }
                b(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
                return;
            }
            throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
        }
    }

    public final void b(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = bArr;
        if (bArr3.length == 64) {
            byte[] b = this.f8836a.b();
            if (bArr3.length == 64) {
                byte[] copyOfRange = Arrays.copyOfRange(bArr3, 32, 64);
                int i = 31;
                while (true) {
                    if (i < 0) {
                        break;
                    }
                    int i2 = copyOfRange[i] & UByte.MAX_VALUE;
                    int i3 = zzhhm.f8552c[i] & UByte.MAX_VALUE;
                    if (i2 != i3) {
                        if (i2 < i3) {
                            MessageDigest messageDigest = (MessageDigest) zzhwc.e.f8846a.zza("SHA-512");
                            messageDigest.update(bArr3, 0, 32);
                            messageDigest.update(b);
                            messageDigest.update(bArr2);
                            byte[] digest = messageDigest.digest();
                            long j = zzhhm.j(digest, 0) & 2097151;
                            long k = zzhhm.k(digest, 2) >> 5;
                            long j2 = zzhhm.j(digest, 5) >> 2;
                            long k2 = zzhhm.k(digest, 7) >> 7;
                            long k3 = zzhhm.k(digest, 10) >> 4;
                            long j3 = zzhhm.j(digest, 13) >> 1;
                            long k4 = zzhhm.k(digest, 15) >> 6;
                            long j4 = zzhhm.j(digest, 18) >> 3;
                            long j5 = zzhhm.j(digest, 21) & 2097151;
                            long k5 = zzhhm.k(digest, 23) >> 5;
                            long j6 = zzhhm.j(digest, 26) >> 2;
                            long k6 = zzhhm.k(digest, 28) >> 7;
                            long k7 = zzhhm.k(digest, 31) >> 4;
                            long j7 = zzhhm.j(digest, 34) >> 1;
                            long k8 = zzhhm.k(digest, 36) >> 6;
                            long j8 = zzhhm.j(digest, 39) >> 3;
                            long j9 = zzhhm.j(digest, 42) & 2097151;
                            long k9 = zzhhm.k(digest, 44) >> 5;
                            long j10 = (zzhhm.j(digest, 47) >> 2) & 2097151;
                            long k10 = (zzhhm.k(digest, 49) >> 7) & 2097151;
                            long k11 = (zzhhm.k(digest, 52) >> 4) & 2097151;
                            long j11 = (zzhhm.j(digest, 55) >> 1) & 2097151;
                            long k12 = (zzhhm.k(digest, 57) >> 6) & 2097151;
                            long k13 = zzhhm.k(digest, 60) >> 3;
                            long j12 = (k11 * 666643) + j5;
                            long j13 = (k10 * 666643) + j4;
                            long j14 = (j10 * 666643) + (k4 & 2097151);
                            long j15 = (j14 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j16 = j15 << 21;
                            long j17 = (j10 * 654183) + (k10 * 470296) + j12;
                            long j18 = (j17 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j19 = j18 << 21;
                            long j20 = (j10 * 136657) + (((k11 * 654183) + ((j11 * 470296) + ((k12 * 666643) + (j6 & 2097151)))) - (k10 * 997805));
                            long j21 = (j20 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j22 = j21 << 21;
                            long j23 = ((k11 * 136657) + (((k12 * 654183) + ((k13 * 470296) + (k7 & 2097151))) - (j11 * 997805))) - (k10 * 683901);
                            long j24 = (j23 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j25 = ((k12 * 136657) + ((k8 & 2097151) - (k13 * 997805))) - (j11 * 683901);
                            long j26 = (j25 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j27 = j26 << 21;
                            long j28 = j9 - (k13 * 683901);
                            long j29 = (j28 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j30 = (j10 * 470296) + j13 + j15;
                            long j31 = (j30 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j32 = j31 << 21;
                            long j33 = (((k10 * 654183) + ((k11 * 470296) + ((j11 * 666643) + (k5 & 2097151)))) - (j10 * 997805)) + j18;
                            long j34 = (j33 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j35 = j34 << 21;
                            long j36 = (((k10 * 136657) + (((j11 * 654183) + ((k12 * 470296) + ((k13 * 666643) + (k6 & 2097151)))) - (k11 * 997805))) - (j10 * 683901)) + j21;
                            long j37 = (j36 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j38 = j37 << 21;
                            long j39 = (((j11 * 136657) + (((k13 * 654183) + (j7 & 2097151)) - (k12 * 997805))) - (k11 * 683901)) + j24;
                            long j40 = (j39 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j41 = (((k13 * 136657) + j8) - (k12 * 683901)) + j26;
                            long j42 = (j41 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j43 = (j23 - (j24 << 21)) + j37;
                            long j44 = (j43 * 666643) + j;
                            long j45 = (j44 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j46 = j45 << 21;
                            long j47 = (j25 - j27) + j40;
                            long j48 = j39 - (j40 << 21);
                            long j49 = (j43 * 654183) + (j48 * 470296) + (j47 * 666643) + (j2 & 2097151);
                            long j50 = (j49 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j51 = j50 << 21;
                            long j52 = (j28 - (j29 << 21)) + j42;
                            long j53 = j41 - (j42 << 21);
                            long j54 = (j43 * 136657) + (((j47 * 654183) + ((j53 * 470296) + ((j52 * 666643) + (k3 & 2097151)))) - (j48 * 997805));
                            long j55 = (j54 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j56 = j55 << 21;
                            long j57 = (k9 & 2097151) + j29;
                            long j58 = ((j47 * 136657) + (((j52 * 654183) + ((j57 * 470296) + (j14 - j16))) - (j53 * 997805))) - (j48 * 683901);
                            long j59 = (j58 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j60 = j59 << 21;
                            long j61 = ((j52 * 136657) + (((j17 - j19) + j31) - (j57 * 997805))) - (j53 * 683901);
                            long j62 = (j61 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j63 = j62 << 21;
                            long j64 = ((j20 - j22) + j34) - (j57 * 683901);
                            long j65 = (j64 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j66 = j65 << 21;
                            long j67 = (j43 * 470296) + (j48 * 666643) + (k & 2097151) + j45;
                            long j68 = (j67 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j69 = (((j48 * 654183) + ((j47 * 470296) + ((j53 * 666643) + (k2 & 2097151)))) - (j43 * 997805)) + j50;
                            long j70 = (j69 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j71 = (((j48 * 136657) + (((j53 * 654183) + ((j52 * 470296) + ((j57 * 666643) + (j3 & 2097151)))) - (j47 * 997805))) - (j43 * 683901)) + j55;
                            long j72 = (j71 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j73 = (((j53 * 136657) + (((j57 * 654183) + (j30 - j32)) - (j52 * 997805))) - (j47 * 683901)) + j59;
                            long j74 = (j73 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j75 = (((j57 * 136657) + (j33 - j35)) - (j52 * 683901)) + j62;
                            long j76 = (j75 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j77 = (j36 - j38) + j65;
                            long j78 = (j77 + PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) >> 21;
                            long j79 = j78 << 21;
                            long j80 = (j78 * 666643) + (j44 - j46);
                            long j81 = j80 >> 21;
                            long j82 = j81 << 21;
                            long j83 = (j78 * 470296) + (j67 - (j68 << 21)) + j81;
                            long j84 = j83 >> 21;
                            long j85 = j84 << 21;
                            long j86 = (j78 * 654183) + (j49 - j51) + j68 + j84;
                            long j87 = j86 >> 21;
                            long j88 = j87 << 21;
                            long j89 = ((j69 - (j70 << 21)) - (j78 * 997805)) + j87;
                            long j90 = j89 >> 21;
                            long j91 = j90 << 21;
                            long j92 = (j78 * 136657) + (j54 - j56) + j70 + j90;
                            long j93 = j92 >> 21;
                            long j94 = j93 << 21;
                            long j95 = ((j71 - (j72 << 21)) - (j78 * 683901)) + j93;
                            long j96 = j95 >> 21;
                            long j97 = j96 << 21;
                            long j98 = (j58 - j60) + j72 + j96;
                            long j99 = j98 >> 21;
                            long j100 = j99 << 21;
                            long j101 = (j73 - (j74 << 21)) + j99;
                            long j102 = j101 >> 21;
                            long j103 = j102 << 21;
                            long j104 = (j61 - j63) + j74 + j102;
                            long j105 = j104 >> 21;
                            long j106 = j105 << 21;
                            long j107 = (j75 - (j76 << 21)) + j105;
                            long j108 = j107 >> 21;
                            long j109 = j108 << 21;
                            long j110 = (j64 - j66) + j76 + j108;
                            long j111 = j110 >> 21;
                            long j112 = j111 << 21;
                            long j113 = (j77 - j79) + j111;
                            long j114 = j113 >> 21;
                            long j115 = j114 << 21;
                            long j116 = (666643 * j114) + (j80 - j82);
                            long j117 = j116 >> 21;
                            long j118 = j117 << 21;
                            long j119 = (470296 * j114) + (j83 - j85) + j117;
                            long j120 = j119 >> 21;
                            long j121 = j120 << 21;
                            long j122 = (654183 * j114) + (j86 - j88) + j120;
                            long j123 = j122 >> 21;
                            long j124 = j123 << 21;
                            long j125 = ((j89 - j91) - (997805 * j114)) + j123;
                            long j126 = j125 >> 21;
                            long j127 = j126 << 21;
                            long j128 = (136657 * j114) + (j92 - j94) + j126;
                            long j129 = j128 >> 21;
                            long j130 = j129 << 21;
                            long j131 = ((j95 - j97) - (j114 * 683901)) + j129;
                            long j132 = j131 >> 21;
                            long j133 = j132 << 21;
                            long j134 = (j98 - j100) + j132;
                            long j135 = j134 >> 21;
                            long j136 = j135 << 21;
                            long j137 = (j101 - j103) + j135;
                            long j138 = j137 >> 21;
                            long j139 = j138 << 21;
                            long j140 = (j104 - j106) + j138;
                            long j141 = j140 >> 21;
                            long j142 = j141 << 21;
                            long j143 = (j107 - j109) + j141;
                            long j144 = j143 >> 21;
                            long j145 = j144 << 21;
                            long j146 = (j110 - j112) + j144;
                            long j147 = j146 >> 21;
                            digest[0] = (byte) (j116 - j118);
                            long j148 = j137 - j139;
                            long j149 = j134 - j136;
                            long j150 = j131 - j133;
                            long j151 = j128 - j130;
                            long j152 = j125 - j127;
                            long j153 = j122 - j124;
                            long j154 = j119 - j121;
                            digest[1] = (byte) (r13 >> 8);
                            digest[2] = (byte) ((r13 >> 16) | (j154 << 5));
                            digest[3] = (byte) (j154 >> 3);
                            digest[4] = (byte) (j154 >> 11);
                            digest[5] = (byte) ((j154 >> 19) | (j153 << 2));
                            digest[6] = (byte) (j153 >> 6);
                            digest[7] = (byte) ((j153 >> 14) | (j152 << 7));
                            digest[8] = (byte) (j152 >> 1);
                            digest[9] = (byte) (j152 >> 9);
                            digest[10] = (byte) ((j152 >> 17) | (j151 << 4));
                            digest[11] = (byte) (j151 >> 4);
                            digest[12] = (byte) (j151 >> 12);
                            digest[13] = (byte) ((j151 >> 20) | (j150 + j150));
                            digest[14] = (byte) (j150 >> 7);
                            digest[15] = (byte) ((j150 >> 15) | (j149 << 6));
                            digest[16] = (byte) (j149 >> 2);
                            digest[17] = (byte) (j149 >> 10);
                            digest[18] = (byte) ((j149 >> 18) | (j148 << 3));
                            long j155 = j146 - (j147 << 21);
                            long j156 = (j113 - j115) + j147;
                            long j157 = j143 - j145;
                            digest[19] = (byte) (j148 >> 5);
                            digest[20] = (byte) (j148 >> 13);
                            digest[21] = (byte) (j140 - j142);
                            digest[22] = (byte) (r9 >> 8);
                            digest[23] = (byte) ((r9 >> 16) | (j157 << 5));
                            digest[24] = (byte) (j157 >> 3);
                            digest[25] = (byte) (j157 >> 11);
                            digest[26] = (byte) ((j157 >> 19) | (j155 << 2));
                            digest[27] = (byte) (j155 >> 6);
                            digest[28] = (byte) ((j155 >> 14) | (j156 << 7));
                            digest[29] = (byte) (j156 >> 1);
                            digest[30] = (byte) (j156 >> 9);
                            digest[31] = (byte) (j156 >> 17);
                            long[] jArr = new long[10];
                            long[] g = zzhht.g(b);
                            long[] jArr2 = new long[10];
                            jArr2[0] = 1;
                            long[] jArr3 = new long[10];
                            long[] jArr4 = new long[10];
                            long[] jArr5 = new long[10];
                            long[] jArr6 = new long[10];
                            long[] jArr7 = new long[10];
                            zzhht.f(jArr4, g);
                            zzhht.e(jArr5, jArr4, zzhho.f8554a);
                            zzhht.b(jArr4, jArr4, jArr2);
                            zzhht.a(jArr5, jArr5, jArr2);
                            long[] jArr8 = new long[10];
                            zzhht.f(jArr8, jArr5);
                            zzhht.e(jArr8, jArr8, jArr5);
                            zzhht.f(jArr, jArr8);
                            zzhht.e(jArr, jArr, jArr5);
                            zzhht.e(jArr, jArr, jArr4);
                            long[] jArr9 = new long[10];
                            long[] jArr10 = new long[10];
                            long[] jArr11 = new long[10];
                            zzhht.f(jArr9, jArr);
                            zzhht.f(jArr10, jArr9);
                            zzhht.f(jArr10, jArr10);
                            zzhht.e(jArr10, jArr, jArr10);
                            zzhht.e(jArr9, jArr9, jArr10);
                            zzhht.f(jArr9, jArr9);
                            zzhht.e(jArr9, jArr10, jArr9);
                            zzhht.f(jArr10, jArr9);
                            for (int i4 = 1; i4 < 5; i4++) {
                                zzhht.f(jArr10, jArr10);
                            }
                            zzhht.e(jArr9, jArr10, jArr9);
                            zzhht.f(jArr10, jArr9);
                            for (int i5 = 1; i5 < 10; i5++) {
                                zzhht.f(jArr10, jArr10);
                            }
                            zzhht.e(jArr10, jArr10, jArr9);
                            zzhht.f(jArr11, jArr10);
                            for (int i6 = 1; i6 < 20; i6++) {
                                zzhht.f(jArr11, jArr11);
                            }
                            zzhht.e(jArr10, jArr11, jArr10);
                            zzhht.f(jArr10, jArr10);
                            for (int i7 = 1; i7 < 10; i7++) {
                                zzhht.f(jArr10, jArr10);
                            }
                            zzhht.e(jArr9, jArr10, jArr9);
                            zzhht.f(jArr10, jArr9);
                            for (int i8 = 1; i8 < 50; i8++) {
                                zzhht.f(jArr10, jArr10);
                            }
                            zzhht.e(jArr10, jArr10, jArr9);
                            zzhht.f(jArr11, jArr10);
                            for (int i9 = 1; i9 < 100; i9++) {
                                zzhht.f(jArr11, jArr11);
                            }
                            zzhht.e(jArr10, jArr11, jArr10);
                            zzhht.f(jArr10, jArr10);
                            for (int i10 = 1; i10 < 50; i10++) {
                                zzhht.f(jArr10, jArr10);
                            }
                            zzhht.e(jArr9, jArr10, jArr9);
                            zzhht.f(jArr9, jArr9);
                            zzhht.f(jArr9, jArr9);
                            zzhht.e(jArr, jArr9, jArr);
                            zzhht.e(jArr, jArr, jArr8);
                            zzhht.e(jArr, jArr, jArr4);
                            zzhht.f(jArr6, jArr);
                            zzhht.e(jArr6, jArr6, jArr5);
                            zzhht.b(jArr7, jArr6, jArr4);
                            if (zzhhm.c(jArr7)) {
                                zzhht.a(jArr7, jArr6, jArr4);
                                if (!zzhhm.c(jArr7)) {
                                    zzhht.e(jArr, jArr, zzhho.f8555c);
                                } else {
                                    throw new GeneralSecurityException("Cannot convert given bytes to extended projective coordinates. No square root exists for modulo 2^255-19");
                                }
                            }
                            if (!zzhhm.c(jArr) && ((b[31] & UByte.MAX_VALUE) >> 7) != 0) {
                                throw new GeneralSecurityException("Cannot convert given bytes to extended projective coordinates. Computed x is zero and encoded x's least significant bit is not zero");
                            }
                            if ((zzhht.h(jArr)[0] & 1) == ((b[31] & UByte.MAX_VALUE) >> 7)) {
                                for (int i11 = 0; i11 < 10; i11++) {
                                    jArr[i11] = -jArr[i11];
                                }
                            }
                            zzhht.e(jArr3, jArr, g);
                            zzhhk zzhhkVar = new zzhhk(jArr, g, jArr2);
                            zzhhi[] zzhhiVarArr = new zzhhi[8];
                            zzhhiVarArr[0] = new zzhhi(new zzhhl(zzhhkVar, jArr3));
                            zzhhj zzhhjVar = new zzhhj(new zzhhk(), new long[10]);
                            zzhhm.f(zzhhjVar, zzhhkVar);
                            zzhhl zzhhlVar = new zzhhl(zzhhjVar);
                            for (int i12 = 1; i12 < 8; i12++) {
                                zzhhm.d(zzhhjVar, zzhhlVar, zzhhiVarArr[i12 - 1]);
                                zzhhiVarArr[i12] = new zzhhi(new zzhhl(zzhhjVar));
                            }
                            byte[] i13 = zzhhm.i(digest);
                            byte[] i14 = zzhhm.i(copyOfRange);
                            zzhhj zzhhjVar2 = new zzhhj();
                            zzhhl zzhhlVar2 = new zzhhl();
                            int i15 = 255;
                            while (i15 >= 0 && i13[i15] == 0 && i14[i15] == 0) {
                                i15--;
                            }
                            while (i15 >= 0) {
                                zzhhm.f(zzhhjVar2, new zzhhk(zzhhjVar2));
                                byte b2 = i13[i15];
                                if (b2 > 0) {
                                    zzhhl.a(zzhhlVar2, zzhhjVar2);
                                    zzhhm.d(zzhhjVar2, zzhhlVar2, zzhhiVarArr[i13[i15] / 2]);
                                } else if (b2 < 0) {
                                    zzhhl.a(zzhhlVar2, zzhhjVar2);
                                    zzhhm.e(zzhhjVar2, zzhhlVar2, zzhhiVarArr[(-i13[i15]) / 2]);
                                }
                                byte b3 = i14[i15];
                                if (b3 > 0) {
                                    zzhhl.a(zzhhlVar2, zzhhjVar2);
                                    zzhhm.d(zzhhjVar2, zzhhlVar2, zzhho.e[i14[i15] / 2]);
                                } else if (b3 < 0) {
                                    zzhhl.a(zzhhlVar2, zzhhjVar2);
                                    zzhhm.e(zzhhjVar2, zzhhlVar2, zzhho.e[(-i14[i15]) / 2]);
                                }
                                i15--;
                            }
                            byte[] b4 = new zzhhk(zzhhjVar2).b();
                            for (int i16 = 0; i16 < 32; i16++) {
                                if (b4[i16] == bArr[i16]) {
                                }
                            }
                            return;
                        }
                    } else {
                        i--;
                        bArr3 = bArr;
                    }
                }
            }
            throw new GeneralSecurityException("Signature check failed.");
        }
        throw new GeneralSecurityException("The length of the signature is not 64.");
    }
}
