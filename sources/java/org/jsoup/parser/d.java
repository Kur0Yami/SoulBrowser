package org.jsoup.parser;

import j$.util.function.Function$CC;
import java.util.HashMap;
import java.util.function.Function;

/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Function {
    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        TagSet tagSet = TagSet.d;
        return new HashMap();
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
