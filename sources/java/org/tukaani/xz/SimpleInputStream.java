package org.tukaani.xz;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
class SimpleInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public InputStream f22702c;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public IOException j;

    @Override // java.io.InputStream
    public final int available() {
        if (this.f22702c != null) {
            IOException iOException = this.j;
            if (iOException == null) {
                return this.g;
            }
            throw iOException;
        }
        throw new IOException("Stream closed");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.f22702c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.f22702c = null;
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

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0067, code lost:
    
        r8.h += r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006e, code lost:
    
        if (r1 <= 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0071, code lost:
    
        return -1;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(byte[] r9, int r10, int r11) {
        /*
            r8 = this;
            if (r10 < 0) goto L7e
            if (r11 < 0) goto L7e
            int r0 = r10 + r11
            if (r0 < 0) goto L7e
            int r1 = r9.length
            if (r0 > r1) goto L7e
            r0 = 0
            if (r11 != 0) goto Lf
            return r0
        Lf:
            java.io.InputStream r1 = r8.f22702c
            if (r1 == 0) goto L76
            java.io.IOException r1 = r8.j
            if (r1 != 0) goto L75
            r1 = r0
        L18:
            int r2 = r8.g     // Catch: java.io.IOException -> L41
            int r2 = java.lang.Math.min(r2, r11)     // Catch: java.io.IOException -> L41
            int r3 = r8.f     // Catch: java.io.IOException -> L41
            r4 = 0
            java.lang.System.arraycopy(r4, r3, r9, r10, r2)     // Catch: java.io.IOException -> L41
            int r3 = r8.f     // Catch: java.io.IOException -> L41
            int r3 = r3 + r2
            r8.f = r3     // Catch: java.io.IOException -> L41
            int r5 = r8.g     // Catch: java.io.IOException -> L41
            int r5 = r5 - r2
            r8.g = r5     // Catch: java.io.IOException -> L41
            int r10 = r10 + r2
            int r11 = r11 - r2
            int r1 = r1 + r2
            int r2 = r3 + r5
            int r6 = r8.h     // Catch: java.io.IOException -> L41
            int r2 = r2 + r6
            r7 = 4096(0x1000, float:5.74E-42)
            if (r2 != r7) goto L43
            int r5 = r5 + r6
            java.lang.System.arraycopy(r4, r3, r4, r0, r5)     // Catch: java.io.IOException -> L41
            r8.f = r0     // Catch: java.io.IOException -> L41
            goto L43
        L41:
            r9 = move-exception
            goto L72
        L43:
            r2 = -1
            if (r11 == 0) goto L6e
            boolean r3 = r8.i     // Catch: java.io.IOException -> L41
            if (r3 == 0) goto L4b
            goto L6e
        L4b:
            int r3 = r8.f     // Catch: java.io.IOException -> L41
            int r5 = r8.g     // Catch: java.io.IOException -> L41
            int r3 = r3 + r5
            int r5 = r8.h     // Catch: java.io.IOException -> L41
            int r3 = r3 + r5
            int r5 = 4096 - r3
            java.io.InputStream r6 = r8.f22702c     // Catch: java.io.IOException -> L41
            int r3 = r6.read(r4, r3, r5)     // Catch: java.io.IOException -> L41
            if (r3 != r2) goto L67
            r2 = 1
            r8.i = r2     // Catch: java.io.IOException -> L41
            int r2 = r8.h     // Catch: java.io.IOException -> L41
            r8.g = r2     // Catch: java.io.IOException -> L41
            r8.h = r0     // Catch: java.io.IOException -> L41
            goto L18
        L67:
            int r9 = r8.h     // Catch: java.io.IOException -> L41
            int r9 = r9 + r3
            r8.h = r9     // Catch: java.io.IOException -> L41
            r9 = 0
            throw r9
        L6e:
            if (r1 <= 0) goto L71
            return r1
        L71:
            return r2
        L72:
            r8.j = r9
            throw r9
        L75:
            throw r1
        L76:
            org.tukaani.xz.XZIOException r9 = new org.tukaani.xz.XZIOException
            java.lang.String r10 = "Stream closed"
            r9.<init>(r10)
            throw r9
        L7e:
            java.lang.IndexOutOfBoundsException r9 = new java.lang.IndexOutOfBoundsException
            r9.<init>()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.tukaani.xz.SimpleInputStream.read(byte[], int, int):int");
    }
}
