package org.jsoup.internal;

import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import org.jsoup.Progress;
import org.jsoup.helper.Validate;

/* loaded from: classes4.dex */
public class ControllableInputStream extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public final SimpleBufferedInput f22546c;
    public int f;
    public long g;
    public long h;
    public int i;
    public int j;
    public boolean k;
    public boolean l;
    public Progress m;
    public Object n;
    public int o;
    public int p;

    public ControllableInputStream(SimpleBufferedInput simpleBufferedInput, int i) {
        super(simpleBufferedInput);
        this.h = 0L;
        this.l = true;
        this.o = -1;
        this.p = 0;
        Validate.isTrue(i >= 0);
        this.f22546c = simpleBufferedInput;
        this.f = i;
        this.i = i;
        this.j = -1;
        this.g = System.nanoTime();
    }

    public static ByteBuffer readToByteBuffer(InputStream inputStream, int i) {
        boolean z;
        int i2;
        int min;
        boolean z2 = true;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Validate.isTrue(z, "maxSize must be 0 (unlimited) or larger");
        Validate.notNull(inputStream);
        if (i <= 0) {
            z2 = false;
        }
        byte[] bArr = (byte[]) SimpleBufferedInput.j.borrow();
        if (z2) {
            i2 = Math.min(i, 8192);
        } else {
            i2 = 8192;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i2);
        while (true) {
            if (z2) {
                try {
                    min = Math.min(i, 8192);
                } catch (Throwable th) {
                    SimpleBufferedInput.j.release(bArr);
                    throw th;
                }
            } else {
                min = 8192;
            }
            int read = inputStream.read(bArr, 0, min);
            if (read != -1) {
                if (allocate.remaining() < read) {
                    ByteBuffer allocate2 = ByteBuffer.allocate((int) Math.max(allocate.capacity() * 1.5d, allocate.capacity() + read));
                    allocate.flip();
                    allocate2.put(allocate);
                    allocate = allocate2;
                }
                allocate.put(bArr, 0, read);
                if (z2 && (i = i - read) <= 0) {
                    break;
                }
            } else {
                break;
            }
        }
        allocate.flip();
        SimpleBufferedInput.j.release(bArr);
        return allocate;
    }

    public static ControllableInputStream wrap(InputStream inputStream, int i) {
        if (inputStream instanceof ControllableInputStream) {
            return (ControllableInputStream) inputStream;
        }
        return new ControllableInputStream(new SimpleBufferedInput(inputStream), i);
    }

    public final void a() {
        float f;
        if (this.m != null) {
            int i = this.o;
            if (i > 0) {
                f = Math.min(100.0f, (this.p * 100.0f) / i);
            } else {
                f = 0.0f;
            }
            this.m.onProgress(this.p, this.o, f, this.n);
            if (f == 100.0f) {
                this.m = null;
            }
        }
    }

    public void allowClose(boolean z) {
        this.l = z;
    }

    public boolean baseReadFully() {
        return this.f22546c.i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.l) {
            super.close();
        }
    }

    public BufferedInputStream inputStream() {
        return new BufferedInputStream(this.f22546c);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        super.mark(i);
        this.j = this.f - this.i;
    }

    public int max() {
        return this.f;
    }

    public <ProgressContext> ControllableInputStream onProgress(int i, Progress<ProgressContext> progress, ProgressContext progresscontext) {
        Validate.notNull(progress);
        Validate.notNull(progresscontext);
        this.o = i;
        this.m = progress;
        this.n = progresscontext;
        return this;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        boolean z;
        int i3;
        if (this.p == 0) {
            a();
        }
        if (this.f != 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.k || (z && this.i <= 0)) {
            return -1;
        }
        if (Thread.currentThread().isInterrupted()) {
            this.k = true;
            return -1;
        }
        if (z && i2 > (i3 = this.i)) {
            i2 = i3;
        }
        do {
            if (this.h == 0 || System.nanoTime() - this.g <= this.h) {
                try {
                    int read = super.read(bArr, i, i2);
                    if (read == -1) {
                        this.o = this.p;
                    } else {
                        this.i -= read;
                        this.p += read;
                    }
                    a();
                    return read;
                } catch (SocketTimeoutException e) {
                    if (this.h != 0 && System.nanoTime() - this.g > this.h) {
                        break;
                    }
                    throw e;
                }
            }
            throw new SocketTimeoutException("Read timeout");
        } while (this.h != 0);
        throw e;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        super.reset();
        int i = this.f;
        int i2 = this.j;
        this.i = i - i2;
        this.p = i2;
    }

    public ControllableInputStream timeout(long j, long j2) {
        this.g = j;
        this.h = j2 * 1000000;
        return this;
    }

    public void max(int i) {
        this.i = (i - this.f) + this.i;
        this.f = i;
    }

    public static ControllableInputStream wrap(InputStream inputStream, int i, int i2) {
        return wrap(inputStream, i2);
    }
}
