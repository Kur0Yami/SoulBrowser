package com.bumptech.glide.load.data;

import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FileOutputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class BufferedOutputStream extends OutputStream {

    /* renamed from: c, reason: collision with root package name */
    public final FileOutputStream f2165c;
    public byte[] f;
    public final ArrayPool g;
    public int h;

    public BufferedOutputStream(FileOutputStream fileOutputStream, ArrayPool arrayPool) {
        this.f2165c = fileOutputStream;
        this.g = arrayPool;
        this.f = (byte[]) arrayPool.d(65536, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        FileOutputStream fileOutputStream = this.f2165c;
        try {
            flush();
            fileOutputStream.close();
            byte[] bArr = this.f;
            if (bArr != null) {
                this.g.c(bArr);
                this.f = null;
            }
        } catch (Throwable th) {
            fileOutputStream.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        int i = this.h;
        FileOutputStream fileOutputStream = this.f2165c;
        if (i > 0) {
            fileOutputStream.write(this.f, 0, i);
            this.h = 0;
        }
        fileOutputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        byte[] bArr = this.f;
        int i2 = this.h;
        int i3 = i2 + 1;
        this.h = i3;
        bArr[i2] = (byte) i;
        if (i3 != bArr.length || i3 <= 0) {
            return;
        }
        this.f2165c.write(bArr, 0, i3);
        this.h = 0;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3 = 0;
        do {
            int i4 = i2 - i3;
            int i5 = i + i3;
            int i6 = this.h;
            FileOutputStream fileOutputStream = this.f2165c;
            if (i6 == 0 && i4 >= this.f.length) {
                fileOutputStream.write(bArr, i5, i4);
                return;
            }
            int min = Math.min(i4, this.f.length - i6);
            System.arraycopy(bArr, i5, this.f, this.h, min);
            int i7 = this.h + min;
            this.h = i7;
            i3 += min;
            byte[] bArr2 = this.f;
            if (i7 == bArr2.length && i7 > 0) {
                fileOutputStream.write(bArr2, 0, i7);
                this.h = 0;
            }
        } while (i3 < i2);
    }
}
