package net.lingala.zip4j.crypto.engine;

import kotlin.KotlinVersion;

/* loaded from: classes4.dex */
public class ZipCryptoEngine {
    public static final int[] b = new int[256];

    /* renamed from: a, reason: collision with root package name */
    public final int[] f21989a = new int[3];

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                if ((i2 & 1) == 1) {
                    i2 = (i2 >>> 1) ^ (-306674912);
                } else {
                    i2 >>>= 1;
                }
            }
            b[i] = i2;
        }
    }

    public final byte a() {
        int i = this.f21989a[2] | 2;
        return (byte) ((i * (i ^ 1)) >>> 8);
    }

    public final void b(char[] cArr) {
        int[] iArr = this.f21989a;
        iArr[0] = 305419896;
        iArr[1] = 591751049;
        iArr[2] = 878082192;
        for (char c2 : cArr) {
            c((byte) (c2 & 255));
        }
    }

    public final void c(byte b2) {
        int[] iArr = this.f21989a;
        int i = iArr[0];
        int i2 = i >>> 8;
        int i3 = (b2 ^ i) & KotlinVersion.MAX_COMPONENT_VALUE;
        int[] iArr2 = b;
        int i4 = iArr2[i3] ^ i2;
        iArr[0] = i4;
        int i5 = iArr[1] + (i4 & KotlinVersion.MAX_COMPONENT_VALUE);
        iArr[1] = i5;
        int i6 = (i5 * 134775813) + 1;
        iArr[1] = i6;
        int i7 = iArr[2];
        iArr[2] = iArr2[(i7 ^ ((byte) (i6 >> 24))) & KotlinVersion.MAX_COMPONENT_VALUE] ^ (i7 >>> 8);
    }
}
