package org.apache.commons.compress.archivers.dump;

import org.apache.commons.compress.archivers.ArchiveEntry;

/* loaded from: classes4.dex */
public class DumpArchiveEntry implements ArchiveEntry {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class PERMISSION {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ PERMISSION[] f22263c = {new Enum("SETUID", 0), new Enum("SETGUI", 1), new Enum("STICKY", 2), new Enum("USER_READ", 3), new Enum("USER_WRITE", 4), new Enum("USER_EXEC", 5), new Enum("GROUP_READ", 6), new Enum("GROUP_WRITE", 7), new Enum("GROUP_EXEC", 8), new Enum("WORLD_READ", 9), new Enum("WORLD_WRITE", 10), new Enum("WORLD_EXEC", 11)};

        /* JADX INFO: Fake field, exist only in values array */
        PERMISSION EF5;

        public static PERMISSION valueOf(String str) {
            return (PERMISSION) Enum.valueOf(PERMISSION.class, str);
        }

        public static PERMISSION[] values() {
            return (PERMISSION[]) f22263c.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class TYPE {

        /* renamed from: c, reason: collision with root package name */
        public static final TYPE f22264c;
        public static final /* synthetic */ TYPE[] f;

        /* JADX INFO: Fake field, exist only in values array */
        TYPE EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, org.apache.commons.compress.archivers.dump.DumpArchiveEntry$TYPE] */
        static {
            Enum r0 = new Enum("WHITEOUT", 0);
            Enum r1 = new Enum("SOCKET", 1);
            Enum r3 = new Enum("LINK", 2);
            Enum r5 = new Enum("FILE", 3);
            Enum r7 = new Enum("BLKDEV", 4);
            ?? r9 = new Enum("DIRECTORY", 5);
            f22264c = r9;
            f = new TYPE[]{r0, r1, r3, r5, r7, r9, new Enum("CHRDEV", 6), new Enum("FIFO", 7), new Enum("UNKNOWN", 8)};
        }

        public static TYPE valueOf(String str) {
            return (TYPE) Enum.valueOf(TYPE.class, str);
        }

        public static TYPE[] values() {
            return (TYPE[]) f.clone();
        }
    }

    /* loaded from: classes4.dex */
    public static class TapeSegmentHeader {
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            return false;
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
        return 0;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public final boolean isDirectory() {
        return false;
    }

    public final String toString() {
        return null;
    }
}
