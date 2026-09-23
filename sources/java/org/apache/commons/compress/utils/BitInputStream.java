package org.apache.commons.compress.utils;

import java.io.Closeable;
import java.io.InputStream;
import java.nio.ByteOrder;

/* loaded from: classes4.dex */
public class BitInputStream implements Closeable {
    public static final long[] h = new long[64];

    /* renamed from: c, reason: collision with root package name */
    public final InputStream f22327c;
    public long f;
    public int g;

    static {
        for (int i = 1; i <= 63; i++) {
            long[] jArr = h;
            jArr[i] = (jArr[i - 1] << 1) + 1;
        }
    }

    public BitInputStream(InputStream inputStream) {
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        this.f = 0L;
        this.g = 0;
        this.f22327c = inputStream;
    }

    public final long a(int i) {
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        if (i < 0 || i > 63) {
            throw new IllegalArgumentException("count must not be negative or greater than 63");
        }
        while (true) {
            int i2 = this.g;
            if (i2 < i) {
                long read = this.f22327c.read();
                if (read < 0) {
                    return read;
                }
                ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
                long j = this.f;
                int i3 = this.g;
                this.f = (read << i3) | j;
                this.g = i3 + 8;
            } else {
                ByteOrder byteOrder3 = ByteOrder.LITTLE_ENDIAN;
                long j2 = this.f;
                long j3 = h[i] & j2;
                this.f = j2 >>> i;
                this.g = i2 - i;
                return j3;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f22327c.close();
    }
}
