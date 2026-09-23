package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

@Beta
@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class FileBackedOutputStream extends OutputStream {

    /* renamed from: c, reason: collision with root package name */
    public FileOutputStream f12475c;
    public MemoryOutput f;

    /* renamed from: com.google.common.io.FileBackedOutputStream$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends ByteSource {
        public final void finalize() {
            try {
                throw null;
            } catch (Throwable th) {
                th.printStackTrace(System.err);
            }
        }
    }

    /* renamed from: com.google.common.io.FileBackedOutputStream$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends ByteSource {
    }

    /* loaded from: classes3.dex */
    public static final class MemoryOutput extends ByteArrayOutputStream {
        public final byte[] a() {
            return ((ByteArrayOutputStream) this).buf;
        }

        public final int getCount() {
            return ((ByteArrayOutputStream) this).count;
        }
    }

    public final void a(int i) {
        MemoryOutput memoryOutput = this.f;
        if (memoryOutput != null && memoryOutput.getCount() + i > 0) {
            File a2 = TempFileCreator.f12482a.a();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(a2);
                fileOutputStream.write(this.f.a(), 0, this.f.getCount());
                fileOutputStream.flush();
                this.f12475c = fileOutputStream;
                this.f = null;
            } catch (IOException e) {
                a2.delete();
                throw e;
            }
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f12475c.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final synchronized void flush() {
        this.f12475c.flush();
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i) {
        a(1);
        this.f12475c.write(i);
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        a(i2);
        this.f12475c.write(bArr, i, i2);
    }
}
