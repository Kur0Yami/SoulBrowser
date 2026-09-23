package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.lang.reflect.Array;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class LongestCommonSubsequence implements SimilarityScore<Integer> {

    /* renamed from: c, reason: collision with root package name */
    public static final LongestCommonSubsequence f22504c = new Object();

    public static int[] a(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence.length();
        int length2 = charSequence2.length();
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 2, length2 + 1);
        for (int i = 1; i <= length; i++) {
            int[] iArr2 = iArr[0];
            iArr[0] = iArr[1];
            iArr[1] = iArr2;
            for (int i2 = 1; i2 <= length2; i2++) {
                int i3 = i2 - 1;
                if (charSequence.charAt(i - 1) == charSequence2.charAt(i3)) {
                    iArr[1][i2] = iArr[0][i3] + 1;
                } else {
                    int[] iArr3 = iArr[1];
                    iArr3[i2] = Math.max(iArr3[i3], iArr[0][i2]);
                }
            }
        }
        return iArr[1];
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Integer apply(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence != null && charSequence2 != null) {
            int length = charSequence.length();
            int length2 = charSequence2.length();
            if (length != 0 && length2 != 0) {
                if (length < length2) {
                    return Integer.valueOf(a(charSequence2, charSequence)[length]);
                }
                return Integer.valueOf(a(charSequence, charSequence2)[length2]);
            }
            return 0;
        }
        throw new IllegalArgumentException("Inputs must not be null");
    }
}
