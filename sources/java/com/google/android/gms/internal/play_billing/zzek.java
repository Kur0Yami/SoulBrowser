package com.google.android.gms.internal.play_billing;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzek {
    public static int a(byte[] bArr, int i, zzej zzejVar) {
        int g = g(bArr, i, zzejVar);
        int i2 = zzejVar.f11488a;
        if (i2 >= 0) {
            if (i2 <= bArr.length - g) {
                if (i2 == 0) {
                    zzejVar.f11489c = zzev.f;
                    return g;
                }
                zzejVar.f11489c = zzev.r(bArr, g, i2);
                return g + i2;
            }
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static int b(byte[] bArr, int i) {
        int i2 = bArr[i] & UByte.MAX_VALUE;
        int i3 = bArr[i + 1] & UByte.MAX_VALUE;
        int i4 = bArr[i + 2] & UByte.MAX_VALUE;
        return ((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int c(zzhm zzhmVar, int i, byte[] bArr, int i2, int i3, zzga zzgaVar, zzej zzejVar) {
        Object zze = zzhmVar.zze();
        zzhm zzhmVar2 = zzhmVar;
        byte[] bArr2 = bArr;
        int i4 = i3;
        zzej zzejVar2 = zzejVar;
        int l = l(zze, zzhmVar2, bArr2, i2, i4, zzejVar2);
        zzhmVar2.a(zze);
        zzejVar2.f11489c = zze;
        zzgaVar.add(zze);
        while (l < i4) {
            zzej zzejVar3 = zzejVar2;
            int i5 = i4;
            int g = g(bArr2, l, zzejVar3);
            if (i != zzejVar3.f11488a) {
                break;
            }
            byte[] bArr3 = bArr2;
            zzhm zzhmVar3 = zzhmVar2;
            Object zze2 = zzhmVar3.zze();
            l = l(zze2, zzhmVar3, bArr3, g, i5, zzejVar3);
            zzhmVar2 = zzhmVar3;
            bArr2 = bArr3;
            i4 = i5;
            zzejVar2 = zzejVar3;
            zzhmVar2.a(zze2);
            zzejVar2.f11489c = zze2;
            zzgaVar.add(zze2);
        }
        return l;
    }

    public static int d(byte[] bArr, int i, zzga zzgaVar, zzej zzejVar) {
        zzfw zzfwVar = (zzfw) zzgaVar;
        int g = g(bArr, i, zzejVar);
        int i2 = zzejVar.f11488a + g;
        while (g < i2) {
            g = g(bArr, g, zzejVar);
            zzfwVar.g(zzejVar.f11488a);
        }
        if (g == i2) {
            return g;
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int e(byte[] bArr, int i, zzej zzejVar) {
        int g = g(bArr, i, zzejVar);
        int i2 = zzejVar.f11488a;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzejVar.f11489c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                return g;
            }
            int i3 = zzio.f11542a;
            int length = bArr.length;
            if ((((length - g) - i2) | g | i2) >= 0) {
                int i4 = g + i2;
                char[] cArr = new char[i2];
                int i5 = 0;
                while (g < i4) {
                    byte b = bArr[g];
                    if (b < 0) {
                        break;
                    }
                    g++;
                    cArr[i5] = (char) b;
                    i5++;
                }
                while (g < i4) {
                    int i6 = g + 1;
                    byte b2 = bArr[g];
                    if (b2 >= 0) {
                        cArr[i5] = (char) b2;
                        i5++;
                        g = i6;
                        while (g < i4) {
                            byte b3 = bArr[g];
                            if (b3 >= 0) {
                                g++;
                                cArr[i5] = (char) b3;
                                i5++;
                            }
                        }
                    } else if (b2 < -32) {
                        if (i6 < i4) {
                            int i7 = i5 + 1;
                            g += 2;
                            byte b4 = bArr[i6];
                            if (b2 >= -62 && !zzik.a(b4)) {
                                cArr[i5] = (char) ((b4 & 63) | ((b2 & 31) << 6));
                                i5 = i7;
                            } else {
                                throw new IOException("Protocol message had invalid UTF-8.");
                            }
                        } else {
                            throw new IOException("Protocol message had invalid UTF-8.");
                        }
                    } else {
                        if (b2 < -16) {
                            if (i6 < i4 - 1) {
                                int i8 = i5 + 1;
                                int i9 = g + 2;
                                byte b5 = bArr[i6];
                                g += 3;
                                byte b6 = bArr[i9];
                                if (!zzik.a(b5)) {
                                    if (b2 == -32) {
                                        if (b5 >= -96) {
                                            b2 = -32;
                                        }
                                    }
                                    if (b2 == -19) {
                                        if (b5 < -96) {
                                            b2 = -19;
                                        }
                                    }
                                    if (!zzik.a(b6)) {
                                        cArr[i5] = (char) (((b5 & 63) << 6) | ((b2 & 15) << 12) | (b6 & 63));
                                        i5 = i8;
                                    }
                                }
                                throw new IOException("Protocol message had invalid UTF-8.");
                            }
                            throw new IOException("Protocol message had invalid UTF-8.");
                        }
                        if (i6 < i4 - 2) {
                            byte b7 = bArr[i6];
                            int i10 = g + 3;
                            byte b8 = bArr[g + 2];
                            g += 4;
                            byte b9 = bArr[i10];
                            if (!zzik.a(b7) && (((b7 + 112) + (b2 << 28)) >> 30) == 0 && !zzik.a(b8) && !zzik.a(b9)) {
                                int i11 = ((b7 & 63) << 12) | ((b2 & 7) << 18) | ((b8 & 63) << 6) | (b9 & 63);
                                cArr[i5] = (char) ((i11 >>> 10) + 55232);
                                cArr[i5 + 1] = (char) ((i11 & 1023) + 56320);
                                i5 += 2;
                            } else {
                                throw new IOException("Protocol message had invalid UTF-8.");
                            }
                        } else {
                            throw new IOException("Protocol message had invalid UTF-8.");
                        }
                    }
                }
                zzejVar.f11489c = new String(cArr, 0, i5);
                return i4;
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(g), Integer.valueOf(i2)));
        }
        throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static int f(int i, byte[] bArr, int i2, int i3, zzid zzidVar, zzej zzejVar) {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                zzidVar.c(i, Integer.valueOf(b(bArr, i2)));
                                return i2 + 4;
                            }
                            throw new IOException("Protocol message contained an invalid tag (zero).");
                        }
                        int i5 = (i & (-8)) | 4;
                        zzid b = zzid.b();
                        int i6 = zzejVar.e + 1;
                        zzejVar.e = i6;
                        if (i6 < 100) {
                            int i7 = 0;
                            while (true) {
                                if (i2 >= i3) {
                                    break;
                                }
                                int g = g(bArr, i2, zzejVar);
                                int i8 = zzejVar.f11488a;
                                if (i8 == i5) {
                                    i7 = i8;
                                    i2 = g;
                                    break;
                                }
                                i2 = f(i8, bArr, g, i3, b, zzejVar);
                                i7 = i8;
                            }
                            zzejVar.e--;
                            if (i2 <= i3 && i7 == i5) {
                                zzidVar.c(i, b);
                                return i2;
                            }
                            throw new IOException("Failed to parse the message.");
                        }
                        throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                    }
                    int g2 = g(bArr, i2, zzejVar);
                    int i9 = zzejVar.f11488a;
                    if (i9 >= 0) {
                        if (i9 <= bArr.length - g2) {
                            if (i9 == 0) {
                                zzidVar.c(i, zzev.f);
                            } else {
                                zzidVar.c(i, zzev.r(bArr, g2, i9));
                            }
                            return g2 + i9;
                        }
                        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    }
                    throw new IOException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                }
                zzidVar.c(i, Long.valueOf(n(bArr, i2)));
                return i2 + 8;
            }
            int j = j(bArr, i2, zzejVar);
            zzidVar.c(i, Long.valueOf(zzejVar.b));
            return j;
        }
        throw new IOException("Protocol message contained an invalid tag (zero).");
    }

    public static int g(byte[] bArr, int i, zzej zzejVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzejVar.f11488a = b;
            return i2;
        }
        return h(b, bArr, i2, zzejVar);
    }

    public static int h(int i, byte[] bArr, int i2, zzej zzejVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzejVar.f11488a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & ByteCompanionObject.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzejVar.f11488a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & ByteCompanionObject.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzejVar.f11488a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & ByteCompanionObject.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzejVar.f11488a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i12;
            } else {
                zzejVar.f11488a = i11;
                return i12;
            }
        }
    }

    public static int i(int i, byte[] bArr, int i2, int i3, zzga zzgaVar, zzej zzejVar) {
        zzfw zzfwVar = (zzfw) zzgaVar;
        int g = g(bArr, i2, zzejVar);
        zzfwVar.g(zzejVar.f11488a);
        while (g < i3) {
            int g2 = g(bArr, g, zzejVar);
            if (i != zzejVar.f11488a) {
                break;
            }
            g = g(bArr, g2, zzejVar);
            zzfwVar.g(zzejVar.f11488a);
        }
        return g;
    }

    public static int j(byte[] bArr, int i, zzej zzejVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzejVar.b = j;
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
        zzejVar.b = j2;
        return i3;
    }

    public static int k(Object obj, zzhm zzhmVar, byte[] bArr, int i, int i2, int i3, zzej zzejVar) {
        zzhf zzhfVar = (zzhf) zzhmVar;
        int i4 = zzejVar.e + 1;
        zzejVar.e = i4;
        if (i4 < 100) {
            int t = zzhfVar.t(obj, bArr, i, i2, i3, zzejVar);
            zzejVar.e--;
            zzejVar.f11489c = obj;
            return t;
        }
        throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    public static int l(Object obj, zzhm zzhmVar, byte[] bArr, int i, int i2, zzej zzejVar) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = h(i4, bArr, i3, zzejVar);
            i4 = zzejVar.f11488a;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            int i6 = zzejVar.e + 1;
            zzejVar.e = i6;
            if (i6 < 100) {
                int i7 = i5 + i4;
                zzhmVar.e(obj, bArr, i5, i7, zzejVar);
                zzejVar.e--;
                zzejVar.f11489c = obj;
                return i7;
            }
            throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int m(int i, byte[] bArr, int i2, int i3, zzej zzejVar) {
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
                            i2 = g(bArr, i2, zzejVar);
                            i6 = zzejVar.f11488a;
                            if (i6 == i5) {
                                break;
                            }
                            i2 = m(i6, bArr, i2, i3, zzejVar);
                        }
                        if (i2 <= i3 && i6 == i5) {
                            return i2;
                        }
                        throw new IOException("Failed to parse the message.");
                    }
                    return g(bArr, i2, zzejVar) + zzejVar.f11488a;
                }
                return i2 + 8;
            }
            return j(bArr, i2, zzejVar);
        }
        throw new IOException("Protocol message contained an invalid tag (zero).");
    }

    public static long n(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }
}
