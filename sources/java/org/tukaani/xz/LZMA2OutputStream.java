package org.tukaani.xz;

import java.io.IOException;

/* loaded from: classes4.dex */
class LZMA2OutputStream extends FinishableOutputStream {

    /* renamed from: c, reason: collision with root package name */
    public int f22701c;
    public IOException f;

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        IOException iOException = this.f;
        if (iOException == null) {
        } else {
            throw iOException;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        IOException iOException = this.f;
        if (iOException == null) {
            throw null;
        }
        throw iOException;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        throw null;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i >= 0 && i2 >= 0 && (i3 = i + i2) >= 0 && i3 <= bArr.length) {
            IOException iOException = this.f;
            if (iOException != null) {
                throw iOException;
            }
            if (i2 > 0) {
                throw null;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
