package org.tukaani.xz;

import java.io.IOException;

/* loaded from: classes4.dex */
class UncompressedLZMA2OutputStream extends FinishableOutputStream {

    /* renamed from: c, reason: collision with root package name */
    public int f22704c;
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
            try {
                if (this.f22704c > 0) {
                    throw null;
                }
                throw null;
            } catch (IOException e) {
                this.f = e;
                throw e;
            }
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
            while (i2 > 0) {
                try {
                    int min = Math.min(65536 - this.f22704c, i2);
                    System.arraycopy(bArr, i, null, this.f22704c, min);
                    i2 -= min;
                    int i4 = this.f22704c + min;
                    this.f22704c = i4;
                    if (i4 == 65536) {
                        throw null;
                    }
                } catch (IOException e) {
                    this.f = e;
                    throw e;
                }
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
