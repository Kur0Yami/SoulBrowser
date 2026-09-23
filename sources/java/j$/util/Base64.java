package j$.util;

import java.util.Arrays;
import kotlin.UByte;

/* loaded from: classes2.dex */
public class Base64 {
    public static Encoder getEncoder() {
        return Encoder.f21288c;
    }

    public static Decoder getDecoder() {
        return Decoder.f21286c;
    }

    /* loaded from: classes2.dex */
    public static class Encoder {

        /* renamed from: a, reason: collision with root package name */
        public static final char[] f21287a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        public static final char[] b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};

        /* renamed from: c, reason: collision with root package name */
        public static final Encoder f21288c = new Object();

        public String encodeToString(byte[] bArr) {
            int length = ((bArr.length + 2) / 3) * 4;
            byte[] bArr2 = new byte[length];
            int length2 = bArr.length;
            int i = (length2 / 3) * 3;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                char[] cArr = f21287a;
                if (i2 >= i) {
                    if (i2 < length2) {
                        int i4 = i2 + 1;
                        int i5 = bArr[i2] & UByte.MAX_VALUE;
                        int i6 = i3 + 1;
                        bArr2[i3] = (byte) cArr[i5 >> 2];
                        if (i4 == length2) {
                            bArr2[i6] = (byte) cArr[(i5 << 4) & 63];
                            int i7 = i3 + 3;
                            bArr2[i3 + 2] = kotlin.io.encoding.Base64.padSymbol;
                            i3 += 4;
                            bArr2[i7] = kotlin.io.encoding.Base64.padSymbol;
                        } else {
                            int i8 = bArr[i4] & UByte.MAX_VALUE;
                            bArr2[i6] = (byte) cArr[((i5 << 4) & 63) | (i8 >> 4)];
                            int i9 = i3 + 3;
                            bArr2[i3 + 2] = (byte) cArr[(i8 << 2) & 63];
                            i3 += 4;
                            bArr2[i9] = kotlin.io.encoding.Base64.padSymbol;
                        }
                    }
                    if (i3 != length) {
                        bArr2 = Arrays.copyOf(bArr2, i3);
                    }
                    return new String(bArr2, 0, 0, bArr2.length);
                }
                int min = Math.min(i2 + i, i);
                int i10 = i2;
                int i11 = i3;
                while (i10 < min) {
                    int i12 = i10 + 2;
                    int i13 = ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i10] & UByte.MAX_VALUE) << 16);
                    i10 += 3;
                    int i14 = i13 | (bArr[i12] & UByte.MAX_VALUE);
                    bArr2[i11] = (byte) cArr[(i14 >>> 18) & 63];
                    bArr2[i11 + 1] = (byte) cArr[(i14 >>> 12) & 63];
                    int i15 = i11 + 3;
                    bArr2[i11 + 2] = (byte) cArr[(i14 >>> 6) & 63];
                    i11 += 4;
                    bArr2[i15] = (byte) cArr[i14 & 63];
                }
                int i16 = ((min - i2) / 3) * 4;
                i3 += i16;
                if (i16 == -1 && min < length2) {
                    throw null;
                }
                i2 = min;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Decoder {

        /* renamed from: a, reason: collision with root package name */
        public static final int[] f21285a;
        public static final int[] b;

        /* renamed from: c, reason: collision with root package name */
        public static final Decoder f21286c;

        /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.Base64$Decoder, java.lang.Object] */
        static {
            int[] iArr = new int[256];
            f21285a = iArr;
            Arrays.fill(iArr, -1);
            for (int i = 0; i < 64; i++) {
                f21285a[Encoder.f21287a[i]] = i;
            }
            f21285a[61] = -2;
            int[] iArr2 = new int[256];
            b = iArr2;
            Arrays.fill(iArr2, -1);
            for (int i2 = 0; i2 < 64; i2++) {
                b[Encoder.b[i2]] = i2;
            }
            b[61] = -2;
            f21286c = new Object();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x00b8, code lost:
        
            if (r0[r2] == 61) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00bf, code lost:
        
            if (r9 != 18) goto L56;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public byte[] decode(java.lang.String r21) {
            /*
                Method dump skipped, instructions count: 346
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: j$.util.Base64.Decoder.decode(java.lang.String):byte[]");
        }
    }
}
