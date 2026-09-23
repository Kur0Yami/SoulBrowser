package org.apache.commons.codec.binary;

import android.support.v4.media.a;
import j$.util.Objects;
import java.io.FilterInputStream;
import java.io.IOException;

/* loaded from: classes4.dex */
public class BaseNCodecInputStream extends FilterInputStream {
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        throw null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        read(null, 0, 1);
        throw null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        throw new IOException("mark/reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            byte[] bArr = new byte[512];
            long j2 = j;
            while (j2 > 0) {
                read(bArr, 0, (int) Math.min(512, j2));
                j2 -= 0;
            }
            return j - j2;
        }
        throw new IllegalArgumentException(a.h(j, "Negative skip length: "));
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "array");
        if (i >= 0 && i2 >= 0) {
            if (i > bArr.length || i + i2 > bArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return 0;
            }
            throw null;
        }
        throw new IndexOutOfBoundsException();
    }
}
