package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzidr {

    /* renamed from: a, reason: collision with root package name */
    public static final zzidp f8955a;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzidp, java.lang.Object] */
    static {
        if (zzidm.e && zzidm.d) {
            int i = zzhyy.f8889a;
        }
        f8955a = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(byte[] bArr, int i, int i2) {
        int i3;
        f8955a.getClass();
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i < i2) {
            while (i < i2) {
                int i4 = i + 1;
                i3 = bArr[i];
                if (i3 < 0) {
                    if (i3 < -32) {
                        if (i4 >= i2) {
                            break;
                        }
                        if (i3 >= -62) {
                            i += 2;
                            if (bArr[i4] > -65) {
                            }
                        }
                        i3 = -1;
                        break;
                    }
                    if (i3 < -16) {
                        if (i4 >= i2 - 1) {
                            i3 = e(bArr, i4, i2);
                            break;
                        }
                        int i5 = i + 2;
                        char c2 = bArr[i4];
                        if (c2 <= -65 && ((i3 != -32 || c2 >= -96) && (i3 != -19 || c2 < -96))) {
                            i += 3;
                            if (bArr[i5] > -65) {
                            }
                        }
                        i3 = -1;
                        break;
                    }
                    if (i4 >= i2 - 2) {
                        i3 = e(bArr, i4, i2);
                        break;
                    }
                    int i6 = i + 2;
                    int i7 = bArr[i4];
                    if (i7 <= -65) {
                        if ((((i7 + 112) + (i3 << 28)) >> 30) == 0) {
                            int i8 = i + 3;
                            if (bArr[i6] <= -65) {
                                i += 4;
                                if (bArr[i8] > -65) {
                                }
                            }
                        }
                    }
                    i3 = -1;
                    break;
                }
                i = i4;
            }
        }
        i3 = 0;
        if (i3 != 0) {
            return false;
        }
        return true;
    }

    public static int b(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && str.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = str.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = str.length();
                while (i2 < length2) {
                    char charAt2 = str.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (charAt2 >= 55296 && charAt2 <= 57343) {
                            if (Character.codePointAt(str, i2) >= 65536) {
                                i2++;
                            } else {
                                throw new zzidq(i2, length2);
                            }
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        long j = i3 + 4294967296L;
        StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 34);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(j);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        return r10 + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(java.lang.String r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzidr.c(java.lang.String, byte[], int, int):int");
    }

    public static String d(ByteBuffer byteBuffer, int i, int i2) {
        if (byteBuffer.hasArray()) {
            int arrayOffset = byteBuffer.arrayOffset();
            return f8955a.b(byteBuffer.array(), arrayOffset + i, i2);
        }
        if (byteBuffer.isDirect()) {
            return zzido.a(byteBuffer, i, i2);
        }
        return zzido.a(byteBuffer, i, i2);
    }

    public static int e(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        byte b = bArr[i - 1];
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    byte b2 = bArr[i];
                    byte b3 = bArr[i + 1];
                    if (b > -12 || b2 > -65 || b3 > -65) {
                        return -1;
                    }
                    return (b3 << 16) ^ ((b2 << 8) ^ b);
                }
                throw new AssertionError();
            }
            byte b4 = bArr[i];
            if (b > -12 || b4 > -65) {
                return -1;
            }
            return (b4 << 8) ^ b;
        }
        if (b > -12) {
            return -1;
        }
        return b;
    }
}
