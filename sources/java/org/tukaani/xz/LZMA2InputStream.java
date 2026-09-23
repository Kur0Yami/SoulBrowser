package org.tukaani.xz;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.tukaani.xz.lzma.LZMADecoder;

/* loaded from: classes4.dex */
public class LZMA2InputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public DataInputStream f22700c;
    public LZMADecoder f;
    public int g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public IOException l;

    public final void a() {
        int readUnsignedByte = this.f22700c.readUnsignedByte();
        if (readUnsignedByte == 0) {
            this.k = true;
            return;
        }
        if (readUnsignedByte < 224 && readUnsignedByte != 1) {
            if (!this.i) {
                if (readUnsignedByte >= 128) {
                    this.h = true;
                    int i = (readUnsignedByte & 31) << 16;
                    this.g = i;
                    this.g = this.f22700c.readUnsignedShort() + 1 + i;
                    this.f22700c.readUnsignedShort();
                    if (readUnsignedByte >= 192) {
                        this.j = false;
                        int readUnsignedByte2 = this.f22700c.readUnsignedByte();
                        if (readUnsignedByte2 <= 224) {
                            int i2 = readUnsignedByte2 / 45;
                            int i3 = readUnsignedByte2 - (i2 * 45);
                            int i4 = i3 / 9;
                            int i5 = i3 - (i4 * 9);
                            if (i5 + i4 <= 4) {
                                this.f = new LZMADecoder(null, null, i5, i4, i2);
                            } else {
                                throw new CorruptedInputException();
                            }
                        } else {
                            throw new CorruptedInputException();
                        }
                    } else if (!this.j) {
                        if (readUnsignedByte >= 160) {
                            this.f.a();
                        }
                    } else {
                        throw new CorruptedInputException();
                    }
                    throw null;
                }
                if (readUnsignedByte <= 2) {
                    this.h = false;
                    this.g = this.f22700c.readUnsignedShort() + 1;
                    return;
                }
                throw new CorruptedInputException();
            }
            throw new CorruptedInputException();
        }
        this.j = true;
        this.i = false;
        throw null;
    }

    @Override // java.io.InputStream
    public final int available() {
        DataInputStream dataInputStream = this.f22700c;
        if (dataInputStream != null) {
            IOException iOException = this.l;
            if (iOException == null) {
                if (this.h) {
                    return this.g;
                }
                return Math.min(this.g, dataInputStream.available());
            }
            throw iOException;
        }
        throw new IOException("Stream closed");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        DataInputStream dataInputStream = this.f22700c;
        if (dataInputStream != null) {
            try {
                dataInputStream.close();
            } finally {
                this.f22700c = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        if (read(null, 0, 1) == -1) {
            return -1;
        }
        throw null;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.f22700c != null) {
            IOException iOException = this.l;
            if (iOException == null) {
                if (this.k) {
                    return -1;
                }
                if (i2 <= 0) {
                    return 0;
                }
                try {
                    if (this.g == 0) {
                        a();
                        if (this.k) {
                            return -1;
                        }
                    }
                    Math.min(this.g, i2);
                    if (!this.h) {
                        throw null;
                    }
                    throw null;
                } catch (IOException e) {
                    this.l = e;
                    throw e;
                }
            }
            throw iOException;
        }
        throw new IOException("Stream closed");
    }
}
