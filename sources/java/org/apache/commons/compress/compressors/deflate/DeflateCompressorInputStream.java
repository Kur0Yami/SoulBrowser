package org.apache.commons.compress.compressors.deflate;

import org.apache.commons.compress.compressors.CompressorInputStream;

/* loaded from: classes4.dex */
public class DeflateCompressorInputStream extends CompressorInputStream {
    @Override // java.io.InputStream
    public final int available() {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:?, code lost:
    
        throw null;
     */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r1 = this;
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L2
        L2:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.compressors.deflate.DeflateCompressorInputStream.close():void");
    }

    @Override // java.io.InputStream
    public final int read() {
        throw null;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        throw null;
    }
}
