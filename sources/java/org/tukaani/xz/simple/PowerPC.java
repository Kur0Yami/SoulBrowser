package org.tukaani.xz.simple;

import kotlin.KotlinVersion;

/* loaded from: classes4.dex */
public final class PowerPC implements SimpleFilter {

    /* renamed from: a, reason: collision with root package name */
    public int f22726a;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int a(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            int i5 = bArr[i4];
            if ((i5 & 252) == 72) {
                int i6 = i4 + 3;
                int i7 = bArr[i6];
                if ((i7 & 3) == 1) {
                    int i8 = i4 + 1;
                    int i9 = i4 + 2;
                    int i10 = (((((i5 & 3) << 24) | ((bArr[i8] & KotlinVersion.MAX_COMPONENT_VALUE) << 16)) | ((bArr[i9] & KotlinVersion.MAX_COMPONENT_VALUE) << 8)) | (i7 & 252)) - ((this.f22726a + i4) - i);
                    bArr[i4] = (byte) (72 | ((i10 >>> 24) & 3));
                    bArr[i8] = (byte) (i10 >>> 16);
                    bArr[i9] = (byte) (i10 >>> 8);
                    bArr[i6] = (byte) (i10 | (bArr[i6] & 3));
                }
            }
            i4 += 4;
        }
        int i11 = i4 - i;
        this.f22726a += i11;
        return i11;
    }
}
