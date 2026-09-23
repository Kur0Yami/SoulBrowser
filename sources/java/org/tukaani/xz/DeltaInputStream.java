package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public class DeltaInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public InputStream f22699c;
    public IOException f;

    @Override // java.io.InputStream
    public final int available() {
        InputStream inputStream = this.f22699c;
        if (inputStream != null) {
            IOException iOException = this.f;
            if (iOException == null) {
                return inputStream.available();
            }
            throw iOException;
        }
        throw new IOException("Stream closed");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.f22699c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f22699c = null;
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
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = this.f22699c;
        if (inputStream != null) {
            IOException iOException = this.f;
            if (iOException == null) {
                try {
                    if (inputStream.read(bArr, i, i2) == -1) {
                        return -1;
                    }
                    throw null;
                } catch (IOException e) {
                    this.f = e;
                    throw e;
                }
            }
            throw iOException;
        }
        throw new IOException("Stream closed");
    }
}
