package com.nostra13.universalimageloader.core.assist;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class LoadedFrom {

    /* renamed from: c, reason: collision with root package name */
    public static final LoadedFrom f20989c;
    public static final LoadedFrom f;
    public static final LoadedFrom g;
    public static final /* synthetic */ LoadedFrom[] h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.LoadedFrom] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.LoadedFrom] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.LoadedFrom] */
    static {
        ?? r0 = new Enum("NETWORK", 0);
        f20989c = r0;
        ?? r1 = new Enum("DISC_CACHE", 1);
        f = r1;
        ?? r3 = new Enum("MEMORY_CACHE", 2);
        g = r3;
        h = new LoadedFrom[]{r0, r1, r3};
    }

    public static LoadedFrom valueOf(String str) {
        return (LoadedFrom) Enum.valueOf(LoadedFrom.class, str);
    }

    public static LoadedFrom[] values() {
        return (LoadedFrom[]) h.clone();
    }
}
