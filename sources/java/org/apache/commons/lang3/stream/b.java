package org.apache.commons.lang3.stream;

import j$.util.function.BiFunction$CC;
import java.util.List;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import org.apache.commons.lang3.stream.Streams;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements BinaryOperator {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        List list = (List) obj;
        Set set = Streams.ArrayCollector.f22389a;
        list.addAll((List) obj2);
        return list;
    }
}
