package org.apache.commons.compress.compressors.lzw;

import java.io.InputStream;
import java.nio.ByteOrder;
import kotlin.UByte;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BitInputStream;

/* loaded from: classes4.dex */
public abstract class LZWInputStream extends CompressorInputStream {
    public final byte[] f;
    public final BitInputStream g;
    public int h;
    public int i;
    public byte j;
    public int k;
    public int l;
    public int[] m;
    public byte[] n;
    public byte[] o;
    public int p;

    public LZWInputStream(InputStream inputStream) {
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        this.f = new byte[1];
        this.h = -1;
        this.i = 9;
        this.k = -1;
        this.g = new BitInputStream(inputStream);
    }

    public abstract int b(int i, byte b);

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.g.close();
    }

    public abstract int d();

    public final int e(int i, boolean z) {
        int i2 = i;
        while (i2 >= 0) {
            byte[] bArr = this.o;
            int i3 = this.p - 1;
            this.p = i3;
            bArr[i3] = this.n[i2];
            i2 = this.m[i2];
        }
        int i4 = this.k;
        if (i4 != -1 && !z) {
            b(i4, this.o[this.p]);
        }
        this.k = i;
        byte[] bArr2 = this.o;
        int i5 = this.p;
        this.j = bArr2[i5];
        return i5;
    }

    public int f() {
        int i = this.i;
        if (i <= 31) {
            return (int) this.g.a(i);
        }
        throw new IllegalArgumentException("code size must not be bigger than 31");
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f;
        int read = read(bArr);
        return read < 0 ? read : bArr[0] & UByte.MAX_VALUE;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int length = this.o.length - this.p;
        if (length > 0) {
            i3 = Math.min(length, i2);
            System.arraycopy(this.o, this.p, bArr, i, i3);
            this.p += i3;
        } else {
            i3 = 0;
        }
        while (true) {
            int i5 = i2 - i3;
            if (i5 > 0) {
                int d = d();
                if (d < 0) {
                    if (i3 <= 0) {
                        return d;
                    }
                    a(i3);
                    return i3;
                }
                int i6 = i + i3;
                int length2 = this.o.length - this.p;
                if (length2 > 0) {
                    i4 = Math.min(length2, i5);
                    System.arraycopy(this.o, this.p, bArr, i6, i4);
                    this.p += i4;
                } else {
                    i4 = 0;
                }
                i3 += i4;
            } else {
                a(i3);
                return i3;
            }
        }
    }
}
