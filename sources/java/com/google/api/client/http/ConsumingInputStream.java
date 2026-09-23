package com.google.api.client.http;

import com.google.common.io.ByteStreams;
import java.io.FilterInputStream;
import java.io.InputStream;

/* loaded from: classes3.dex */
final class ConsumingInputStream extends FilterInputStream {
    private boolean closed;

    public ConsumingInputStream(InputStream inputStream) {
        super(inputStream);
        this.closed = false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.closed && ((FilterInputStream) this).in != null) {
            try {
                int i = ByteStreams.f12470a;
                do {
                } while (read(new byte[8192]) != -1);
                ((FilterInputStream) this).in.close();
            } finally {
                this.closed = true;
            }
        }
    }
}
