package org.tukaani.xz.rangecoder;

import kotlin.uuid.Uuid;

/* loaded from: classes4.dex */
public abstract class RangeEncoder extends RangeCoder {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f22722a = new int[Uuid.SIZE_BITS];

    static {
        for (int i = 8; i < 2048; i += 16) {
            int i2 = i;
            int i3 = 0;
            for (int i4 = 0; i4 < 4; i4++) {
                i2 *= i2;
                i3 <<= 1;
                while (((-65536) & i2) != 0) {
                    i2 >>>= 1;
                    i3++;
                }
            }
            f22722a[i >> 4] = 161 - i3;
        }
    }
}
