package org.apache.commons.compress.compressors.gzip;

import org.apache.commons.compress.compressors.CompressorInputStream;

/* loaded from: classes4.dex */
public class GzipCompressorInputStream extends CompressorInputStream {
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (System.in == null) {
        } else {
            throw null;
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        if (read(null, 0, 1) == -1) {
            return -1;
        }
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        throw null;
    }
}
