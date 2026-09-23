package org.apache.commons.compress.archivers.sevenz;

import java.io.Closeable;
import java.io.OutputStream;
import org.apache.commons.compress.utils.CountingOutputStream;

/* loaded from: classes4.dex */
public class SevenZOutputFile implements Closeable {

    /* loaded from: classes4.dex */
    public class OutputStreamWrapper extends OutputStream {
        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            throw null;
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            int length = bArr.length;
            throw null;
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            throw null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    /* renamed from: org.apache.commons.compress.archivers.sevenz.SevenZOutputFile$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass1 extends CountingOutputStream {
        @Override // org.apache.commons.compress.utils.CountingOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public final void write(int i) {
            super.write(i);
            throw null;
        }

        @Override // org.apache.commons.compress.utils.CountingOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr) {
            super.write(bArr);
            throw null;
        }

        @Override // org.apache.commons.compress.utils.CountingOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            super.write(bArr, i, i2);
            throw null;
        }
    }
}
