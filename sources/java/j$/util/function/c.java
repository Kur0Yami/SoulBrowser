package j$.util.function;

import j$.util.Map;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Function, BiConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21341a;
    public final /* synthetic */ Function b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function f21342c;

    public /* synthetic */ c(Function function, Function function2, int i) {
        this.f21341a = i;
        this.b = function;
        this.f21342c = function2;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        switch (this.f21341a) {
            case 0:
                return Function$CC.$default$andThen(this, function);
            default:
                return Function$CC.$default$andThen(this, function);
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        switch (this.f21341a) {
            case 0:
                return Function$CC.$default$compose(this, function);
            default:
                return Function$CC.$default$compose(this, function);
        }
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.f21341a) {
            case 0:
                return this.f21342c.apply(this.b.apply(obj));
            default:
                return this.b.apply(this.f21342c.apply(obj));
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        Set set = Collectors.f21377a;
        Object apply = this.b.apply(obj2);
        Object requireNonNull = Objects.requireNonNull(this.f21342c.apply(obj2));
        Object a2 = Map.EL.a((java.util.Map) obj, apply, requireNonNull);
        if (a2 != null) {
            throw new IllegalStateException(String.format("Duplicate key %s (attempted merging values %s and %s)", apply, a2, requireNonNull));
        }
    }
}
