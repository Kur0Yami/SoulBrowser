package java.util.function;

/* loaded from: classes2.dex */
public interface Function<T, R> {
    /* renamed from: andThen */
    <V> Function<T, V> mo17andThen(Function<? super R, ? extends V> function);

    R apply(T t);

    <V> Function<V, R> compose(Function<? super V, ? extends T> function);
}
