package com.nostra13.universalimageloader.core.assist;

import android.widget.ImageView;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class ViewScaleType {

    /* renamed from: c, reason: collision with root package name */
    public static final ViewScaleType f20991c;
    public static final ViewScaleType f;
    public static final /* synthetic */ ViewScaleType[] g;

    /* renamed from: com.nostra13.universalimageloader.core.assist.ViewScaleType$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f20992a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f20992a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20992a[ImageView.ScaleType.FIT_XY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20992a[ImageView.ScaleType.FIT_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20992a[ImageView.ScaleType.FIT_END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20992a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20992a[ImageView.ScaleType.MATRIX.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f20992a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f20992a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.ViewScaleType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.nostra13.universalimageloader.core.assist.ViewScaleType] */
    static {
        ?? r0 = new Enum("FIT_INSIDE", 0);
        f20991c = r0;
        ?? r1 = new Enum("CROP", 1);
        f = r1;
        g = new ViewScaleType[]{r0, r1};
    }

    public static ViewScaleType a(ImageView imageView) {
        int i = AnonymousClass1.f20992a[imageView.getScaleType().ordinal()];
        if (i != 1 && i != 2 && i != 3 && i != 4 && i != 5) {
            return f;
        }
        return f20991c;
    }

    public static ViewScaleType valueOf(String str) {
        return (ViewScaleType) Enum.valueOf(ViewScaleType.class, str);
    }

    public static ViewScaleType[] values() {
        return (ViewScaleType[]) g.clone();
    }
}
