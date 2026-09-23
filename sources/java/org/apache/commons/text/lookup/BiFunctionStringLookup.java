package org.apache.commons.text.lookup;

import j$.util.function.Function$CC;
import java.util.function.Function;

/* loaded from: classes4.dex */
final class BiFunctionStringLookup<P, R> implements BiStringLookup<P> {
    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        return null;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return null;
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String b(String str) {
        return null;
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    public final String toString() {
        return android.support.v4.media.a.p(new StringBuilder(), super.toString(), " [function=null]");
    }
}
