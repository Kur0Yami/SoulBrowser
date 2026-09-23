package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.RandomAccessFile;
import kotlin.UByte;
import net.lingala.zip4j.crypto.AESDecrypter;
import net.lingala.zip4j.crypto.IDecrypter;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.unzip.UnzipEngine;

/* loaded from: classes4.dex */
public class PartInputStream extends BaseInputStream {

    /* renamed from: c, reason: collision with root package name */
    public RandomAccessFile f21992c;
    public final long g;
    public final UnzipEngine h;
    public final IDecrypter i;
    public final boolean m;
    public final byte[] j = new byte[1];
    public final byte[] k = new byte[16];
    public int l = 0;
    public int n = -1;
    public long f = 0;

    public PartInputStream(RandomAccessFile randomAccessFile, long j, UnzipEngine unzipEngine) {
        this.m = false;
        this.f21992c = randomAccessFile;
        this.h = unzipEngine;
        this.i = unzipEngine.e;
        this.g = j;
        FileHeader fileHeader = unzipEngine.b;
        this.m = fileHeader.r && fileHeader.s == 99;
    }

    public final void a() {
        IDecrypter iDecrypter;
        if (this.m && (iDecrypter = this.i) != null && (iDecrypter instanceof AESDecrypter) && ((AESDecrypter) iDecrypter).i == null) {
            byte[] bArr = new byte[10];
            int read = this.f21992c.read(bArr);
            UnzipEngine unzipEngine = this.h;
            if (read != 10) {
                if (unzipEngine.f22016a.j) {
                    this.f21992c.close();
                    RandomAccessFile g = unzipEngine.g();
                    this.f21992c = g;
                    g.read(bArr, read, 10 - read);
                } else {
                    throw new IOException("Error occured while reading stored AES authentication bytes");
                }
            }
            ((AESDecrypter) unzipEngine.e).i = bArr;
        }
    }

    @Override // net.lingala.zip4j.io.BaseInputStream, java.io.InputStream
    public int available() {
        long j = this.g - this.f;
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j;
    }

    public UnzipEngine b() {
        return this.h;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f21992c.close();
    }

    @Override // net.lingala.zip4j.io.BaseInputStream, java.io.InputStream
    public int read() {
        byte b;
        if (this.f < this.g) {
            if (this.m) {
                int i = this.l;
                byte[] bArr = this.k;
                if (i == 0 || i == 16) {
                    if (read(bArr) != -1) {
                        this.l = 0;
                    }
                }
                int i2 = this.l;
                this.l = i2 + 1;
                b = bArr[i2];
                return b & UByte.MAX_VALUE;
            }
            byte[] bArr2 = this.j;
            if (read(bArr2, 0, 1) != -1) {
                b = bArr2[0];
                return b & UByte.MAX_VALUE;
            }
        }
        return -1;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        if (j >= 0) {
            long j2 = this.f;
            long j3 = this.g;
            if (j > j3 - j2) {
                j = j3 - j2;
            }
            this.f = j2 + j;
            return j;
        }
        throw new IllegalArgumentException();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        long j = i2;
        long j2 = this.g;
        long j3 = this.f;
        long j4 = j2 - j3;
        if (j > j4 && (i2 = (int) j4) == 0) {
            a();
            return -1;
        }
        if ((this.h.e instanceof AESDecrypter) && j3 + i2 < j2 && (i3 = i2 % 16) != 0) {
            i2 -= i3;
        }
        synchronized (this.f21992c) {
            try {
                int read = this.f21992c.read(bArr, i, i2);
                this.n = read;
                if (read < i2 && this.h.f22016a.j) {
                    this.f21992c.close();
                    RandomAccessFile g = this.h.g();
                    this.f21992c = g;
                    if (this.n < 0) {
                        this.n = 0;
                    }
                    int i4 = this.n;
                    int read2 = g.read(bArr, i4, i2 - i4);
                    if (read2 > 0) {
                        this.n += read2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int i5 = this.n;
        if (i5 > 0) {
            IDecrypter iDecrypter = this.i;
            if (iDecrypter != null) {
                try {
                    iDecrypter.a(bArr, i, i5);
                } catch (ZipException e) {
                    throw new IOException(e.getMessage());
                }
            }
            this.f += this.n;
        }
        if (this.f >= this.g) {
            a();
        }
        return this.n;
    }
}
