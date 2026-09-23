package org.apache.commons.compress.compressors.snappy;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public final class FramedSnappyDialect {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ FramedSnappyDialect[] f22323c = {new Enum("STANDARD", 0), new Enum("IWORK_ARCHIVE", 1)};

    /* JADX INFO: Fake field, exist only in values array */
    FramedSnappyDialect EF5;

    public static FramedSnappyDialect valueOf(String str) {
        return (FramedSnappyDialect) Enum.valueOf(FramedSnappyDialect.class, str);
    }

    public static FramedSnappyDialect[] values() {
        return (FramedSnappyDialect[]) f22323c.clone();
    }
}
