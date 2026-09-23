package org.apache.commons.text.similarity;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements BiFunction {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        Integer num = (Integer) obj2;
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        return Integer.valueOf(i);
    }
}
