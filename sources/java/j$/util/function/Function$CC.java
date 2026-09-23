package j$.util.function;

import j$.time.h;
import j$.util.Objects;
import java.util.function.Function;

/* renamed from: j$.util.function.Function$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class Function$CC {
    public static Function $default$compose(Function function, Function function2) {
        Objects.requireNonNull(function2);
        return new c(function, function2, 1);
    }

    public static Function $default$andThen(Function function, Function function2) {
        Objects.requireNonNull(function2);
        return new c(function, function2, 0);
    }

    public static <T> Function<T, T> identity() {
        return new h(10);
    }
}
