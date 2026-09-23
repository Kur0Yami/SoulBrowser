package org.mozilla.universalchardet.prober;

import java.nio.ByteBuffer;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import org.mozilla.universalchardet.Constants;
import org.mozilla.universalchardet.prober.CharsetProber;

/* loaded from: classes4.dex */
public class Latin1Prober extends CharsetProber {
    public static final byte[] e = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 0, 1, 7, 1, 1, 1, 1, 1, 1, 5, 1, 5, 0, 5, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 7, 1, 7, 0, 7, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 1, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 6, 6, 6, 6, 6, 1, 6, 6, 6, 6, 6, 7, 7, 7};
    public static final byte[] f = {0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 3, 3, 1, 1, 3, 3, 0, 3, 3, 3, 1, 2, 1, 2, 0, 3, 3, 3, 3, 3, 3, 3, 0, 3, 1, 3, 1, 1, 1, 3, 0, 3, 1, 3, 1, 1, 3, 3};
    public CharsetProber.ProbingState b;

    /* renamed from: c, reason: collision with root package name */
    public byte f22668c;
    public int[] d;

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final String a() {
        return Constants.r;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final float b() {
        int[] iArr;
        float f2;
        if (this.b == CharsetProber.ProbingState.g) {
            return 0.01f;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            iArr = this.d;
            if (i >= iArr.length) {
                break;
            }
            i2 += iArr[i];
            i++;
        }
        float f3 = 0.0f;
        if (i2 <= 0) {
            f2 = 0.0f;
        } else {
            float f4 = i2;
            f2 = ((iArr[3] * 1.0f) / f4) - ((iArr[1] * 20.0f) / f4);
        }
        if (f2 >= 0.0f) {
            f3 = f2;
        }
        return f3 * 0.5f;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final CharsetProber.ProbingState c(byte[] bArr, int i) {
        int i2;
        ByteBuffer allocate = ByteBuffer.allocate(i);
        int i3 = 0;
        int i4 = 0;
        boolean z = false;
        int i5 = 0;
        while (i4 < i) {
            byte b = bArr[i4];
            if (b == 62) {
                z = false;
            } else if (b == 60) {
                z = true;
            }
            if ((b & ByteCompanionObject.MIN_VALUE) == 0 && ((i2 = b & UByte.MAX_VALUE) < 65 || ((i2 > 90 && i2 < 97) || i2 > 122))) {
                if (i4 > i5 && !z) {
                    allocate.put(bArr, i5, i4 - i5);
                    allocate.put((byte) 32);
                }
                i5 = i4 + 1;
            }
            i4++;
        }
        if (!z && i4 > i5) {
            allocate.put(bArr, i5, i4 - i5);
        }
        byte[] array = allocate.array();
        int position = allocate.position();
        while (true) {
            if (i3 >= position) {
                break;
            }
            byte b2 = e[array[i3] & UByte.MAX_VALUE];
            byte b3 = f[(this.f22668c * 8) + b2];
            if (b3 == 0) {
                this.b = CharsetProber.ProbingState.g;
                break;
            }
            int[] iArr = this.d;
            iArr[b3] = iArr[b3] + 1;
            this.f22668c = b2;
            i3++;
        }
        return this.b;
    }

    @Override // org.mozilla.universalchardet.prober.CharsetProber
    public final void d() {
        this.b = CharsetProber.ProbingState.f22661c;
        this.f22668c = (byte) 1;
        int i = 0;
        while (true) {
            int[] iArr = this.d;
            if (i < iArr.length) {
                iArr[i] = 0;
                i++;
            } else {
                return;
            }
        }
    }
}
