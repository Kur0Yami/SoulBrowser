package org.apache.commons.compress.archivers.cpio;

import org.apache.commons.compress.archivers.ArchiveEntry;

/* loaded from: classes4.dex */
public class CpioArchiveEntry implements CpioConstants, ArchiveEntry {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public final String getName() {
        return null;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public final long getSize() {
        return 0L;
    }

    public final int hashCode() {
        return 31 + 0;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public final boolean isDirectory() {
        return false;
    }
}
