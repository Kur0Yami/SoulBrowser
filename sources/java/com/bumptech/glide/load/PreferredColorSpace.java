package com.bumptech.glide.load;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class PreferredColorSpace {

    /* renamed from: c, reason: collision with root package name */
    public static final PreferredColorSpace f2163c;
    public static final /* synthetic */ PreferredColorSpace[] f;

    /* JADX INFO: Fake field, exist only in values array */
    PreferredColorSpace EF0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.bumptech.glide.load.PreferredColorSpace] */
    static {
        Enum r0 = new Enum("SRGB", 0);
        ?? r1 = new Enum("DISPLAY_P3", 1);
        f2163c = r1;
        f = new PreferredColorSpace[]{r0, r1};
    }

    public static PreferredColorSpace valueOf(String str) {
        return (PreferredColorSpace) Enum.valueOf(PreferredColorSpace.class, str);
    }

    public static PreferredColorSpace[] values() {
        return (PreferredColorSpace[]) f.clone();
    }
}
