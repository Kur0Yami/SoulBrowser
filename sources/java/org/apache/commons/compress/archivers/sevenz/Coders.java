package org.apache.commons.compress.archivers.sevenz;

import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
class Coders {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f22269a = null;

    /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 extends HashMap<SevenZMethod, CoderBase> {
    }

    /* loaded from: classes4.dex */
    public static class BCJDecoder extends CoderBase {

        /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$BCJDecoder$1, reason: invalid class name */
        /* loaded from: classes4.dex */
        class AnonymousClass1 extends FilterOutputStream {
            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class BZIP2Decoder extends CoderBase {
    }

    /* loaded from: classes4.dex */
    public static class CopyDecoder extends CoderBase {
    }

    /* loaded from: classes4.dex */
    public static class DeflateDecoder extends CoderBase {

        /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$DeflateDecoder$1, reason: invalid class name */
        /* loaded from: classes4.dex */
        class AnonymousClass1 extends InputStream {
            /* JADX WARN: Code restructure failed: missing block: B:5:?, code lost:
            
                throw null;
             */
            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void close() {
                /*
                    r1 = this;
                    r0 = 0
                    throw r0     // Catch: java.lang.Throwable -> L2
                L2:
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.sevenz.Coders.DeflateDecoder.AnonymousClass1.close():void");
            }

            @Override // java.io.InputStream
            public final int read() {
                throw null;
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr, int i, int i2) {
                throw null;
            }

            @Override // java.io.InputStream
            public final int read(byte[] bArr) {
                throw null;
            }
        }

        /* renamed from: org.apache.commons.compress.archivers.sevenz.Coders$DeflateDecoder$2, reason: invalid class name */
        /* loaded from: classes4.dex */
        class AnonymousClass2 extends OutputStream {
            /* JADX WARN: Code restructure failed: missing block: B:5:?, code lost:
            
                throw null;
             */
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void close() {
                /*
                    r1 = this;
                    r0 = 0
                    throw r0     // Catch: java.lang.Throwable -> L2
                L2:
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.sevenz.Coders.DeflateDecoder.AnonymousClass2.close():void");
            }

            @Override // java.io.OutputStream
            public final void write(int i) {
                throw null;
            }

            @Override // java.io.OutputStream
            public final void write(byte[] bArr) {
                throw null;
            }

            @Override // java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                throw null;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class DummyByteAddingInputStream extends FilterInputStream {
    }

    /* loaded from: classes4.dex */
    public static class LZMADecoder extends CoderBase {
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(SevenZMethod.f22270c, new Object());
        hashMap.put(SevenZMethod.f, new Object());
        hashMap.put(SevenZMethod.g, new Object());
        hashMap.put(SevenZMethod.h, new Object());
        hashMap.put(SevenZMethod.i, new Object());
        hashMap.put(SevenZMethod.j, new Object());
        hashMap.put(SevenZMethod.k, new Object());
        hashMap.put(SevenZMethod.l, new Object());
        hashMap.put(SevenZMethod.m, new Object());
        hashMap.put(SevenZMethod.n, new Object());
        hashMap.put(SevenZMethod.o, new Object());
        hashMap.put(SevenZMethod.p, new Object());
        hashMap.put(SevenZMethod.q, new Object());
    }
}
