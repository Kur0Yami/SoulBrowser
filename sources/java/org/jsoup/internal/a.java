package org.jsoup.internal;

import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.function.Function;
import org.jsoup.internal.StringUtil;

/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22558a;

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f22558a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f22558a) {
            case 0:
                return new ArrayList();
            case 1:
                return new HashSet();
            case 2:
                return new HashMap();
            case 3:
                return new IdentityHashMap();
            default:
                return ((StringUtil.StringJoiner) obj).complete();
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f22558a;
        return Function$CC.$default$compose(this, function);
    }
}
