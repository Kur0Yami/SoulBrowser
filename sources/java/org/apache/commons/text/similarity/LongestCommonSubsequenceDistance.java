package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class LongestCommonSubsequenceDistance implements EditDistance<Integer> {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        CharSequence charSequence = (CharSequence) obj;
        CharSequence charSequence2 = (CharSequence) obj2;
        if (charSequence != null && charSequence2 != null) {
            return Integer.valueOf((charSequence2.length() + charSequence.length()) - (LongestCommonSubsequence.f22504c.apply(charSequence, charSequence2).intValue() * 2));
        }
        throw new IllegalArgumentException("Inputs must not be null");
    }
}
