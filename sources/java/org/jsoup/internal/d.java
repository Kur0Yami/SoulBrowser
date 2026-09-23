package org.jsoup.internal;

import j$.util.function.BiFunction$CC;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import org.jsoup.internal.StringUtil;

/* loaded from: classes4.dex */
public final /* synthetic */ class d implements BinaryOperator {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        StringUtil.StringJoiner stringJoiner = (StringUtil.StringJoiner) obj;
        String[] strArr = StringUtil.f22554a;
        stringJoiner.append(((StringUtil.StringJoiner) obj2).complete());
        return stringJoiner;
    }
}
