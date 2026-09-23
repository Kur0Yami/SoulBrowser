package com.frostwire.jlibtorrent;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class MoveFlags {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ MoveFlags[] f2605c = {new Enum("ALWAYS_REPLACE_FILES", 0), new Enum("FAIL_IF_EXIST", 1), new Enum("DONT_REPLACE", 2)};

    /* JADX INFO: Fake field, exist only in values array */
    MoveFlags EF5;

    public static MoveFlags valueOf(String str) {
        return (MoveFlags) Enum.valueOf(MoveFlags.class, str);
    }

    public static MoveFlags[] values() {
        return (MoveFlags[]) f2605c.clone();
    }
}
