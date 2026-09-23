package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
class BlockInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public InputStream f22697c;
    public long f;
    public boolean g;

    @Override // java.io.InputStream
    public final int available() {
        return this.f22697c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.f22697c.close();
        } catch (IOException unused) {
        }
        this.f22697c = null;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (read(null, 0, 1) == -1) {
            return -1;
        }
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.g) {
            return -1;
        }
        int read = this.f22697c.read(bArr, i, i2);
        if (read > 0) {
            this.f += read;
            throw null;
        }
        if (read != -1) {
            return read;
        }
        throw null;
    }
}
