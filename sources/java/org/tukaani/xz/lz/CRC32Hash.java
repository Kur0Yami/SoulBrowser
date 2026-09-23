package org.tukaani.xz.lz;

/* loaded from: classes4.dex */
class CRC32Hash {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f22707a = new int[256];

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                if ((i2 & 1) != 0) {
                    i2 = (i2 >>> 1) ^ (-306674912);
                } else {
                    i2 >>>= 1;
                }
            }
            f22707a[i] = i2;
        }
    }
}
