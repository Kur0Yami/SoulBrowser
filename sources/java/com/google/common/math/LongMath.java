package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import java.math.RoundingMode;

@GwtCompatible
/* loaded from: classes3.dex */
public final class LongMath {

    /* renamed from: com.google.common.math.LongMath$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12490a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f12490a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12490a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12490a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12490a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12490a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12490a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f12490a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f12490a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class MillerRabinTester {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ MillerRabinTester[] f12491c = {new MillerRabinTester() { // from class: com.google.common.math.LongMath.MillerRabinTester.1
        }, new MillerRabinTester() { // from class: com.google.common.math.LongMath.MillerRabinTester.2
        }};

        /* JADX INFO: Fake field, exist only in values array */
        MillerRabinTester EF2;

        public static MillerRabinTester valueOf(String str) {
            return (MillerRabinTester) Enum.valueOf(MillerRabinTester.class, str);
        }

        public static MillerRabinTester[] values() {
            return (MillerRabinTester[]) f12491c.clone();
        }
    }
}
