package com.bumptech.glide.load;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class DataSource {

    /* renamed from: c, reason: collision with root package name */
    public static final DataSource f2146c;
    public static final DataSource f;
    public static final DataSource g;
    public static final DataSource h;
    public static final DataSource i;
    public static final /* synthetic */ DataSource[] j;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.bumptech.glide.load.DataSource] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.bumptech.glide.load.DataSource] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.bumptech.glide.load.DataSource] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.bumptech.glide.load.DataSource] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, com.bumptech.glide.load.DataSource] */
    static {
        ?? r0 = new Enum("LOCAL", 0);
        f2146c = r0;
        ?? r1 = new Enum("REMOTE", 1);
        f = r1;
        ?? r3 = new Enum("DATA_DISK_CACHE", 2);
        g = r3;
        ?? r5 = new Enum("RESOURCE_DISK_CACHE", 3);
        h = r5;
        ?? r7 = new Enum("MEMORY_CACHE", 4);
        i = r7;
        j = new DataSource[]{r0, r1, r3, r5, r7};
    }

    public static DataSource valueOf(String str) {
        return (DataSource) Enum.valueOf(DataSource.class, str);
    }

    public static DataSource[] values() {
        return (DataSource[]) j.clone();
    }
}
