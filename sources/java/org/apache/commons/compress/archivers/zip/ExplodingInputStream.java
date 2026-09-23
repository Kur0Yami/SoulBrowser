package org.apache.commons.compress.archivers.zip;

import java.io.BufferedInputStream;
import java.io.InputStream;
import java.nio.ByteOrder;
import kotlin.UByte;
import org.apache.commons.compress.utils.BitInputStream;

/* loaded from: classes4.dex */
class ExplodingInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public final BufferedInputStream f22280c;
    public BitStream f;
    public final int g;
    public final int h;
    public final int i;
    public BinaryTree j;
    public BinaryTree k;
    public BinaryTree l;
    public final CircularBuffer m = new CircularBuffer();

    public ExplodingInputStream(int i, int i2, BufferedInputStream bufferedInputStream) {
        if (i != 4096 && i != 8192) {
            throw new IllegalArgumentException("The dictionary size must be 4096 or 8192");
        }
        if (i2 != 2 && i2 != 3) {
            throw new IllegalArgumentException("The number of trees must be 2 or 3");
        }
        this.g = i;
        this.h = i2;
        this.i = i2;
        this.f22280c = bufferedInputStream;
    }

    /* JADX WARN: Type inference failed for: r1v26, types: [org.apache.commons.compress.utils.BitInputStream, org.apache.commons.compress.archivers.zip.BitStream] */
    @Override // java.io.InputStream
    public final int read() {
        int i;
        int a2;
        CircularBuffer circularBuffer = this.m;
        int i2 = circularBuffer.b;
        byte[] bArr = circularBuffer.f22278a;
        if (i2 == circularBuffer.f22279c) {
            if (this.f == null) {
                int i3 = this.h;
                BufferedInputStream bufferedInputStream = this.f22280c;
                if (i3 == 3) {
                    this.j = BinaryTree.b(bufferedInputStream, 256);
                }
                this.k = BinaryTree.b(bufferedInputStream, 64);
                this.l = BinaryTree.b(bufferedInputStream, 64);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                this.f = new BitInputStream(bufferedInputStream);
            }
            int a3 = (int) this.f.a(1);
            if (a3 == 1) {
                BinaryTree binaryTree = this.j;
                if (binaryTree != null) {
                    a2 = binaryTree.c(this.f);
                } else {
                    a2 = (int) this.f.a(8);
                }
                if (a2 != -1) {
                    int i4 = circularBuffer.f22279c;
                    bArr[i4] = (byte) a2;
                    circularBuffer.f22279c = (i4 + 1) % 32768;
                }
            } else if (a3 == 0) {
                if (this.g == 4096) {
                    i = 6;
                } else {
                    i = 7;
                }
                int a4 = (int) this.f.a(i);
                int c2 = this.l.c(this.f);
                if (c2 != -1 || a4 > 0) {
                    int i5 = (c2 << i) | a4;
                    int c3 = this.k.c(this.f);
                    if (c3 == 63) {
                        c3 = (int) (this.f.a(8) + c3);
                    }
                    int i6 = c3 + this.i;
                    int i7 = circularBuffer.f22279c - (i5 + 1);
                    int i8 = i6 + i7;
                    while (i7 < i8) {
                        int i9 = circularBuffer.f22279c;
                        bArr[i9] = bArr[(i7 + 32768) % 32768];
                        circularBuffer.f22279c = (i9 + 1) % 32768;
                        i7++;
                    }
                }
            }
        }
        int i10 = circularBuffer.b;
        if (i10 == circularBuffer.f22279c) {
            return -1;
        }
        byte b = bArr[i10];
        circularBuffer.b = (i10 + 1) % 32768;
        return b & UByte.MAX_VALUE;
    }
}
