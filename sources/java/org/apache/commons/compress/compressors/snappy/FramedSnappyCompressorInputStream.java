package org.apache.commons.compress.compressors.snappy;

import org.apache.commons.compress.compressors.CompressorInputStream;

/* loaded from: classes4.dex */
public class FramedSnappyCompressorInputStream extends CompressorInputStream {
    @Override // java.io.InputStream
    public final int available() {
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Object obj = null;
        obj.getClass();
        throw null;
    }

    @Override // java.io.InputStream
    public final int read() {
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        throw null;
    }
}
