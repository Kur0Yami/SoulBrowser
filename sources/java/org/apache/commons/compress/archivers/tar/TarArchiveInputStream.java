package org.apache.commons.compress.archivers.tar;

import android.support.v4.media.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.archivers.zip.ZipEncodingHelper;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes4.dex */
public class TarArchiveInputStream extends ArchiveInputStream {
    public long k;
    public long l;
    public final InputStream m;
    public TarArchiveEntry n;
    public final ZipEncoding o;
    public final byte[] g = new byte[256];
    public HashMap p = new HashMap();
    public boolean j = false;
    public final int h = 512;
    public final int i = 10240;

    public TarArchiveInputStream(InputStream inputStream, String str) {
        this.m = inputStream;
        this.o = ZipEncodingHelper.a(str);
    }

    @Override // java.io.InputStream
    public final int available() {
        if (i()) {
            return 0;
        }
        long j = this.k;
        long j2 = this.l;
        if (j - j2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) (j - j2);
    }

    public final void b(HashMap hashMap) {
        for (Map.Entry entry : hashMap.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if ("path".equals(str)) {
                this.n.a(str2);
            } else if ("linkpath".equals(str)) {
                this.n.getClass();
            } else if ("gid".equals(str)) {
                TarArchiveEntry tarArchiveEntry = this.n;
                Long.parseLong(str2);
                tarArchiveEntry.getClass();
            } else if ("gname".equals(str)) {
                this.n.getClass();
            } else if ("uid".equals(str)) {
                TarArchiveEntry tarArchiveEntry2 = this.n;
                Long.parseLong(str2);
                tarArchiveEntry2.getClass();
            } else if ("uname".equals(str)) {
                this.n.getClass();
            } else if ("size".equals(str)) {
                TarArchiveEntry tarArchiveEntry3 = this.n;
                long parseLong = Long.parseLong(str2);
                if (parseLong >= 0) {
                    tarArchiveEntry3.f = parseLong;
                } else {
                    tarArchiveEntry3.getClass();
                    throw new IllegalArgumentException(a.h(parseLong, "Size is out of range: "));
                }
            } else if ("mtime".equals(str)) {
                TarArchiveEntry tarArchiveEntry4 = this.n;
                Double.parseDouble(str2);
                tarArchiveEntry4.getClass();
            } else if ("SCHILY.devminor".equals(str)) {
                TarArchiveEntry tarArchiveEntry5 = this.n;
                int parseInt = Integer.parseInt(str2);
                tarArchiveEntry5.getClass();
                if (parseInt < 0) {
                    throw new IllegalArgumentException(a.e(parseInt, "Minor device number is out of range: "));
                }
            } else if ("SCHILY.devmajor".equals(str)) {
                TarArchiveEntry tarArchiveEntry6 = this.n;
                int parseInt2 = Integer.parseInt(str2);
                tarArchiveEntry6.getClass();
                if (parseInt2 < 0) {
                    throw new IllegalArgumentException(a.e(parseInt2, "Major device number is out of range: "));
                }
            } else if ("GNU.sparse.size".equals(str)) {
                TarArchiveEntry tarArchiveEntry7 = this.n;
                tarArchiveEntry7.getClass();
                Integer.parseInt((String) hashMap.get("GNU.sparse.size"));
                if (hashMap.containsKey("GNU.sparse.name")) {
                    tarArchiveEntry7.f22271c = (String) hashMap.get("GNU.sparse.name");
                }
            } else if ("GNU.sparse.realsize".equals(str)) {
                TarArchiveEntry tarArchiveEntry8 = this.n;
                tarArchiveEntry8.getClass();
                Integer.parseInt((String) hashMap.get("GNU.sparse.realsize"));
                tarArchiveEntry8.f22271c = (String) hashMap.get("GNU.sparse.name");
            } else if ("SCHILY.filetype".equals(str) && "sparse".equals(str2)) {
                this.n.getClass();
                if (hashMap.containsKey("SCHILY.realsize")) {
                    Long.parseLong((String) hashMap.get("SCHILY.realsize"));
                }
            }
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.m.close();
    }

    public final byte[] d() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            byte[] bArr = this.g;
            int read = read(bArr);
            if (read < 0) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
        e();
        if (this.n == null) {
            return null;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        int length = byteArray.length;
        while (length > 0 && byteArray[length - 1] == 0) {
            length--;
        }
        if (length != byteArray.length) {
            byte[] bArr2 = new byte[length];
            System.arraycopy(byteArray, 0, bArr2, 0, length);
            return bArr2;
        }
        return byteArray;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00be, code lost:
    
        if (r0.h != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c0, code lost:
    
        r0 = f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c4, code lost:
    
        if (r0 != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d0, code lost:
    
        if (new org.apache.commons.compress.archivers.tar.TarArchiveSparseEntry(r0).f22273c != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c6, code lost:
    
        r13.n = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.commons.compress.archivers.tar.TarArchiveEntry e() {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.tar.TarArchiveInputStream.e():org.apache.commons.compress.archivers.tar.TarArchiveEntry");
    }

    public final byte[] f() {
        boolean z;
        int i = this.h;
        byte[] bArr = new byte[i];
        InputStream inputStream = this.m;
        boolean z2 = false;
        int a2 = IOUtils.a(inputStream, bArr, 0, i);
        a(a2);
        if (a2 != i) {
            bArr = null;
        }
        if (bArr != null) {
            for (int i2 = 0; i2 < i; i2++) {
                if (bArr[i2] != 0) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        this.j = z;
        if (z && bArr != null) {
            boolean markSupported = inputStream.markSupported();
            if (markSupported) {
                inputStream.mark(i);
            }
            try {
                byte[] bArr2 = new byte[i];
                int a3 = IOUtils.a(inputStream, bArr2, 0, i);
                a(a3);
                if (a3 != i) {
                    bArr2 = null;
                }
                if (bArr2 != null) {
                    for (int i3 = 0; i3 < i; i3++) {
                        if (bArr2[i3] != 0) {
                            break;
                        }
                    }
                }
                z2 = true;
                if (!z2 && markSupported) {
                }
                long j = this.f;
                long j2 = this.i;
                long j3 = j % j2;
                if (j3 > 0) {
                    a(IOUtils.b(inputStream, j2 - j3));
                }
                return null;
            } finally {
                if (markSupported) {
                    this.f -= i;
                    inputStream.reset();
                }
            }
        }
        return bArr;
    }

    public final boolean i() {
        TarArchiveEntry tarArchiveEntry = this.n;
        if (tarArchiveEntry != null && tarArchiveEntry.isDirectory()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005f, code lost:
    
        r4 = r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.HashMap j(org.apache.commons.compress.archivers.tar.TarArchiveInputStream r10) {
        /*
            r9 = this;
            java.util.HashMap r0 = new java.util.HashMap
            java.util.HashMap r1 = r9.p
            r0.<init>(r1)
        L7:
            r1 = 0
            r2 = r1
            r3 = r2
        La:
            int r4 = r10.read()
            r5 = -1
            if (r4 == r5) goto L67
            r6 = 1
            int r2 = r2 + r6
            r7 = 10
            if (r4 != r7) goto L18
            goto L67
        L18:
            r7 = 32
            if (r4 != r7) goto L61
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream
            r4.<init>()
        L21:
            int r7 = r10.read()
            if (r7 == r5) goto L5f
            int r2 = r2 + r6
            r8 = 61
            if (r7 != r8) goto L5a
            java.lang.String r8 = "UTF-8"
            java.lang.String r4 = r4.toString(r8)
            int r3 = r3 - r2
            if (r3 != r6) goto L39
            r0.remove(r4)
            goto L5f
        L39:
            byte[] r2 = new byte[r3]
            int r6 = org.apache.commons.compress.utils.IOUtils.a(r10, r2, r1, r3)
            if (r6 != r3) goto L4c
            java.lang.String r6 = new java.lang.String
            int r3 = r3 + (-1)
            r6.<init>(r2, r1, r3, r8)
            r0.put(r4, r6)
            goto L5f
        L4c:
            java.io.IOException r10 = new java.io.IOException
            java.lang.String r0 = "Failed to read Paxheader. Expected "
            java.lang.String r1 = " bytes, read "
            java.lang.String r0 = androidx.work.impl.workers.a.s(r0, r3, r6, r1)
            r10.<init>(r0)
            throw r10
        L5a:
            byte r7 = (byte) r7
            r4.write(r7)
            goto L21
        L5f:
            r4 = r7
            goto L67
        L61:
            int r3 = r3 * 10
            int r4 = r4 + (-48)
            int r3 = r3 + r4
            goto La
        L67:
            if (r4 != r5) goto L7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.tar.TarArchiveInputStream.j(org.apache.commons.compress.archivers.tar.TarArchiveInputStream):java.util.HashMap");
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.j || i() || this.l >= this.k) {
            return -1;
        }
        if (this.n != null) {
            int min = Math.min(i2, available());
            int read = this.m.read(bArr, i, min);
            if (read == -1) {
                if (min <= 0) {
                    this.j = true;
                    return read;
                }
                throw new IOException("Truncated TAR archive");
            }
            long j = read;
            a(j);
            this.l += j;
            return read;
        }
        throw new IllegalStateException("No current tar entry");
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j <= 0 || i()) {
            return 0L;
        }
        long skip = this.m.skip(Math.min(j, this.k - this.l));
        a(skip);
        this.l += skip;
        return skip;
    }
}
