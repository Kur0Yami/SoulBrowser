package org.apache.commons.text.lookup;

import j$.util.function.Function$CC;
import java.util.function.Function;

/* loaded from: classes4.dex */
abstract class AbstractStringLookup implements StringLookup {

    /* renamed from: a, reason: collision with root package name */
    public static final String f22475a = String.valueOf(':');

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return a((String) obj);
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String b(String str) {
        return a(str);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
