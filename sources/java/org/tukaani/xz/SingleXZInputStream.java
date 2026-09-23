package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class SingleXZInputStream extends InputStream {
    @Override // java.io.InputStream
    public final int available() {
        throw new IOException("Stream closed");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
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
