package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class LevenshteinDistance implements EditDistance<Integer> {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        CharSequence charSequence = (CharSequence) obj;
        CharSequence charSequence2 = (CharSequence) obj2;
        SimilarityCharacterInput similarityCharacterInput = new SimilarityCharacterInput(charSequence);
        SimilarityCharacterInput similarityCharacterInput2 = new SimilarityCharacterInput(charSequence2);
        int length = charSequence.length();
        int length2 = charSequence2.length();
        if (length == 0) {
            length = length2;
        } else if (length2 != 0) {
            if (length > length2) {
                length = length2;
                length2 = charSequence.length();
            } else {
                similarityCharacterInput2 = similarityCharacterInput;
                similarityCharacterInput = similarityCharacterInput2;
            }
            int[] iArr = new int[length + 1];
            for (int i = 0; i <= length; i++) {
                iArr[i] = i;
            }
            for (int i2 = 1; i2 <= length2; i2++) {
                int i3 = iArr[0];
                Character a2 = similarityCharacterInput.a(i2 - 1);
                iArr[0] = i2;
                int i4 = 1;
                while (i4 <= length) {
                    int i5 = iArr[i4];
                    int i6 = i4 - 1;
                    iArr[i4] = Math.min(Math.min(iArr[i6] + 1, iArr[i4] + 1), i3 + (!similarityCharacterInput2.a(i6).equals(a2) ? 1 : 0));
                    i4++;
                    i3 = i5;
                }
            }
            length = iArr[length];
        }
        return Integer.valueOf(length);
    }
}
