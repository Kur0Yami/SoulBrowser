package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;

/* loaded from: classes.dex */
public class RecyclableBufferedInputStream extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public volatile byte[] f2377c;
    public int f;
    public int g;
    public int h;
    public int i;
    public final ArrayPool j;

    /* loaded from: classes.dex */
    public static class InvalidMarkException extends IOException {
    }

    public RecyclableBufferedInputStream(InputStream inputStream, ArrayPool arrayPool) {
        super(inputStream);
        this.h = -1;
        this.j = arrayPool;
        this.f2377c = (byte[]) arrayPool.d(65536, byte[].class);
    }

    public static void b() {
        throw new IOException("BufferedInputStream is closed");
    }

    public final int a(InputStream inputStream, byte[] bArr) {
        int i = this.h;
        if (i != -1) {
            int i2 = this.i - i;
            int i3 = this.g;
            if (i2 < i3) {
                if (i == 0 && i3 > bArr.length && this.f == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i3) {
                        i3 = length;
                    }
                    byte[] bArr2 = (byte[]) this.j.d(i3, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f2377c = bArr2;
                    this.j.c(bArr);
                    bArr = bArr2;
                } else if (i > 0) {
                    System.arraycopy(bArr, i, bArr, 0, bArr.length - i);
                }
                int i4 = this.i - this.h;
                this.i = i4;
                this.h = 0;
                this.f = 0;
                int read = inputStream.read(bArr, i4, bArr.length - i4);
                int i5 = this.i;
                if (read > 0) {
                    i5 += read;
                }
                this.f = i5;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.h = -1;
            this.i = 0;
            this.f = read2;
        }
        return read2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f2377c != null && inputStream != null) {
        } else {
            b();
            throw null;
        }
        return (this.f - this.i) + inputStream.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f2377c != null) {
            this.j.c(this.f2377c);
            this.f2377c = null;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        this.g = Math.max(this.g, i);
        this.h = this.i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() {
        byte[] bArr = this.f2377c;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr != null && inputStream != null) {
            if (this.i >= this.f && a(inputStream, bArr) == -1) {
                return -1;
            }
            if (bArr != this.f2377c && (bArr = this.f2377c) == null) {
                b();
                throw null;
            }
            int i = this.f;
            int i2 = this.i;
            if (i - i2 <= 0) {
                return -1;
            }
            this.i = i2 + 1;
            return bArr[i2] & UByte.MAX_VALUE;
        }
        b();
        throw null;
    }

    public final synchronized void release() {
        if (this.f2377c != null) {
            this.j.c(this.f2377c);
            this.f2377c = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        if (this.f2377c != null) {
            int i = this.h;
            if (-1 != i) {
                this.i = i;
            } else {
                throw new IOException("Mark has been invalidated, pos: " + this.i + " markLimit: " + this.g);
            }
        } else {
            throw new IOException("Stream is closed");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) {
        if (j < 1) {
            return 0L;
        }
        byte[] bArr = this.f2377c;
        if (bArr != null) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (inputStream != null) {
                int i = this.f;
                int i2 = this.i;
                if (i - i2 >= j) {
                    this.i = (int) (i2 + j);
                    return j;
                }
                long j2 = i - i2;
                this.i = i;
                if (this.h != -1 && j <= this.g) {
                    if (a(inputStream, bArr) == -1) {
                        return j2;
                    }
                    int i3 = this.f;
                    int i4 = this.i;
                    if (i3 - i4 >= j - j2) {
                        this.i = (int) ((i4 + j) - j2);
                        return j;
                    }
                    long j3 = (j2 + i3) - i4;
                    this.i = i3;
                    return j3;
                }
                long skip = inputStream.skip(j - j2);
                if (skip > 0) {
                    this.h = -1;
                }
                return j2 + skip;
            }
            b();
            throw null;
        }
        b();
        throw null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte[] bArr2 = this.f2377c;
        if (bArr2 == null) {
            b();
            throw null;
        }
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i5 = this.i;
            int i6 = this.f;
            if (i5 < i6) {
                int i7 = i6 - i5;
                if (i7 >= i2) {
                    i7 = i2;
                }
                System.arraycopy(bArr2, i5, bArr, i, i7);
                this.i += i7;
                if (i7 == i2 || inputStream.available() == 0) {
                    return i7;
                }
                i += i7;
                i3 = i2 - i7;
            } else {
                i3 = i2;
            }
            while (true) {
                if (this.h == -1 && i3 >= bArr2.length) {
                    i4 = inputStream.read(bArr, i, i3);
                    if (i4 == -1) {
                        return i3 != i2 ? i2 - i3 : -1;
                    }
                } else {
                    if (a(inputStream, bArr2) == -1) {
                        return i3 != i2 ? i2 - i3 : -1;
                    }
                    if (bArr2 != this.f2377c && (bArr2 = this.f2377c) == null) {
                        b();
                        throw null;
                    }
                    int i8 = this.f;
                    int i9 = this.i;
                    i4 = i8 - i9;
                    if (i4 >= i3) {
                        i4 = i3;
                    }
                    System.arraycopy(bArr2, i9, bArr, i, i4);
                    this.i += i4;
                }
                i3 -= i4;
                if (i3 == 0) {
                    return i2;
                }
                if (inputStream.available() == 0) {
                    return i2 - i3;
                }
                i += i4;
            }
        } else {
            b();
            throw null;
        }
    }
}
