package org.jsoup.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
import org.jsoup.helper.Validate;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class SimpleBufferedInput extends FilterInputStream {
    public static final SoftPool j = new SoftPool(new b(0));

    /* renamed from: c, reason: collision with root package name */
    public byte[] f22551c;
    public int f;
    public int g;
    public int h;
    public boolean i;

    public SimpleBufferedInput(InputStream inputStream) {
        super(inputStream);
        this.h = -1;
        this.i = false;
        if (inputStream == null) {
            this.i = true;
        }
    }

    public final void a() {
        if (!this.i) {
            if (this.f22551c == null) {
                this.f22551c = (byte[]) j.borrow();
            }
            int i = this.h;
            if (i < 0) {
                this.f = 0;
            } else {
                int i2 = this.f;
                if (i2 >= 8192) {
                    if (i > 0) {
                        int i3 = i2 - i;
                        byte[] bArr = this.f22551c;
                        System.arraycopy(bArr, i, bArr, 0, i3);
                        this.f = i3;
                        this.h = 0;
                    } else {
                        this.h = -1;
                        this.f = 0;
                    }
                }
            }
            this.g = this.f;
            InputStream inputStream = ((FilterInputStream) this).in;
            byte[] bArr2 = this.f22551c;
            int i4 = this.f;
            int read = inputStream.read(bArr2, i4, bArr2.length - i4);
            if (read > 0) {
                this.g = this.f + read;
                while (this.f22551c.length - this.g > 0 && ((FilterInputStream) this).in.available() >= 1) {
                    InputStream inputStream2 = ((FilterInputStream) this).in;
                    byte[] bArr3 = this.f22551c;
                    int i5 = this.g;
                    read = inputStream2.read(bArr3, i5, bArr3.length - i5);
                    if (read <= 0) {
                        break;
                    } else {
                        this.g += read;
                    }
                }
            }
            if (read == -1) {
                this.i = true;
                super.close();
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i;
        if (this.f22551c != null && (i = this.g - this.f) > 0) {
            return i;
        }
        if (this.i) {
            return 0;
        }
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (((FilterInputStream) this).in != null) {
            super.close();
        }
        byte[] bArr = this.f22551c;
        if (bArr == null) {
            return;
        }
        j.release(bArr);
        this.f22551c = null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        if (i <= 8192) {
            this.h = this.f;
            return;
        }
        throw new IllegalArgumentException("Read-ahead limit is greater than buffer size");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (this.f >= this.g) {
            a();
            if (this.f >= this.g) {
                return -1;
            }
        }
        Validate.notNull(this.f22551c);
        byte[] bArr = this.f22551c;
        int i = this.f;
        this.f = i + 1;
        return bArr[i] & UByte.MAX_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        int i = this.h;
        if (i >= 0) {
            this.f = i;
            return;
        }
        throw new IOException("Resetting to invalid mark");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        Validate.notNull(bArr);
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.g - this.f;
        if (i3 <= 0) {
            if (!this.i && this.h < 0) {
                int read = ((FilterInputStream) this).in.read(bArr, i, i2);
                if (read == -1) {
                    this.i = true;
                    super.close();
                }
                return read;
            }
            a();
            i3 = this.g - this.f;
        }
        int min = Math.min(i3, i2);
        if (min <= 0) {
            return -1;
        }
        Validate.notNull(this.f22551c);
        System.arraycopy(this.f22551c, this.f, bArr, i, min);
        this.f += min;
        return min;
    }
}
