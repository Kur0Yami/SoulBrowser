package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.InputStream;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
final class MultiInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public InputStream f12478c;

    @Override // java.io.InputStream
    public final int available() {
        InputStream inputStream = this.f12478c;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.f12478c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f12478c = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public final int read() {
        InputStream inputStream = this.f12478c;
        if (inputStream == null) {
            return -1;
        }
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        close();
        throw null;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        InputStream inputStream = this.f12478c;
        if (inputStream == null || j <= 0) {
            return 0L;
        }
        long skip = inputStream.skip(j);
        if (skip != 0) {
            return skip;
        }
        if (read() == -1) {
            return 0L;
        }
        return this.f12478c.skip(j - 1) + 1;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        InputStream inputStream = this.f12478c;
        if (inputStream == null) {
            return -1;
        }
        int read = inputStream.read(bArr, i, i2);
        if (read != -1) {
            return read;
        }
        close();
        throw null;
    }
}
