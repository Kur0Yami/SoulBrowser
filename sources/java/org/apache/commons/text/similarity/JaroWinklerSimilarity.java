package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.util.Arrays;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class JaroWinklerSimilarity implements SimilarityScore<Double> {

    /* renamed from: c, reason: collision with root package name */
    public static final JaroWinklerSimilarity f22501c = new Object();

    public final Double a(SimilarityInput similarityInput, SimilarityInput similarityInput2) {
        SimilarityInput similarityInput3;
        SimilarityInput similarityInput4;
        if (similarityInput.equals(similarityInput2)) {
            return Double.valueOf(1.0d);
        }
        SimilarityCharacterInput similarityCharacterInput = (SimilarityCharacterInput) similarityInput;
        SimilarityCharacterInput similarityCharacterInput2 = (SimilarityCharacterInput) similarityInput2;
        if (similarityCharacterInput.f22506a.length() > similarityCharacterInput2.f22506a.length()) {
            similarityInput4 = similarityInput;
            similarityInput3 = similarityInput2;
        } else {
            similarityInput3 = similarityInput;
            similarityInput4 = similarityInput2;
        }
        SimilarityCharacterInput similarityCharacterInput3 = (SimilarityCharacterInput) similarityInput4;
        CharSequence charSequence = similarityCharacterInput3.f22506a;
        int i = 0;
        int max = Math.max((charSequence.length() / 2) - 1, 0);
        SimilarityCharacterInput similarityCharacterInput4 = (SimilarityCharacterInput) similarityInput3;
        CharSequence charSequence2 = similarityCharacterInput4.f22506a;
        int[] iArr = new int[charSequence2.length()];
        Arrays.fill(iArr, -1);
        boolean[] zArr = new boolean[charSequence.length()];
        int i2 = 0;
        int i3 = 0;
        while (i2 < charSequence2.length()) {
            Character a2 = similarityCharacterInput4.a(i2);
            int max2 = Math.max(i2 - max, i);
            int i4 = i;
            boolean[] zArr2 = zArr;
            int min = Math.min(i2 + max + 1, charSequence.length());
            while (true) {
                if (max2 < min) {
                    if (!zArr2[max2] && a2.equals(similarityCharacterInput3.a(max2))) {
                        iArr[i2] = max2;
                        zArr2[max2] = true;
                        i3++;
                        break;
                    }
                    max2++;
                } else {
                    break;
                }
            }
            i2++;
            zArr = zArr2;
            i = i4;
        }
        boolean[] zArr3 = zArr;
        int i5 = i;
        Object[] objArr = new Object[i3];
        Object[] objArr2 = new Object[i3];
        int i6 = i5;
        int i7 = i6;
        while (i6 < charSequence2.length()) {
            if (iArr[i6] != -1) {
                objArr[i7] = similarityCharacterInput4.a(i6);
                i7++;
            }
            i6++;
        }
        int i8 = i5;
        int i9 = i8;
        while (i8 < charSequence.length()) {
            if (zArr3[i8]) {
                objArr2[i9] = similarityCharacterInput3.a(i8);
                i9++;
            }
            i8++;
        }
        int i10 = i5;
        int i11 = i10;
        while (i10 < i3) {
            if (!objArr[i10].equals(objArr2[i10])) {
                i11++;
            }
            i10++;
        }
        int i12 = i5;
        int i13 = i12;
        while (i12 < Math.min(4, charSequence2.length()) && similarityCharacterInput.a(i12).equals(similarityCharacterInput2.a(i12))) {
            i13++;
            i12++;
        }
        double d = new int[]{i3, i11, i13}[i5];
        if (d == 0.0d) {
            return Double.valueOf(0.0d);
        }
        double length = (((d - (r0[1] / 2.0d)) / d) + ((d / r6.length()) + (d / r3.length()))) / 3.0d;
        if (length >= 0.7d) {
            length += (1.0d - length) * r0[2] * 0.1d;
        }
        return Double.valueOf(length);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return a(new SimilarityCharacterInput((CharSequence) obj), new SimilarityCharacterInput((CharSequence) obj2));
    }
}
