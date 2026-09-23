package org.tukaani.xz;

import java.io.FilterInputStream;

/* loaded from: classes4.dex */
class CountingInputStream extends CloseIgnoringInputStream {

    /* renamed from: c, reason: collision with root package name */
    public long f22698c;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            long j = this.f22698c;
            if (j >= 0) {
                this.f22698c = j + 1;
            }
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read > 0) {
            long j = this.f22698c;
            if (j >= 0) {
                this.f22698c = j + read;
            }
        }
        return read;
    }
}
