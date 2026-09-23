package com.google.android.gms.internal.auth;

import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
final class zzdu {
    public static int a(byte[] bArr, int i, zzdt zzdtVar) {
        int e = e(bArr, i, zzdtVar);
        int i2 = zzdtVar.f9530a;
        if (i2 >= 0) {
            if (i2 <= bArr.length - e) {
                if (i2 == 0) {
                    zzdtVar.f9531c = zzef.f;
                    return e;
                }
                zzdtVar.f9531c = zzef.r(bArr, e, i2);
                return e + i2;
            }
            throw zzfb.c();
        }
        throw zzfb.b();
    }

    public static int b(byte[] bArr, int i) {
        int i2 = bArr[i] & UByte.MAX_VALUE;
        int i3 = bArr[i + 1] & UByte.MAX_VALUE;
        int i4 = bArr[i + 2] & UByte.MAX_VALUE;
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int c(zzgi zzgiVar, int i, byte[] bArr, int i2, int i3, zzez zzezVar, zzdt zzdtVar) {
        zzev zzd = zzgiVar.zzd();
        zzgi zzgiVar2 = zzgiVar;
        byte[] bArr2 = bArr;
        int i4 = i3;
        zzdt zzdtVar2 = zzdtVar;
        int i5 = i(zzd, zzgiVar2, bArr2, i2, i4, zzdtVar2);
        zzgiVar2.f(zzd);
        zzdtVar2.f9531c = zzd;
        zzezVar.add(zzd);
        while (i5 < i4) {
            zzdt zzdtVar3 = zzdtVar2;
            int i6 = i4;
            int e = e(bArr2, i5, zzdtVar3);
            if (i != zzdtVar3.f9530a) {
                break;
            }
            byte[] bArr3 = bArr2;
            zzgi zzgiVar3 = zzgiVar2;
            zzev zzd2 = zzgiVar3.zzd();
            i5 = i(zzd2, zzgiVar3, bArr3, e, i6, zzdtVar3);
            zzgiVar2 = zzgiVar3;
            bArr2 = bArr3;
            i4 = i6;
            zzdtVar2 = zzdtVar3;
            zzgiVar2.f(zzd2);
            zzdtVar2.f9531c = zzd2;
            zzezVar.add(zzd2);
        }
        return i5;
    }

    public static int d(int i, byte[] bArr, int i2, int i3, zzha zzhaVar, zzdt zzdtVar) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                zzhaVar.b(i, Integer.valueOf(b(bArr, i2)));
                                return i2 + 4;
                            }
                            throw new IOException("Protocol message contained an invalid tag (zero).");
                        }
                        int i5 = (i & (-8)) | 4;
                        zzha a2 = zzha.a();
                        int i6 = 0;
                        while (true) {
                            if (i2 >= i3) {
                                break;
                            }
                            int e = e(bArr, i2, zzdtVar);
                            i6 = zzdtVar.f9530a;
                            if (i6 != i5) {
                                i2 = d(i6, bArr, e, i3, a2, zzdtVar);
                            } else {
                                i2 = e;
                                break;
                            }
                        }
                        if (i2 <= i3 && i6 == i5) {
                            zzhaVar.b(i, a2);
                            return i2;
                        }
                        throw new IOException("Failed to parse the message.");
                    }
                    int e2 = e(bArr, i2, zzdtVar);
                    int i7 = zzdtVar.f9530a;
                    if (i7 >= 0) {
                        if (i7 <= bArr.length - e2) {
                            if (i7 == 0) {
                                zzhaVar.b(i, zzef.f);
                            } else {
                                zzhaVar.b(i, zzef.r(bArr, e2, i7));
                            }
                            return e2 + i7;
                        }
                        throw zzfb.c();
                    }
                    throw zzfb.b();
                }
                zzhaVar.b(i, Long.valueOf(j(bArr, i2)));
                return i2 + 8;
            }
            int h = h(bArr, i2, zzdtVar);
            zzhaVar.b(i, Long.valueOf(zzdtVar.b));
            return h;
        }
        throw new IOException("Protocol message contained an invalid tag (zero).");
    }

    public static int e(byte[] bArr, int i, zzdt zzdtVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzdtVar.f9530a = b;
            return i2;
        }
        return f(b, bArr, i2, zzdtVar);
    }

    public static int f(int i, byte[] bArr, int i2, zzdt zzdtVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzdtVar.f9530a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & ByteCompanionObject.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzdtVar.f9530a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & ByteCompanionObject.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzdtVar.f9530a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & ByteCompanionObject.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzdtVar.f9530a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                zzdtVar.f9530a = i11;
                return i12;
            }
        }
    }

    public static int g(int i, byte[] bArr, int i2, int i3, zzez zzezVar, zzdt zzdtVar) {
        zzew zzewVar = (zzew) zzezVar;
        int e = e(bArr, i2, zzdtVar);
        zzewVar.c(zzdtVar.f9530a);
        while (e < i3) {
            int e2 = e(bArr, e, zzdtVar);
            if (i != zzdtVar.f9530a) {
                break;
            }
            e = e(bArr, e2, zzdtVar);
            zzewVar.c(zzdtVar.f9530a);
        }
        return e;
    }

    public static int h(byte[] bArr, int i, zzdt zzdtVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzdtVar.b = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & ByteCompanionObject.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & ByteCompanionObject.MAX_VALUE) << i4;
            b = bArr[i3];
            i3 = i5;
        }
        zzdtVar.b = j2;
        return i3;
    }

    public static int i(Object obj, zzgi zzgiVar, byte[] bArr, int i, int i2, zzdt zzdtVar) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = f(i4, bArr, i3, zzdtVar);
            i4 = zzdtVar.f9530a;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            int i6 = i5 + i4;
            zzgiVar.g(obj, bArr, i5, i6, zzdtVar);
            zzdtVar.f9531c = obj;
            return i6;
        }
        throw zzfb.c();
    }

    public static long j(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }
}
