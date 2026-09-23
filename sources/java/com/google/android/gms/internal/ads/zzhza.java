package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhza {
    public static int a(byte[] bArr, int i, zzhyz zzhyzVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzhyzVar.f8890a = b;
            return i2;
        }
        return b(b, bArr, i2, zzhyzVar);
    }

    public static int b(int i, byte[] bArr, int i2, zzhyz zzhyzVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzhyzVar.f8890a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & ByteCompanionObject.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzhyzVar.f8890a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & ByteCompanionObject.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzhyzVar.f8890a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & ByteCompanionObject.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzhyzVar.f8890a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                zzhyzVar.f8890a = i11;
                return i12;
            }
        }
    }

    public static int c(byte[] bArr, int i, zzhyz zzhyzVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzhyzVar.b = j;
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
        zzhyzVar.b = j2;
        return i3;
    }

    public static int d(byte[] bArr, int i) {
        int i2 = bArr[i] & UByte.MAX_VALUE;
        int i3 = bArr[i + 1] & UByte.MAX_VALUE;
        int i4 = bArr[i + 2] & UByte.MAX_VALUE;
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static long e(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    public static int f(byte[] bArr, int i, zzhyz zzhyzVar) {
        int a2 = a(bArr, i, zzhyzVar);
        int i2 = zzhyzVar.f8890a;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzhyzVar.f8891c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                return a2;
            }
            zzhyzVar.f8891c = zzidr.f8955a.b(bArr, a2, i2);
            return a2 + i2;
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static int g(byte[] bArr, int i, zzhyz zzhyzVar) {
        int a2 = a(bArr, i, zzhyzVar);
        int i2 = zzhyzVar.f8890a;
        if (i2 >= 0) {
            if (i2 <= bArr.length - a2) {
                if (i2 == 0) {
                    zzhyzVar.f8891c = zzhzl.f;
                    return a2;
                }
                zzhyzVar.f8891c = zzhzl.B(bArr, a2, i2);
                return a2 + i2;
            }
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static int h(Object obj, zzicu zzicuVar, byte[] bArr, int i, int i2, zzhyz zzhyzVar) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = b(i4, bArr, i3, zzhyzVar);
            i4 = zzhyzVar.f8890a;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            int i6 = zzhyzVar.e + 1;
            zzhyzVar.e = i6;
            if (i6 < 100) {
                int i7 = i5 + i4;
                zzicuVar.e(obj, bArr, i5, i7, zzhyzVar);
                zzhyzVar.e--;
                zzhyzVar.f8891c = obj;
                return i7;
            }
            throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int i(Object obj, zzicu zzicuVar, byte[] bArr, int i, int i2, int i3, zzhyz zzhyzVar) {
        zzicf zzicfVar = (zzicf) zzicuVar;
        int i4 = zzhyzVar.e + 1;
        zzhyzVar.e = i4;
        if (i4 < 100) {
            int y = zzicfVar.y(obj, bArr, i, i2, i3, zzhyzVar);
            zzhyzVar.e--;
            zzhyzVar.f8891c = obj;
            return y;
        }
        throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    public static int j(int i, byte[] bArr, int i2, int i3, zzibd zzibdVar, zzhyz zzhyzVar) {
        zzias zziasVar = (zzias) zzibdVar;
        int a2 = a(bArr, i2, zzhyzVar);
        zziasVar.d(zzhyzVar.f8890a);
        while (a2 < i3) {
            int a3 = a(bArr, a2, zzhyzVar);
            if (i != zzhyzVar.f8890a) {
                break;
            }
            a2 = a(bArr, a3, zzhyzVar);
            zziasVar.d(zzhyzVar.f8890a);
        }
        return a2;
    }

    public static int k(byte[] bArr, int i, zzibd zzibdVar, zzhyz zzhyzVar) {
        zzias zziasVar = (zzias) zzibdVar;
        int a2 = a(bArr, i, zzhyzVar);
        int i2 = zzhyzVar.f8890a + a2;
        while (a2 < i2) {
            a2 = a(bArr, a2, zzhyzVar);
            zziasVar.d(zzhyzVar.f8890a);
        }
        if (a2 == i2) {
            return a2;
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int l(zzicu zzicuVar, int i, byte[] bArr, int i2, int i3, zzibd zzibdVar, zzhyz zzhyzVar) {
        Object zza = zzicuVar.zza();
        zzicu zzicuVar2 = zzicuVar;
        byte[] bArr2 = bArr;
        int i4 = i3;
        zzhyz zzhyzVar2 = zzhyzVar;
        int h = h(zza, zzicuVar2, bArr2, i2, i4, zzhyzVar2);
        zzicuVar2.b(zza);
        zzhyzVar2.f8891c = zza;
        zzibdVar.add(zza);
        while (h < i4) {
            zzhyz zzhyzVar3 = zzhyzVar2;
            int i5 = i4;
            int a2 = a(bArr2, h, zzhyzVar3);
            if (i != zzhyzVar3.f8890a) {
                break;
            }
            byte[] bArr3 = bArr2;
            zzicu zzicuVar3 = zzicuVar2;
            Object zza2 = zzicuVar3.zza();
            h = h(zza2, zzicuVar3, bArr3, a2, i5, zzhyzVar3);
            zzicuVar2 = zzicuVar3;
            bArr2 = bArr3;
            i4 = i5;
            zzhyzVar2 = zzhyzVar3;
            zzicuVar2.b(zza2);
            zzhyzVar2.f8891c = zza2;
            zzibdVar.add(zza2);
        }
        return h;
    }

    public static int m(int i, byte[] bArr, int i2, int i3, zzidg zzidgVar, zzhyz zzhyzVar) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                zzidgVar.d(i, Integer.valueOf(d(bArr, i2)));
                                return i2 + 4;
                            }
                            throw new IOException("Protocol message contained an invalid tag (zero).");
                        }
                        int i5 = (i & (-8)) | 4;
                        zzidg a2 = zzidg.a();
                        int i6 = zzhyzVar.e + 1;
                        zzhyzVar.e = i6;
                        if (i6 < 100) {
                            int i7 = 0;
                            while (true) {
                                if (i2 >= i3) {
                                    break;
                                }
                                int a3 = a(bArr, i2, zzhyzVar);
                                int i8 = zzhyzVar.f8890a;
                                if (i8 == i5) {
                                    i7 = i8;
                                    i2 = a3;
                                    break;
                                }
                                i2 = m(i8, bArr, a3, i3, a2, zzhyzVar);
                                i7 = i8;
                            }
                            zzhyzVar.e--;
                            if (i2 <= i3 && i7 == i5) {
                                zzidgVar.d(i, a2);
                                return i2;
                            }
                            throw new IOException("Failed to parse the message.");
                        }
                        throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                    }
                    int a4 = a(bArr, i2, zzhyzVar);
                    int i9 = zzhyzVar.f8890a;
                    if (i9 >= 0) {
                        if (i9 <= bArr.length - a4) {
                            if (i9 == 0) {
                                zzidgVar.d(i, zzhzl.f);
                            } else {
                                zzidgVar.d(i, zzhzl.B(bArr, a4, i9));
                            }
                            return a4 + i9;
                        }
                        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    }
                    throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                }
                zzidgVar.d(i, Long.valueOf(e(bArr, i2)));
                return i2 + 8;
            }
            int c2 = c(bArr, i2, zzhyzVar);
            zzidgVar.d(i, Long.valueOf(zzhyzVar.b));
            return c2;
        }
        throw new IOException("Protocol message contained an invalid tag (zero).");
    }

    public static int n(int i, byte[] bArr, int i2, int i3, zzhyz zzhyzVar) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                return i2 + 4;
                            }
                            throw new IOException("Protocol message contained an invalid tag (zero).");
                        }
                        int i5 = (i & (-8)) | 4;
                        int i6 = 0;
                        while (i2 < i3) {
                            i2 = a(bArr, i2, zzhyzVar);
                            i6 = zzhyzVar.f8890a;
                            if (i6 == i5) {
                                break;
                            }
                            i2 = n(i6, bArr, i2, i3, zzhyzVar);
                        }
                        if (i2 <= i3 && i6 == i5) {
                            return i2;
                        }
                        throw new IOException("Failed to parse the message.");
                    }
                    return a(bArr, i2, zzhyzVar) + zzhyzVar.f8890a;
                }
                return i2 + 8;
            }
            return c(bArr, i2, zzhyzVar);
        }
        throw new IOException("Protocol message contained an invalid tag (zero).");
    }
}
