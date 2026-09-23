package com.google.common.hash;

import com.google.common.annotations.Beta;
import java.io.FilterInputStream;
import java.io.IOException;

@Beta
/* loaded from: classes3.dex */
public final class HashingInputStream extends FilterInputStream {
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read = ((FilterInputStream) this).in.read();
        if (read == -1) {
            return read;
        }
        throw null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        throw new IOException("reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = ((FilterInputStream) this).in.read(bArr, i, i2);
        if (read == -1) {
            return read;
        }
        throw null;
    }
}
