package org.tukaani.xz.simple;

import kotlin.KotlinVersion;

/* loaded from: classes4.dex */
public final class SPARC implements SimpleFilter {

    /* renamed from: a, reason: collision with root package name */
    public int f22727a;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int a(byte[] bArr, int i, int i2) {
        int i3 = (i2 + i) - 4;
        int i4 = i;
        while (i4 <= i3) {
            int i5 = bArr[i4];
            if ((i5 == 64 && (bArr[i4 + 1] & 192) == 0) || (i5 == 127 && (bArr[i4 + 1] & 192) == 192)) {
                int i6 = i4 + 1;
                int i7 = i4 + 2;
                int i8 = i4 + 3;
                int i9 = ((((((i5 & KotlinVersion.MAX_COMPONENT_VALUE) << 24) | ((bArr[i6] & KotlinVersion.MAX_COMPONENT_VALUE) << 16)) | ((bArr[i7] & KotlinVersion.MAX_COMPONENT_VALUE) << 8)) | (bArr[i8] & KotlinVersion.MAX_COMPONENT_VALUE)) << 2) - ((this.f22727a + i4) - i);
                int i10 = (((0 - ((i9 >>> 24) & 1)) << 22) & 1073741823) | ((i9 >>> 2) & 4194303) | 1073741824;
                bArr[i4] = (byte) (i10 >>> 24);
                bArr[i6] = (byte) (i10 >>> 16);
                bArr[i7] = (byte) (i10 >>> 8);
                bArr[i8] = (byte) i10;
            }
            i4 += 4;
        }
        int i11 = i4 - i;
        this.f22727a += i11;
        return i11;
    }
}
