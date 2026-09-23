package org.tukaani.xz;

import java.io.IOException;

/* loaded from: classes4.dex */
class SimpleOutputStream extends FinishableOutputStream {

    /* renamed from: c, reason: collision with root package name */
    public int f22703c;

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        throw new IOException("Flushing is not supported");
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        throw null;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 <= 0) {
            return;
        }
        int min = Math.min(i2, 4096 - (0 + this.f22703c));
        System.arraycopy(bArr, i, null, 0 + this.f22703c, min);
        this.f22703c += min;
        throw null;
    }
}
