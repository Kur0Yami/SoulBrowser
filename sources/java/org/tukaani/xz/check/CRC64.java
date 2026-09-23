package org.tukaani.xz.check;

/* loaded from: classes4.dex */
public class CRC64 extends Check {

    /* renamed from: a, reason: collision with root package name */
    public static final long[] f22705a = new long[256];

    static {
        for (int i = 0; i < f22705a.length; i++) {
            long j = i;
            for (int i2 = 0; i2 < 8; i2++) {
                if ((j & 1) == 1) {
                    j = (j >>> 1) ^ (-3932672073523589310L);
                } else {
                    j >>>= 1;
                }
            }
            f22705a[i] = j;
        }
    }
}
