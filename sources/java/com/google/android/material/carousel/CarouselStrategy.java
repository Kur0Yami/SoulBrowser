package com.google.android.material.carousel;

/* loaded from: classes3.dex */
public abstract class CarouselStrategy {

    /* renamed from: a, reason: collision with root package name */
    public float f11711a;
    public float b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class StrategyType {

        /* renamed from: c, reason: collision with root package name */
        public static final StrategyType f11712c;
        public static final /* synthetic */ StrategyType[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.carousel.CarouselStrategy$StrategyType, java.lang.Enum] */
        static {
            ?? r0 = new Enum("CONTAINED", 0);
            f11712c = r0;
            f = new StrategyType[]{r0, new Enum("UNCONTAINED", 1)};
        }

        public static StrategyType valueOf(String str) {
            return (StrategyType) Enum.valueOf(StrategyType.class, str);
        }

        public static StrategyType[] values() {
            return (StrategyType[]) f.clone();
        }
    }

    public static int[] a(int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            iArr2[i] = iArr[i] * 2;
        }
        return iArr2;
    }

    public static float b(float f, float f2, float f3) {
        return 1.0f - ((f - f3) / (f2 - f3));
    }
}
