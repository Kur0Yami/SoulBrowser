package org.apache.commons.compress.compressors.snappy;

import org.apache.commons.compress.compressors.CompressorInputStream;

/* loaded from: classes4.dex */
public class SnappyCompressorInputStream extends CompressorInputStream {
    public int f;
    public int g;
    public boolean h;

    @Override // java.io.InputStream
    public final int available() {
        return this.f - this.g;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
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
        if (this.h) {
            return -1;
        }
        int available = available();
        if (i2 > available) {
            this.h = true;
            if (Math.min(i2 - available, 0) > 0) {
                throw null;
            }
        }
        int min = Math.min(i2, available());
        if (min == 0 && i2 > 0) {
            return -1;
        }
        System.arraycopy(null, this.g, bArr, i, min);
        int i3 = this.g + min;
        this.g = i3;
        if (i3 > 0) {
            System.arraycopy(null, 0, null, 0, 0);
            this.f = this.f;
            this.g = this.g;
        }
        return min;
    }
}
