package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.compress.archivers.ArchiveInputStream;

/* loaded from: classes4.dex */
public class ZipArchiveInputStream extends ArchiveInputStream {

    /* loaded from: classes4.dex */
    public class BoundedInputStream extends InputStream {
        @Override // java.io.InputStream
        public final int available() {
            throw null;
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
        public final int read(byte[] bArr) {
            read(bArr, 0, bArr.length);
            return -1;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static final class CurrentEntry {
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        throw new IOException("The stream is closed");
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            if (0 >= j) {
                return 0L;
            }
            throw null;
        }
        throw new IllegalArgumentException();
    }
}
