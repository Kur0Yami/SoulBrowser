package org.apache.commons.lang3;

import j$.util.function.BiFunction$CC;
import java.util.List;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import org.apache.commons.lang3.Streams;

/* loaded from: classes4.dex */
public final /* synthetic */ class i implements BinaryOperator {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        List list = (List) obj;
        Set set = Streams.ArrayCollector.f22354a;
        list.addAll((List) obj2);
        return list;
    }
}
