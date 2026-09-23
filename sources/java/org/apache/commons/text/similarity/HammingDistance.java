package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class HammingDistance implements EditDistance<Integer> {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        CharSequence charSequence = (CharSequence) obj;
        CharSequence charSequence2 = (CharSequence) obj2;
        SimilarityCharacterInput similarityCharacterInput = new SimilarityCharacterInput(charSequence);
        SimilarityCharacterInput similarityCharacterInput2 = new SimilarityCharacterInput(charSequence2);
        if (charSequence.length() == charSequence2.length()) {
            int i = 0;
            for (int i2 = 0; i2 < similarityCharacterInput.f22506a.length(); i2++) {
                if (!similarityCharacterInput.a(i2).equals(similarityCharacterInput2.a(i2))) {
                    i++;
                }
            }
            return Integer.valueOf(i);
        }
        throw new IllegalArgumentException("SimilarityInput must have the same length");
    }
}
