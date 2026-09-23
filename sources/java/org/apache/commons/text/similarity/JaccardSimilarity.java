package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.util.HashSet;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class JaccardSimilarity implements SimilarityScore<Double> {

    /* renamed from: c, reason: collision with root package name */
    public static final JaccardSimilarity f22500c = new Object();

    public final Double a(SimilarityInput similarityInput, SimilarityInput similarityInput2) {
        SimilarityCharacterInput similarityCharacterInput = (SimilarityCharacterInput) similarityInput;
        int length = similarityCharacterInput.f22506a.length();
        SimilarityCharacterInput similarityCharacterInput2 = (SimilarityCharacterInput) similarityInput2;
        int length2 = similarityCharacterInput2.f22506a.length();
        if (length == 0 && length2 == 0) {
            return Double.valueOf(1.0d);
        }
        if (length != 0 && length2 != 0) {
            HashSet hashSet = new HashSet();
            for (int i = 0; i < length; i++) {
                hashSet.add(similarityCharacterInput.a(i));
            }
            HashSet hashSet2 = new HashSet();
            for (int i2 = 0; i2 < length2; i2++) {
                hashSet2.add(similarityCharacterInput2.a(i2));
            }
            new HashSet(hashSet).addAll(hashSet2);
            return Double.valueOf((((hashSet2.size() + hashSet.size()) - r10.size()) * 1.0d) / r10.size());
        }
        return Double.valueOf(0.0d);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return a(new SimilarityCharacterInput((CharSequence) obj), new SimilarityCharacterInput((CharSequence) obj2));
    }
}
