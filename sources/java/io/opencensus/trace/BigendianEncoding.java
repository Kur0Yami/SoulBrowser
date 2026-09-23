package io.opencensus.trace;

import java.util.Arrays;
import kotlin.UByte;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
final class BigendianEncoding {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f21098a;

    static {
        char[] cArr = new char[512];
        for (int i = 0; i < 256; i++) {
            cArr[i] = "0123456789abcdef".charAt(i >>> 4);
            cArr[i | 256] = "0123456789abcdef".charAt(i & 15);
        }
        f21098a = cArr;
        byte[] bArr = new byte[Uuid.SIZE_BITS];
        Arrays.fill(bArr, (byte) -1);
        for (int i2 = 0; i2 < 16; i2++) {
            bArr["0123456789abcdef".charAt(i2)] = (byte) i2;
        }
    }

    public static void a(byte b, char[] cArr, int i) {
        int i2 = b & UByte.MAX_VALUE;
        char[] cArr2 = f21098a;
        cArr[i] = cArr2[i2];
        cArr[i + 1] = cArr2[i2 | 256];
    }

    public static void b(char[] cArr, int i) {
        a((byte) 0, cArr, i);
        a((byte) 0, cArr, i + 2);
        a((byte) 0, cArr, i + 4);
        a((byte) 0, cArr, i + 6);
        a((byte) 0, cArr, i + 8);
        a((byte) 0, cArr, i + 10);
        a((byte) 0, cArr, i + 12);
        a((byte) 0, cArr, i + 14);
    }
}
