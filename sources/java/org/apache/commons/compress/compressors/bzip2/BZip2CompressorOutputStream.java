package org.apache.commons.compress.compressors.bzip2;

import android.support.v4.media.a;
import java.io.IOException;
import org.apache.commons.compress.compressors.CompressorOutputStream;

/* loaded from: classes4.dex */
public class BZip2CompressorOutputStream extends CompressorOutputStream implements BZip2Constants {

    /* loaded from: classes4.dex */
    public static final class Data {
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    public final void finalize() {
        super.finalize();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        throw new IOException("closed");
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException(a.f(i, "offs(", ") < 0."));
        }
        if (i2 >= 0) {
            if (i + i2 <= bArr.length) {
                throw new IOException("stream closed");
            }
            throw new IndexOutOfBoundsException(a.g(bArr.length, ").", a.u("offs(", i, i2, ") + len(", ") > buf.length(")));
        }
        throw new IndexOutOfBoundsException(a.f(i2, "len(", ") < 0."));
    }
}
