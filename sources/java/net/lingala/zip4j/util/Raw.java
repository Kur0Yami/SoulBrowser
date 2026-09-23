package net.lingala.zip4j.util;

import java.io.DataInput;
import java.io.IOException;
import kotlin.KotlinVersion;
import kotlin.UByte;
import net.lingala.zip4j.exception.ZipException;

/* loaded from: classes4.dex */
public class Raw {
    public static void a(byte[] bArr, int i) {
        bArr[0] = (byte) i;
        bArr[1] = (byte) (i >> 8);
        bArr[2] = (byte) (i >> 16);
        bArr[3] = (byte) (i >> 24);
        bArr[4] = 0;
        bArr[5] = 0;
        bArr[6] = 0;
        bArr[7] = 0;
        bArr[8] = 0;
        bArr[9] = 0;
        bArr[10] = 0;
        bArr[11] = 0;
        bArr[12] = 0;
        bArr[13] = 0;
        bArr[14] = 0;
        bArr[15] = 0;
    }

    public static int b(byte[] bArr) {
        return ((((bArr[3] & UByte.MAX_VALUE) << 8) | (bArr[2] & UByte.MAX_VALUE)) << 16) | (bArr[0] & UByte.MAX_VALUE) | ((bArr[1] & UByte.MAX_VALUE) << 8);
    }

    public static int c(DataInput dataInput, byte[] bArr) {
        try {
            dataInput.readFully(bArr, 0, 4);
            return (bArr[0] & UByte.MAX_VALUE) | ((bArr[1] & UByte.MAX_VALUE) << 8) | ((((bArr[3] & UByte.MAX_VALUE) << 8) | (bArr[2] & UByte.MAX_VALUE)) << 16);
        } catch (IOException e) {
            throw new ZipException(e);
        }
    }

    public static long d(byte[] bArr) {
        return ((((((((((((((bArr[7] & UByte.MAX_VALUE) << 8) | (bArr[6] & UByte.MAX_VALUE)) << 8) | (bArr[5] & UByte.MAX_VALUE)) << 8) | (bArr[4] & UByte.MAX_VALUE)) << 8) | (bArr[3] & UByte.MAX_VALUE)) << 8) | (bArr[2] & UByte.MAX_VALUE)) << 8) | (bArr[1] & UByte.MAX_VALUE)) << 8) | (bArr[0] & UByte.MAX_VALUE);
    }

    public static int e(byte[] bArr, int i) {
        return ((bArr[i + 1] & UByte.MAX_VALUE) << 8) | (bArr[i] & UByte.MAX_VALUE);
    }

    public static final void f(byte[] bArr, int i) {
        bArr[3] = (byte) (i >>> 24);
        bArr[2] = (byte) (i >>> 16);
        bArr[1] = (byte) (i >>> 8);
        bArr[0] = (byte) (i & KotlinVersion.MAX_COMPONENT_VALUE);
    }

    public static void g(byte[] bArr, long j) {
        bArr[7] = (byte) (j >>> 56);
        bArr[6] = (byte) (j >>> 48);
        bArr[5] = (byte) (j >>> 40);
        bArr[4] = (byte) (j >>> 32);
        bArr[3] = (byte) (j >>> 24);
        bArr[2] = (byte) (j >>> 16);
        bArr[1] = (byte) (j >>> 8);
        bArr[0] = (byte) (j & 255);
    }

    public static final void h(byte[] bArr, short s) {
        bArr[1] = (byte) (s >>> 8);
        bArr[0] = (byte) (s & 255);
    }
}
