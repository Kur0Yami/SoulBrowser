package net.lingala.zip4j.io;

import android.support.v4.media.a;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.UByte;
import kotlin.io.ConstantsKt;
import net.lingala.zip4j.model.LocalFileHeader;
import net.lingala.zip4j.unzip.UnzipEngine;

/* loaded from: classes4.dex */
public class InflaterInputStream extends PartInputStream {
    public final Inflater o;
    public final byte[] p;
    public final byte[] q;
    public final UnzipEngine r;
    public long s;
    public final long t;

    public InflaterInputStream(RandomAccessFile randomAccessFile, long j, UnzipEngine unzipEngine) {
        super(randomAccessFile, j, unzipEngine);
        this.q = new byte[1];
        this.o = new Inflater(true);
        this.p = new byte[ConstantsKt.DEFAULT_BLOCK_SIZE];
        this.r = unzipEngine;
        this.s = 0L;
        this.t = unzipEngine.b.j;
    }

    @Override // net.lingala.zip4j.io.PartInputStream, net.lingala.zip4j.io.BaseInputStream, java.io.InputStream
    public final int available() {
        return !this.o.finished() ? 1 : 0;
    }

    @Override // net.lingala.zip4j.io.PartInputStream
    public final UnzipEngine b() {
        return this.h;
    }

    @Override // net.lingala.zip4j.io.PartInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.o.end();
        super.close();
    }

    @Override // net.lingala.zip4j.io.PartInputStream, net.lingala.zip4j.io.BaseInputStream, java.io.InputStream
    public final int read() {
        byte[] bArr = this.q;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & UByte.MAX_VALUE;
    }

    @Override // net.lingala.zip4j.io.PartInputStream, java.io.InputStream
    public final long skip(long j) {
        if (j >= 0) {
            int min = (int) Math.min(j, 2147483647L);
            byte[] bArr = new byte[512];
            int i = 0;
            while (i < min) {
                int i2 = min - i;
                if (i2 > 512) {
                    i2 = 512;
                }
                int read = read(bArr, 0, i2);
                if (read == -1) {
                    break;
                }
                i += read;
            }
            return i;
        }
        throw new IllegalArgumentException("negative skip length");
    }

    @Override // net.lingala.zip4j.io.PartInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        if (bArr != null) {
            return read(bArr, 0, bArr.length);
        }
        throw new NullPointerException("input buffer is null");
    }

    @Override // net.lingala.zip4j.io.PartInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        String str;
        Inflater inflater = this.o;
        if (bArr != null) {
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            if (i2 == 0) {
                return 0;
            }
            try {
                if (this.s >= this.t) {
                    do {
                    } while (super.read(new byte[1024], 0, 1024) != -1);
                    a();
                    return -1;
                }
                while (true) {
                    int inflate = inflater.inflate(bArr, i, i2);
                    if (inflate == 0) {
                        if (inflater.finished() || inflater.needsDictionary()) {
                            break;
                        }
                        if (inflater.needsInput()) {
                            byte[] bArr2 = this.p;
                            int read = super.read(bArr2, 0, bArr2.length);
                            if (read != -1) {
                                inflater.setInput(bArr2, 0, read);
                            } else {
                                throw new EOFException("Unexpected end of ZLIB input stream");
                            }
                        }
                    } else {
                        this.s += inflate;
                        return inflate;
                    }
                }
                do {
                } while (super.read(new byte[1024], 0, 1024) != -1);
                a();
                return -1;
            } catch (DataFormatException e) {
                if (e.getMessage() != null) {
                    str = e.getMessage();
                } else {
                    str = "Invalid ZLIB data format";
                }
                UnzipEngine unzipEngine = this.r;
                if (unzipEngine != null) {
                    LocalFileHeader localFileHeader = unzipEngine.d;
                    if (localFileHeader.m && localFileHeader.n == 0) {
                        str = a.k(str, " - Wrong Password?");
                    }
                }
                throw new IOException(str);
            }
        }
        throw new NullPointerException("input buffer is null");
    }
}
