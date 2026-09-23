package org.jsoup.internal;

import j$.util.function.BiConsumer$CC;
import java.util.function.BiConsumer;
import org.jsoup.internal.StringUtil;

/* loaded from: classes4.dex */
public final /* synthetic */ class c implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((StringUtil.StringJoiner) obj).add((CharSequence) obj2);
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }
}
