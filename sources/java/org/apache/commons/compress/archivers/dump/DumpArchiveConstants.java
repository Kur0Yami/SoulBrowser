package org.apache.commons.compress.archivers.dump;

/* loaded from: classes4.dex */
public final class DumpArchiveConstants {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class COMPRESSION_TYPE {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ COMPRESSION_TYPE[] f22261c = {new Enum("ZLIB", 0), new Enum("BZLIB", 1), new Enum("LZO", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        COMPRESSION_TYPE EF5;

        public static COMPRESSION_TYPE valueOf(String str) {
            return (COMPRESSION_TYPE) Enum.valueOf(COMPRESSION_TYPE.class, str);
        }

        public static COMPRESSION_TYPE[] values() {
            return (COMPRESSION_TYPE[]) f22261c.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class SEGMENT_TYPE {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ SEGMENT_TYPE[] f22262c = {new Enum("TAPE", 0), new Enum("INODE", 1), new Enum("BITS", 2), new Enum("ADDR", 3), new Enum("END", 4), new Enum("CLRI", 5)};

        /* JADX INFO: Fake field, exist only in values array */
        SEGMENT_TYPE EF5;

        public static SEGMENT_TYPE valueOf(String str) {
            return (SEGMENT_TYPE) Enum.valueOf(SEGMENT_TYPE.class, str);
        }

        public static SEGMENT_TYPE[] values() {
            return (SEGMENT_TYPE[]) f22262c.clone();
        }
    }
}
