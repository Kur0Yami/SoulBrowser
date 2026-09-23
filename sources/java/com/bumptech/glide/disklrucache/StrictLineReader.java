package com.bumptech.glide.disklrucache;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class StrictLineReader implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final FileInputStream f2104c;
    public final Charset f;
    public byte[] g;
    public int h;
    public int i;

    public StrictLineReader(FileInputStream fileInputStream, Charset charset) {
        if (charset != null) {
            if (charset.equals(Util.f2106a)) {
                this.f2104c = fileInputStream;
                this.f = charset;
                this.g = new byte[8192];
                return;
            }
            throw new IllegalArgumentException("Unsupported encoding");
        }
        throw null;
    }

    public final String a() {
        int i;
        synchronized (this.f2104c) {
            try {
                byte[] bArr = this.g;
                if (bArr != null) {
                    if (this.h >= this.i) {
                        int read = this.f2104c.read(bArr, 0, bArr.length);
                        if (read != -1) {
                            this.h = 0;
                            this.i = read;
                        } else {
                            throw new EOFException();
                        }
                    }
                    for (int i2 = this.h; i2 != this.i; i2++) {
                        byte[] bArr2 = this.g;
                        if (bArr2[i2] == 10) {
                            int i3 = this.h;
                            if (i2 != i3) {
                                i = i2 - 1;
                                if (bArr2[i] == 13) {
                                    String str = new String(bArr2, i3, i - i3, this.f.name());
                                    this.h = i2 + 1;
                                    return str;
                                }
                            }
                            i = i2;
                            String str2 = new String(bArr2, i3, i - i3, this.f.name());
                            this.h = i2 + 1;
                            return str2;
                        }
                    }
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((this.i - this.h) + 80) { // from class: com.bumptech.glide.disklrucache.StrictLineReader.1
                        @Override // java.io.ByteArrayOutputStream
                        public final String toString() {
                            int i4 = ((ByteArrayOutputStream) this).count;
                            if (i4 > 0 && ((ByteArrayOutputStream) this).buf[i4 - 1] == 13) {
                                i4--;
                            }
                            try {
                                return new String(((ByteArrayOutputStream) this).buf, 0, i4, StrictLineReader.this.f.name());
                            } catch (UnsupportedEncodingException e) {
                                throw new AssertionError(e);
                            }
                        }
                    };
                    while (true) {
                        byte[] bArr3 = this.g;
                        int i4 = this.h;
                        byteArrayOutputStream.write(bArr3, i4, this.i - i4);
                        this.i = -1;
                        FileInputStream fileInputStream = this.f2104c;
                        byte[] bArr4 = this.g;
                        int read2 = fileInputStream.read(bArr4, 0, bArr4.length);
                        if (read2 != -1) {
                            this.h = 0;
                            this.i = read2;
                            for (int i5 = 0; i5 != this.i; i5++) {
                                byte[] bArr5 = this.g;
                                if (bArr5[i5] == 10) {
                                    int i6 = this.h;
                                    if (i5 != i6) {
                                        byteArrayOutputStream.write(bArr5, i6, i5 - i6);
                                    }
                                    this.h = i5 + 1;
                                    return byteArrayOutputStream.toString();
                                }
                            }
                        } else {
                            throw new EOFException();
                        }
                    }
                } else {
                    throw new IOException("LineReader is closed");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f2104c) {
            try {
                if (this.g != null) {
                    this.g = null;
                    this.f2104c.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
