package org.tukaani.xz.simple;

import kotlin.KotlinVersion;
import kotlin.UByte;

/* loaded from: classes4.dex */
public final class X86 implements SimpleFilter {

    /* renamed from: c, reason: collision with root package name */
    public static final boolean[] f22728c = {true, true, true, false, true, false, false, false};
    public static final int[] d = {0, 1, 2, 2, 3, 3, 3, 3};

    /* renamed from: a, reason: collision with root package name */
    public int f22729a;
    public int b;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int a(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = i - 1;
        int i7 = (i2 + i) - 5;
        int i8 = i;
        while (true) {
            i3 = 0;
            if (i8 > i7) {
                break;
            }
            if ((bArr[i8] & 254) == 232) {
                int i9 = i8 - i6;
                int i10 = i9 & (-4);
                int[] iArr = d;
                if (i10 != 0) {
                    this.b = 0;
                } else {
                    int i11 = (this.b << (i9 - 1)) & 7;
                    this.b = i11;
                    if (i11 != 0 && (!f22728c[i11] || (i4 = bArr[(i8 + 4) - iArr[i11]] & UByte.MAX_VALUE) == 0 || i4 == 255)) {
                        this.b = (i11 << 1) | 1;
                        i6 = i8;
                    }
                }
                int i12 = i8 + 4;
                int i13 = bArr[i12];
                int i14 = i13 & KotlinVersion.MAX_COMPONENT_VALUE;
                if (i14 != 0 && i14 != 255) {
                    this.b = (this.b << 1) | 1;
                    i6 = i8;
                } else {
                    int i15 = i8 + 1;
                    int i16 = i8 + 2;
                    int i17 = i8 + 3;
                    int i18 = ((i13 & KotlinVersion.MAX_COMPONENT_VALUE) << 24) | (bArr[i15] & KotlinVersion.MAX_COMPONENT_VALUE) | ((bArr[i16] & KotlinVersion.MAX_COMPONENT_VALUE) << 8) | ((bArr[i17] & KotlinVersion.MAX_COMPONENT_VALUE) << 16);
                    while (true) {
                        i5 = i18 - ((this.f22729a + i8) - i);
                        int i19 = this.b;
                        if (i19 != 0) {
                            int i20 = iArr[i19] * 8;
                            int i21 = ((byte) (i5 >>> (24 - i20))) & UByte.MAX_VALUE;
                            if (i21 != 0 && i21 != 255) {
                                break;
                            }
                            i18 = i5 ^ ((1 << (32 - i20)) - 1);
                        } else {
                            break;
                        }
                    }
                    bArr[i15] = (byte) i5;
                    bArr[i16] = (byte) (i5 >>> 8);
                    bArr[i17] = (byte) (i5 >>> 16);
                    bArr[i12] = (byte) (~(((i5 >>> 24) & 1) - 1));
                    i6 = i8;
                    i8 = i12;
                }
            }
            i8++;
        }
        int i22 = i8 - i6;
        if ((i22 & (-4)) == 0) {
            i3 = this.b << (i22 - 1);
        }
        this.b = i3;
        int i23 = i8 - i;
        this.f22729a += i23;
        return i23;
    }
}
