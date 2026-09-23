package org.apache.commons.compress.archivers.arj;

import org.apache.commons.compress.archivers.ArchiveInputStream;

/* loaded from: classes4.dex */
public class ArjArchiveInputStream extends ArchiveInputStream {
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        throw new IllegalStateException("No current arj entry");
    }
}
