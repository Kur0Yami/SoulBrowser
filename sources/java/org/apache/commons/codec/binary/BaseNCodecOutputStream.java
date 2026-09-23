package org.apache.commons.codec.binary;

import j$.util.Objects;
import java.io.FilterOutputStream;

/* loaded from: classes4.dex */
public class BaseNCodecOutputStream extends FilterOutputStream {
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() {
        throw null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "array");
        if (i >= 0 && i2 >= 0) {
            if (i > bArr.length || i + i2 > bArr.length) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 > 0) {
                throw null;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        throw null;
    }
}
