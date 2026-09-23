package j$.util.function;

import java.util.Comparator;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements BinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21339a;
    public final /* synthetic */ Comparator b;

    public /* synthetic */ a(Comparator comparator, int i) {
        this.f21339a = i;
        this.b = comparator;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f21339a) {
            case 0:
                return BiFunction$CC.$default$andThen(this, function);
            default:
                return BiFunction$CC.$default$andThen(this, function);
        }
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f21339a) {
            case 0:
                return this.b.compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return this.b.compare(obj, obj2) <= 0 ? obj : obj2;
        }
    }
}
