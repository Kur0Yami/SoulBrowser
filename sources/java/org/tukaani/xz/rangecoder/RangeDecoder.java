package org.tukaani.xz.rangecoder;

import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes4.dex */
public abstract class RangeDecoder extends RangeCoder {

    /* renamed from: a, reason: collision with root package name */
    public int f22720a;
    public int b;

    public final int b(short[] sArr, int i) {
        d();
        short s = sArr[i];
        int i2 = this.f22720a;
        int i3 = (i2 >>> 11) * s;
        int i4 = this.b;
        if ((i4 ^ IntCompanionObject.MIN_VALUE) < (Integer.MIN_VALUE ^ i3)) {
            this.f22720a = i3;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
            return 0;
        }
        this.f22720a = i2 - i3;
        this.b = i4 - i3;
        sArr[i] = (short) (s - (s >>> 5));
        return 1;
    }

    public final int c(short[] sArr) {
        int i = 1;
        do {
            i = b(sArr, i) | (i << 1);
        } while (i < sArr.length);
        return i - sArr.length;
    }

    public abstract void d();
}
