package org.tukaani.xz.simple;

import kotlin.KotlinVersion;
import kotlin.UByte;

/* loaded from: classes4.dex */
public final class ARM implements SimpleFilter {

    /* renamed from: a, reason: collision with root package name */
    public int f22723a;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int a(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            if ((bArr[i4 + 3] & UByte.MAX_VALUE) == 235) {
                int i5 = i4 + 2;
                int i6 = i4 + 1;
                int i7 = (((((bArr[i5] & KotlinVersion.MAX_COMPONENT_VALUE) << 16) | ((bArr[i6] & KotlinVersion.MAX_COMPONENT_VALUE) << 8)) | (bArr[i4] & KotlinVersion.MAX_COMPONENT_VALUE)) << 2) - ((this.f22723a + i4) - i);
                bArr[i5] = (byte) (i7 >>> 18);
                bArr[i6] = (byte) (i7 >>> 10);
                bArr[i4] = (byte) (i7 >>> 2);
            }
            i4 += 4;
        }
        int i8 = i4 - i;
        this.f22723a += i8;
        return i8;
    }
}
