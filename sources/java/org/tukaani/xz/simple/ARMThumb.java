package org.tukaani.xz.simple;

import kotlin.KotlinVersion;

/* loaded from: classes4.dex */
public final class ARMThumb implements SimpleFilter {

    /* renamed from: a, reason: collision with root package name */
    public int f22724a;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int a(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            int i5 = i4 + 1;
            int i6 = bArr[i5];
            if ((i6 & 248) == 240) {
                int i7 = i4 + 3;
                int i8 = bArr[i7];
                if ((i8 & 248) == 248) {
                    int i9 = ((i6 & 7) << 19) | ((bArr[i4] & KotlinVersion.MAX_COMPONENT_VALUE) << 11) | ((i8 & 7) << 8);
                    int i10 = i4 + 2;
                    int i11 = ((i9 | (bArr[i10] & KotlinVersion.MAX_COMPONENT_VALUE)) << 1) - ((this.f22724a + i4) - i);
                    bArr[i5] = (byte) (240 | ((i11 >>> 20) & 7));
                    bArr[i4] = (byte) (i11 >>> 12);
                    bArr[i7] = (byte) (((i11 >>> 9) & 7) | 248);
                    bArr[i10] = (byte) (i11 >>> 1);
                    i4 = i10;
                }
            }
            i4 += 2;
        }
        int i12 = i4 - i;
        this.f22724a += i12;
        return i12;
    }
}
