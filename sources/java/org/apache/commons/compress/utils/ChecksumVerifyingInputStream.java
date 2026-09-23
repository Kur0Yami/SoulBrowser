package org.apache.commons.compress.utils;

import java.io.InputStream;

/* loaded from: classes4.dex */
public class ChecksumVerifyingInputStream extends InputStream {
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // java.io.InputStream
    public final int read() {
        throw null;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        read();
        return 0L;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        int length = bArr.length;
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        throw null;
    }
}
