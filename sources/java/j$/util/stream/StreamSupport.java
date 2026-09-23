package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class StreamSupport {
    public static <T> Stream<T> stream(Spliterator<T> spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return (Stream<T>) new a(spliterator, c7.h(spliterator), z);
    }

    public static <T> Stream<T> stream(Supplier<? extends Spliterator<T>> supplier, int i, boolean z) {
        Objects.requireNonNull(supplier);
        return (Stream<T>) new a(supplier, i & c7.f, z);
    }
}
