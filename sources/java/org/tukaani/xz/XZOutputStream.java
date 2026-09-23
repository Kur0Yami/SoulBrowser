package org.tukaani.xz;

/* loaded from: classes4.dex */
public class XZOutputStream extends FinishableOutputStream {
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        throw null;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        throw null;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i >= 0 && i2 >= 0 && (i3 = i + i2) >= 0 && i3 <= bArr.length) {
            throw null;
        }
        throw new IndexOutOfBoundsException();
    }
}
