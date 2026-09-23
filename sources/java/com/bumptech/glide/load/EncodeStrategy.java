package com.bumptech.glide.load;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class EncodeStrategy {

    /* renamed from: c, reason: collision with root package name */
    public static final EncodeStrategy f2148c;
    public static final EncodeStrategy f;
    public static final EncodeStrategy g;
    public static final /* synthetic */ EncodeStrategy[] h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.bumptech.glide.load.EncodeStrategy] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.bumptech.glide.load.EncodeStrategy] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.bumptech.glide.load.EncodeStrategy] */
    static {
        ?? r0 = new Enum("SOURCE", 0);
        f2148c = r0;
        ?? r1 = new Enum("TRANSFORMED", 1);
        f = r1;
        ?? r3 = new Enum("NONE", 2);
        g = r3;
        h = new EncodeStrategy[]{r0, r1, r3};
    }

    public static EncodeStrategy valueOf(String str) {
        return (EncodeStrategy) Enum.valueOf(EncodeStrategy.class, str);
    }

    public static EncodeStrategy[] values() {
        return (EncodeStrategy[]) h.clone();
    }
}
