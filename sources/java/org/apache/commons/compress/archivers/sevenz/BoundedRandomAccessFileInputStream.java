package org.apache.commons.compress.archivers.sevenz;

import java.io.InputStream;

/* loaded from: classes4.dex */
class BoundedRandomAccessFileInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public long f22267c;

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.InputStream
    public final int read() {
        long j = this.f22267c;
        if (j <= 0) {
            return -1;
        }
        this.f22267c = j - 1;
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f22267c == 0) {
            return -1;
        }
        throw null;
    }
}
