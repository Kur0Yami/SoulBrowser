package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class JaccardDistance implements EditDistance<Double> {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return Double.valueOf(1.0d - JaccardSimilarity.f22500c.a(new SimilarityCharacterInput((CharSequence) obj), new SimilarityCharacterInput((CharSequence) obj2)).doubleValue());
    }
}
