package org.apache.commons.compress.archivers.zip;

import android.support.v4.media.a;
import java.io.IOException;
import java.util.zip.CRC32;

/* loaded from: classes4.dex */
public abstract class ZipUtil {
    public static byte[] a(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            return bArr2;
        }
        return null;
    }

    public static String b(AbstractUnicodeExtraField abstractUnicodeExtraField, byte[] bArr) {
        if (abstractUnicodeExtraField != null) {
            CRC32 crc32 = new CRC32();
            crc32.update(bArr);
            if (crc32.getValue() == abstractUnicodeExtraField.f22275c) {
                try {
                    ZipEncoding zipEncoding = ZipEncodingHelper.b;
                    byte[] bArr2 = abstractUnicodeExtraField.f;
                    int length = bArr2.length;
                    byte[] bArr3 = new byte[length];
                    System.arraycopy(bArr2, 0, bArr3, 0, length);
                    return ((FallbackZipEncoding) zipEncoding).a(bArr3);
                } catch (IOException unused) {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    public static void c(byte[] bArr) {
        int length = bArr.length - 1;
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            int i2 = length - i;
            bArr[i] = bArr[i2];
            bArr[i2] = b;
        }
    }

    public static byte d(int i) {
        if (i <= 255 && i >= 0) {
            if (i < 128) {
                return (byte) i;
            }
            return (byte) (i - 256);
        }
        throw new IllegalArgumentException(a.f(i, "Can only convert non-negative integers between [0,255] to byte: [", "]"));
    }
}
