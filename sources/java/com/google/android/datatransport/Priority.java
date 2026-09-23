package com.google.android.datatransport;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class Priority {

    /* renamed from: c, reason: collision with root package name */
    public static final Priority f2755c;
    public static final Priority f;
    public static final Priority g;
    public static final /* synthetic */ Priority[] h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.datatransport.Priority] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.datatransport.Priority] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.android.datatransport.Priority] */
    static {
        ?? r0 = new Enum("DEFAULT", 0);
        f2755c = r0;
        ?? r1 = new Enum("VERY_LOW", 1);
        f = r1;
        ?? r3 = new Enum("HIGHEST", 2);
        g = r3;
        h = new Priority[]{r0, r1, r3};
    }

    public static Priority valueOf(String str) {
        return (Priority) Enum.valueOf(Priority.class, str);
    }

    public static Priority[] values() {
        return (Priority[]) h.clone();
    }
}
