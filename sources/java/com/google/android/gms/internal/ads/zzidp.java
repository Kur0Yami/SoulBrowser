package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes.dex */
final class zzidp extends zzido {
    public final String b(byte[] bArr, int i, int i2) {
        int i3;
        int length = bArr.length;
        if ((((length - i) - i2) | i | i2) >= 0) {
            int i4 = i + i2;
            char[] cArr = new char[i2];
            int i5 = 0;
            while (i < i4) {
                byte b = bArr[i];
                if (b < 0) {
                    break;
                }
                i++;
                cArr[i5] = (char) b;
                i5++;
            }
            int i6 = i5;
            while (i < i4) {
                int i7 = i + 1;
                byte b2 = bArr[i];
                if (b2 >= 0) {
                    cArr[i6] = (char) b2;
                    i6++;
                    i = i7;
                    while (i < i4) {
                        byte b3 = bArr[i];
                        if (b3 >= 0) {
                            i++;
                            cArr[i6] = (char) b3;
                            i6++;
                        }
                    }
                } else {
                    if (b2 < -32) {
                        if (i7 < i4) {
                            i3 = i6 + 1;
                            i += 2;
                            zzidn.a(b2, bArr[i7], cArr, i6);
                        } else {
                            throw new IOException("Protocol message had invalid UTF-8.");
                        }
                    } else if (b2 < -16) {
                        if (i7 < i4 - 1) {
                            i3 = i6 + 1;
                            int i8 = i + 2;
                            i += 3;
                            zzidn.b(b2, bArr[i7], bArr[i8], cArr, i6);
                        } else {
                            throw new IOException("Protocol message had invalid UTF-8.");
                        }
                    } else if (i7 < i4 - 2) {
                        byte b4 = bArr[i7];
                        int i9 = i + 3;
                        byte b5 = bArr[i + 2];
                        i += 4;
                        zzidn.c(b2, b4, b5, bArr[i9], cArr, i6);
                        i6 += 2;
                    } else {
                        throw new IOException("Protocol message had invalid UTF-8.");
                    }
                    i6 = i3;
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
    }
}
