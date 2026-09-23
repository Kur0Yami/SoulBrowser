package org.apache.commons.lang3;

import j$.util.function.Function$CC;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;
import org.apache.commons.lang3.AnnotationUtils;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22366a;

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f22366a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f22366a) {
            case 0:
                int i = AnnotationUtils.AnonymousClass1.w;
                return "@".concat(((Class) obj).getName());
            case 1:
                return (String) ((Map.Entry) obj).getValue();
            case 2:
                return (String) ((Map.Entry) obj).getKey();
            default:
                return ((Locale) obj).toString();
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f22366a;
        return Function$CC.$default$compose(this, function);
    }
}
