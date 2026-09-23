package org.apache.commons.compress.archivers.zip;

import android.support.v4.media.a;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
class BinaryTree {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f22277a;

    public BinaryTree(int i) {
        int[] iArr = new int[(1 << (i + 1)) - 1];
        this.f22277a = iArr;
        Arrays.fill(iArr, -1);
    }

    public static BinaryTree b(BufferedInputStream bufferedInputStream, int i) {
        int read = bufferedInputStream.read() + 1;
        if (read != 0) {
            byte[] bArr = new byte[read];
            new DataInputStream(bufferedInputStream).readFully(bArr);
            int[] iArr = new int[i];
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < read; i4++) {
                byte b = bArr[i4];
                int i5 = ((b & 240) >> 4) + 1;
                int i6 = (b & 15) + 1;
                int i7 = 0;
                while (i7 < i5) {
                    iArr[i3] = i6;
                    i7++;
                    i3++;
                }
                i2 = Math.max(i2, i6);
            }
            int[] iArr2 = new int[i];
            for (int i8 = 0; i8 < i; i8++) {
                iArr2[i8] = i8;
            }
            int[] iArr3 = new int[i];
            int i9 = 0;
            for (int i10 = 0; i10 < i; i10++) {
                for (int i11 = 0; i11 < i; i11++) {
                    if (iArr[i11] == i10) {
                        iArr3[i9] = i10;
                        iArr2[i9] = i11;
                        i9++;
                    }
                }
            }
            int[] iArr4 = new int[i];
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = i - 1; i15 >= 0; i15--) {
                i12 += i13;
                int i16 = iArr3[i15];
                if (i16 != i14) {
                    i13 = 1 << (16 - i16);
                    i14 = i16;
                }
                iArr4[iArr2[i15]] = i12;
            }
            BinaryTree binaryTree = new BinaryTree(i2);
            for (int i17 = 0; i17 < i; i17++) {
                int i18 = iArr[i17];
                if (i18 > 0) {
                    binaryTree.a(0, Integer.reverse(iArr4[i17] << 16), i18, i17);
                }
            }
            return binaryTree;
        }
        throw new IOException("Cannot read the size of the encoded tree, unexpected end of stream");
    }

    public final void a(int i, int i2, int i3, int i4) {
        int[] iArr = this.f22277a;
        if (i3 == 0) {
            if (iArr[i] == -1) {
                iArr[i] = i4;
                return;
            } else {
                throw new IllegalArgumentException(a.g(iArr[i], ")", a.s(i, "Tree value at index ", " has already been assigned (")));
            }
        }
        iArr[i] = -2;
        a((i * 2) + 1 + (i2 & 1), i2 >>> 1, i3 - 1, i4);
    }

    public final int c(BitStream bitStream) {
        int i = 0;
        while (true) {
            int a2 = (int) bitStream.a(1);
            if (a2 == -1) {
                return -1;
            }
            int i2 = (i * 2) + 1 + a2;
            int i3 = this.f22277a[i2];
            if (i3 == -2) {
                i = i2;
            } else {
                if (i3 != -1) {
                    return i3;
                }
                throw new IOException("The child " + a2 + " of node at index " + i + " is not defined");
            }
        }
    }
}
