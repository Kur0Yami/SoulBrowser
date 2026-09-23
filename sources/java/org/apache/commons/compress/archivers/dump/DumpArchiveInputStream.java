package org.apache.commons.compress.archivers.dump;

import java.util.Comparator;
import org.apache.commons.compress.archivers.ArchiveInputStream;

/* loaded from: classes4.dex */
public class DumpArchiveInputStream extends ArchiveInputStream {

    /* renamed from: org.apache.commons.compress.archivers.dump.DumpArchiveInputStream$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass1 implements Comparator<DumpArchiveEntry> {
        @Override // java.util.Comparator
        public final int compare(DumpArchiveEntry dumpArchiveEntry, DumpArchiveEntry dumpArchiveEntry2) {
            DumpArchiveEntry dumpArchiveEntry3 = dumpArchiveEntry;
            DumpArchiveEntry dumpArchiveEntry4 = dumpArchiveEntry2;
            if (dumpArchiveEntry3 == null && dumpArchiveEntry4 == null) {
                return 0;
            }
            if (dumpArchiveEntry3 == null) {
                return 1;
            }
            if (dumpArchiveEntry4 == null) {
                return -1;
            }
            return Integer.MAX_VALUE;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        return -1;
    }
}
