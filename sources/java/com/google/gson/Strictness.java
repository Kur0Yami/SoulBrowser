package com.google.gson;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class Strictness {

    /* renamed from: c, reason: collision with root package name */
    public static final Strictness f12675c;
    public static final Strictness f;
    public static final Strictness g;
    public static final /* synthetic */ Strictness[] h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.gson.Strictness] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.gson.Strictness] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.gson.Strictness] */
    static {
        ?? r0 = new Enum("LENIENT", 0);
        f12675c = r0;
        ?? r1 = new Enum("LEGACY_STRICT", 1);
        f = r1;
        ?? r3 = new Enum("STRICT", 2);
        g = r3;
        h = new Strictness[]{r0, r1, r3};
    }

    public static Strictness valueOf(String str) {
        return (Strictness) Enum.valueOf(Strictness.class, str);
    }

    public static Strictness[] values() {
        return (Strictness[]) h.clone();
    }
}
