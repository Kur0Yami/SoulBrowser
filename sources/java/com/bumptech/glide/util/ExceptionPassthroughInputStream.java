package com.bumptech.glide.util;

import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class ExceptionPassthroughInputStream extends InputStream {
    public static final ArrayDeque g;

    /* renamed from: c, reason: collision with root package name */
    public RecyclableBufferedInputStream f2487c;
    public IOException f;

    static {
        char[] cArr = Util.f2497a;
        g = new ArrayDeque(0);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f2487c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2487c.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f2487c.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f2487c.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() {
        try {
            return this.f2487c.read();
        } catch (IOException e) {
            this.f = e;
            throw e;
        }
    }

    public final void release() {
        this.f = null;
        this.f2487c = null;
        ArrayDeque arrayDeque = g;
        synchronized (arrayDeque) {
            arrayDeque.offer(this);
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.f2487c.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        try {
            return this.f2487c.skip(j);
        } catch (IOException e) {
            this.f = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        try {
            return this.f2487c.read(bArr);
        } catch (IOException e) {
            this.f = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        try {
            return this.f2487c.read(bArr, i, i2);
        } catch (IOException e) {
            this.f = e;
            throw e;
        }
    }
}
