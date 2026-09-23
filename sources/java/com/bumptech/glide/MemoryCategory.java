package com.bumptech.glide;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class MemoryCategory {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ MemoryCategory[] f2087c = {new Enum("LOW", 0), new Enum("NORMAL", 1), new Enum("HIGH", 2)};

    /* JADX INFO: Fake field, exist only in values array */
    MemoryCategory EF5;

    public static MemoryCategory valueOf(String str) {
        return (MemoryCategory) Enum.valueOf(MemoryCategory.class, str);
    }

    public static MemoryCategory[] values() {
        return (MemoryCategory[]) f2087c.clone();
    }
}
