package com.google.api.client.http;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* loaded from: classes3.dex */
final class GzipSupport {

    /* loaded from: classes3.dex */
    public static final class OptimisticAvailabilityInputStream extends FilterInputStream {
        private int lastRead;

        public OptimisticAvailabilityInputStream(InputStream inputStream) {
            super(inputStream);
            this.lastRead = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() {
            if (this.lastRead > -1) {
                return Integer.MAX_VALUE;
            }
            return 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() {
            int read = super.read();
            this.lastRead = read;
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr) {
            int read = super.read(bArr);
            this.lastRead = read;
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = super.read(bArr, i, i2);
            this.lastRead = read;
            return read;
        }
    }

    private GzipSupport() {
    }

    public static GZIPInputStream newGzipInputStream(InputStream inputStream) {
        return new GZIPInputStream(new OptimisticAvailabilityInputStream(inputStream));
    }
}
