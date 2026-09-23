package org.apache.commons.compress.archivers.tar;

import java.util.Arrays;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;

/* loaded from: classes4.dex */
public class TarArchiveOutputStream extends ArchiveOutputStream {

    /* renamed from: c, reason: collision with root package name */
    public static final ZipEncoding f22272c = ZipEncodingHelper.a("ASCII");

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Arrays.fill((byte[]) null, (byte) 0);
        throw null;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        throw null;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        throw new IllegalStateException("No current tar entry");
    }
}
