package org.apache.commons.compress.utils;

import java.io.InputStream;

/* loaded from: classes4.dex */
public class BoundedInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public long f22328c;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.InputStream
    public final int read() {
        long j = this.f22328c;
        if (j <= 0) {
            return -1;
        }
        this.f22328c = j - 1;
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f22328c == 0) {
            return -1;
        }
        throw null;
    }
}
