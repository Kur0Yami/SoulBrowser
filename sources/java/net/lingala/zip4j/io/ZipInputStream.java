package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.unzip.UnzipEngine;

/* loaded from: classes4.dex */
public class ZipInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public final PartInputStream f21994c;

    public ZipInputStream(PartInputStream partInputStream) {
        this.f21994c = partInputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f21994c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        PartInputStream partInputStream = this.f21994c;
        try {
            partInputStream.close();
            if (partInputStream.b() != null) {
                partInputStream.b().a();
            }
        } catch (ZipException e) {
            throw new IOException(e.getMessage());
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        PartInputStream partInputStream = this.f21994c;
        int read = partInputStream.read();
        if (read != -1) {
            partInputStream.b().f.update(read);
        }
        return read;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        return this.f21994c.skip(j);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        PartInputStream partInputStream = this.f21994c;
        int read = partInputStream.read(bArr, i, i2);
        if (read > 0 && partInputStream.b() != null) {
            UnzipEngine b = partInputStream.b();
            if (bArr != null) {
                b.f.update(bArr, i, read);
                return read;
            }
            b.getClass();
        }
        return read;
    }
}
