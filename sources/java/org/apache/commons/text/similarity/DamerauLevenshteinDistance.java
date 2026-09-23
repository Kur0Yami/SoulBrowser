package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class DamerauLevenshteinDistance implements EditDistance<Integer> {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        int i;
        CharSequence charSequence = (CharSequence) obj;
        CharSequence charSequence2 = (CharSequence) obj2;
        SimilarityCharacterInput similarityCharacterInput = new SimilarityCharacterInput(charSequence);
        SimilarityCharacterInput similarityCharacterInput2 = new SimilarityCharacterInput(charSequence2);
        int length = charSequence.length();
        int length2 = charSequence2.length();
        if (length == 0) {
            length = length2;
        } else if (length2 != 0) {
            if (length2 > length) {
                similarityCharacterInput2 = similarityCharacterInput;
                similarityCharacterInput = similarityCharacterInput2;
                length = length2;
                length2 = charSequence.length();
            }
            int i2 = length2 + 1;
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            for (int i3 = 0; i3 <= length2; i3++) {
                iArr2[i3] = i3;
            }
            int i4 = 1;
            while (i4 <= length) {
                iArr[0] = i4;
                for (int i5 = 1; i5 <= length2; i5++) {
                    int i6 = i4 - 1;
                    int i7 = i5 - 1;
                    if (similarityCharacterInput.a(i6) == similarityCharacterInput2.a(i7)) {
                        i = 0;
                    } else {
                        i = 1;
                    }
                    iArr[i5] = Math.min(Math.min(iArr2[i5] + 1, iArr[i7] + 1), iArr2[i7] + i);
                    if (i4 > 1 && i5 > 1) {
                        int i8 = i5 - 2;
                        if (similarityCharacterInput.a(i6) == similarityCharacterInput2.a(i8) && similarityCharacterInput.a(i4 - 2) == similarityCharacterInput2.a(i7)) {
                            iArr[i5] = Math.min(iArr[i5], iArr3[i8] + i);
                        }
                    }
                }
                i4++;
                int[] iArr4 = iArr;
                iArr = iArr3;
                iArr3 = iArr2;
                iArr2 = iArr4;
            }
            length = iArr2[length2];
        }
        return Integer.valueOf(length);
    }
}
