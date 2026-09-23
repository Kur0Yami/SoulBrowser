package org.tukaani.xz;

import java.io.IOException;

/* loaded from: classes4.dex */
public class SeekableXZInputStream extends SeekableInputStream {
    @Override // org.tukaani.xz.SeekableInputStream
    public final long a() {
        return 0L;
    }

    @Override // java.io.InputStream
    public final int available() {
        throw new IOException("Stream closed");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // org.tukaani.xz.SeekableInputStream
    public final long position() {
        throw new IOException("Stream closed");
    }

    @Override // java.io.InputStream
    public final int read() {
        read(null, 0, 1);
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        throw new IOException("Stream closed");
    }
}
