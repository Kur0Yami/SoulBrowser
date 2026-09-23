package org.apache.commons.compress.archivers.cpio;

import org.apache.commons.compress.archivers.ArchiveInputStream;

/* loaded from: classes4.dex */
public class CpioArchiveInputStream extends ArchiveInputStream implements CpioConstants {
    @Override // java.io.InputStream
    public final int available() {
        throw null;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (i >= 0 && i2 >= 0 && i <= bArr.length - i2) {
            if (i2 == 0) {
                return 0;
            }
            return -1;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            if (((int) Math.min(j, 2147483647L)) <= 0) {
                return 0;
            }
            throw null;
        }
        throw new IllegalArgumentException("negative skip length");
    }
}
