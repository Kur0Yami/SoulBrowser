package j$.util.stream;

import j$.util.function.BiFunction$CC;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class n implements BinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21457a;
    public final /* synthetic */ BiConsumer b;

    public /* synthetic */ n(BiConsumer biConsumer, int i) {
        this.f21457a = i;
        this.b = biConsumer;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f21457a) {
            case 0:
                return BiFunction$CC.$default$andThen(this, function);
            case 1:
                return BiFunction$CC.$default$andThen(this, function);
            default:
                return BiFunction$CC.$default$andThen(this, function);
        }
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f21457a) {
            case 0:
                this.b.accept(obj, obj2);
                return obj;
            case 1:
                this.b.accept(obj, obj2);
                return obj;
            default:
                this.b.accept(obj, obj2);
                return obj;
        }
    }
}
