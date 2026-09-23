package com.bumptech.glide;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Priority {

    /* renamed from: c, reason: collision with root package name */
    public static final Priority f2088c;
    public static final Priority f;
    public static final Priority g;
    public static final Priority h;
    public static final /* synthetic */ Priority[] i;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.bumptech.glide.Priority] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.bumptech.glide.Priority] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.bumptech.glide.Priority] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.bumptech.glide.Priority] */
    static {
        ?? r0 = new Enum("IMMEDIATE", 0);
        f2088c = r0;
        ?? r1 = new Enum("HIGH", 1);
        f = r1;
        ?? r3 = new Enum("NORMAL", 2);
        g = r3;
        ?? r5 = new Enum("LOW", 3);
        h = r5;
        i = new Priority[]{r0, r1, r3, r5};
    }

    public static Priority valueOf(String str) {
        return (Priority) Enum.valueOf(Priority.class, str);
    }

    public static Priority[] values() {
        return (Priority[]) i.clone();
    }
}
