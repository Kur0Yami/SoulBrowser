package com.nostra13.universalimageloader.core.assist;

import java.io.BufferedInputStream;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class ContentLengthInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public final BufferedInputStream f20984c;
    public final int f;

    public ContentLengthInputStream(BufferedInputStream bufferedInputStream, int i) {
        this.f20984c = bufferedInputStream;
        this.f = i;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f20984c.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f20984c.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f20984c.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() {
        return this.f20984c.read();
    }

    @Override // java.io.InputStream
    public final void reset() {
        this.f20984c.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        return this.f20984c.skip(j);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return this.f20984c.read(bArr);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        return this.f20984c.read(bArr, i, i2);
    }
}
