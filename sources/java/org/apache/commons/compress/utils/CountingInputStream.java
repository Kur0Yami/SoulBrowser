package org.apache.commons.compress.utils;

import java.io.FilterInputStream;

/* loaded from: classes4.dex */
public class CountingInputStream extends FilterInputStream {
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        return ((FilterInputStream) this).in.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return ((FilterInputStream) this).in.read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        return ((FilterInputStream) this).in.read(bArr, i, i2);
    }
}
