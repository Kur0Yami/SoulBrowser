package org.tukaani.xz.simple;

import android.support.v4.media.session.PlaybackStateCompat;

/* loaded from: classes4.dex */
public final class IA64 implements SimpleFilter {
    public static final int[] b = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 6, 6, 0, 0, 7, 7, 4, 4, 0, 0, 4, 4, 0, 0};

    /* renamed from: a, reason: collision with root package name */
    public int f22725a;

    @Override // org.tukaani.xz.simple.SimpleFilter
    public final int a(byte[] bArr, int i, int i2) {
        char c2;
        int i3;
        char c3 = 16;
        int i4 = (i + i2) - 16;
        int i5 = i;
        while (i5 <= i4) {
            int i6 = b[bArr[i5] & 31];
            int i7 = 5;
            int i8 = 0;
            while (i8 < 3) {
                if (((i6 >>> i8) & 1) == 0) {
                    c2 = c3;
                    i3 = i7;
                } else {
                    int i9 = i7 >>> 3;
                    int i10 = i7 & 7;
                    c2 = c3;
                    long j = 0;
                    int i11 = 0;
                    while (i11 < 6) {
                        j |= (bArr[(i5 + i9) + i11] & 255) << (i11 * 8);
                        i11++;
                        i7 = i7;
                    }
                    i3 = i7;
                    long j2 = j >>> i10;
                    if (((j2 >>> 37) & 15) == 5 && ((j2 >>> 9) & 7) == 0) {
                        long j3 = (((((((int) (j2 >>> 36)) & 1) << 20) | ((int) ((j2 >>> 13) & 1048575))) << 4) - ((this.f22725a + i5) - i)) >>> 4;
                        long j4 = ((((j2 & (-77309403137L)) | ((j3 & 1048575) << 13)) | ((j3 & PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) << c2)) << i10) | (((1 << i10) - 1) & j);
                        for (int i12 = 0; i12 < 6; i12++) {
                            bArr[i5 + i9 + i12] = (byte) (j4 >>> (i12 * 8));
                        }
                    }
                }
                i8++;
                i7 = i3 + 41;
                c3 = c2;
            }
            i5 += 16;
        }
        int i13 = i5 - i;
        this.f22725a += i13;
        return i13;
    }
}
