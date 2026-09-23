package com.bumptech.glide.load.data;

import android.support.v4.media.a;
import java.io.FilterInputStream;
import java.io.InputStream;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class ExifOrientationStream extends FilterInputStream {
    public static final byte[] g = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
    public static final int h = 31;

    /* renamed from: c, reason: collision with root package name */
    public final byte f2168c;
    public int f;

    public ExifOrientationStream(InputStream inputStream, int i) {
        super(inputStream);
        if (i >= -1 && i <= 8) {
            this.f2168c = (byte) i;
            return;
        }
        throw new IllegalArgumentException(a.e(i, "Cannot add invalid orientation: "));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read;
        int i;
        int i2 = this.f;
        if (i2 < 2 || i2 > (i = h)) {
            read = super.read();
        } else if (i2 == i) {
            read = this.f2168c;
        } else {
            read = g[i2 - 2] & UByte.MAX_VALUE;
        }
        if (read != -1) {
            this.f++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long skip = super.skip(j);
        if (skip > 0) {
            this.f = (int) (this.f + skip);
        }
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = this.f;
        int i5 = h;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f2168c;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(g, this.f - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f += i3;
        }
        return i3;
    }
}
