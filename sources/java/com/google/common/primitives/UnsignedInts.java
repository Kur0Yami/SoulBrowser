package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import java.util.Comparator;
import kotlin.jvm.internal.IntCompanionObject;

@GwtCompatible
/* loaded from: classes3.dex */
public final class UnsignedInts {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class LexicographicalComparator implements Comparator<int[]> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ LexicographicalComparator[] f12526c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        LexicographicalComparator EF5;

        public static LexicographicalComparator valueOf(String str) {
            return (LexicographicalComparator) Enum.valueOf(LexicographicalComparator.class, str);
        }

        public static LexicographicalComparator[] values() {
            return (LexicographicalComparator[]) f12526c.clone();
        }

        @Override // java.util.Comparator
        public final int compare(int[] iArr, int[] iArr2) {
            int[] iArr3 = iArr;
            int[] iArr4 = iArr2;
            int min = Math.min(iArr3.length, iArr4.length);
            for (int i = 0; i < min; i++) {
                int i2 = iArr3[i];
                int i3 = iArr4[i];
                if (i2 != i3) {
                    return Integer.compare(i2 ^ IntCompanionObject.MIN_VALUE, Integer.MIN_VALUE ^ i3);
                }
            }
            return iArr3.length - iArr4.length;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "UnsignedInts.lexicographicalComparator()";
        }
    }
}
