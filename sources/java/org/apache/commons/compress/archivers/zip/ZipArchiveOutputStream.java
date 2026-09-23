package org.apache.commons.compress.archivers.zip;

import org.apache.commons.compress.archivers.ArchiveOutputStream;

/* loaded from: classes4.dex */
public class ZipArchiveOutputStream extends ArchiveOutputStream {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f22301c = ZipLong.a(67324752);
    public static final byte[] f = ZipLong.a(33639248);
    public static final byte[] g = ZipLong.a(101010256);
    public static final byte[] h = ZipLong.a(101075792);
    public static final byte[] i = ZipLong.a(117853008);

    /* loaded from: classes4.dex */
    public static final class CurrentEntry {
    }

    /* loaded from: classes4.dex */
    public static final class UnicodeExtraFieldPolicy {
        public final String toString() {
            throw null;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) {
        throw new IllegalStateException("No current entry");
    }
}
