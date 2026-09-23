package org.apache.commons.lang3.stream;

import j$.util.function.Function$CC;
import java.lang.reflect.Array;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import org.apache.commons.lang3.stream.Streams;
import org.jsoup.nodes.Node;

/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22390a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a(int i, Object obj) {
        this.f22390a = i;
        this.b = obj;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f22390a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i = this.f22390a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                List list = (List) obj;
                Set set = Streams.ArrayCollector.f22389a;
                ((Streams.ArrayCollector) obj2).getClass();
                return list.toArray((Object[]) Array.newInstance((Class<?>) null, list.size()));
            case 1:
                return ((Map) obj2).get((String) obj);
            default:
                return ((Class) obj2).cast((Node) obj);
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f22390a;
        return Function$CC.$default$compose(this, function);
    }
}
