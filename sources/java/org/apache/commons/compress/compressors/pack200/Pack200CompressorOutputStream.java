package org.apache.commons.compress.compressors.pack200;

import org.apache.commons.compress.compressors.CompressorOutputStream;

/* loaded from: classes4.dex */
public class Pack200CompressorOutputStream extends CompressorOutputStream {
    /* JADX WARN: Code restructure failed: missing block: B:5:?, code lost:
    
        throw null;
     */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
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
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.compressors.pack200.Pack200CompressorOutputStream.close():void");
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        throw null;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        throw null;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        throw null;
    }
}
