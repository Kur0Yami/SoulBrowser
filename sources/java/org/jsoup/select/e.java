package org.jsoup.select;

import j$.util.function.Function$CC;
import java.util.function.Function;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.select.StructuralEvaluator;

/* loaded from: classes4.dex */
public final /* synthetic */ class e implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22651a;

    public /* synthetic */ e(int i) {
        this.f22651a = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f22651a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f22651a) {
            case 0:
                return new StructuralEvaluator.Has((Evaluator) obj);
            case 1:
                return ((Element) obj).html();
            case 2:
                return ((Element) obj).text();
            default:
                return ((Node) obj).outerHtml();
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f22651a;
        return Function$CC.$default$compose(this, function);
    }
}
