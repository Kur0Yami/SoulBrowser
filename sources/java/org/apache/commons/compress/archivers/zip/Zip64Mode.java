package org.apache.commons.compress.archivers.zip;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes4.dex */
public final class Zip64Mode {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ Zip64Mode[] f22299c = {new Enum("Always", 0), new Enum("Never", 1), new Enum("AsNeeded", 2)};

    /* JADX INFO: Fake field, exist only in values array */
    Zip64Mode EF5;

    public static Zip64Mode valueOf(String str) {
        return (Zip64Mode) Enum.valueOf(Zip64Mode.class, str);
    }

    public static Zip64Mode[] values() {
        return (Zip64Mode[]) f22299c.clone();
    }
}
