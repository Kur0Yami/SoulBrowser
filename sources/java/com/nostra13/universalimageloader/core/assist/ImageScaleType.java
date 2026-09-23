package com.nostra13.universalimageloader.core.assist;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class ImageScaleType {

    /* renamed from: c, reason: collision with root package name */
    public static final ImageScaleType f20987c;
    public static final ImageScaleType f;
    public static final ImageScaleType g;
    public static final ImageScaleType h;
    public static final ImageScaleType i;
    public static final /* synthetic */ ImageScaleType[] j;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.ImageScaleType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.ImageScaleType] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.ImageScaleType] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.ImageScaleType] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.ImageScaleType] */
    static {
        ?? r0 = new Enum("NONE", 0);
        f20987c = r0;
        ?? r1 = new Enum("NONE_SAFE", 1);
        f = r1;
        ?? r3 = new Enum("IN_SAMPLE_POWER_OF_2", 2);
        g = r3;
        Enum r5 = new Enum("IN_SAMPLE_INT", 3);
        ?? r7 = new Enum("EXACTLY", 4);
        h = r7;
        ?? r9 = new Enum("EXACTLY_STRETCHED", 5);
        i = r9;
        j = new ImageScaleType[]{r0, r1, r3, r5, r7, r9};
    }

    public static ImageScaleType valueOf(String str) {
        return (ImageScaleType) Enum.valueOf(ImageScaleType.class, str);
    }

    public static ImageScaleType[] values() {
        return (ImageScaleType[]) j.clone();
    }
}
