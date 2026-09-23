package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class IntersectionSimilarity<T> implements SimilarityScore<IntersectionResult> {

    /* loaded from: classes4.dex */
    public static final class BagCount {
    }

    /* loaded from: classes4.dex */
    public final class TinyBag {
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        CharSequence charSequence = (CharSequence) obj2;
        if (((CharSequence) obj) != null && charSequence != null) {
            throw null;
        }
        throw new IllegalArgumentException("Input cannot be null");
    }
}
