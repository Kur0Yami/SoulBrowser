package j$.util;

import java.util.NoSuchElementException;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class Optional<T> {
    public static final Optional b = new Optional();

    /* renamed from: a, reason: collision with root package name */
    public final Object f21289a;

    public Optional() {
        this.f21289a = null;
    }

    public static <T> Optional<T> empty() {
        return b;
    }

    public Optional(Object obj) {
        this.f21289a = Objects.requireNonNull(obj);
    }

    public static <T> Optional<T> of(T t) {
        return new Optional<>(t);
    }

    public static <T> Optional<T> ofNullable(T t) {
        return t == null ? empty() : of(t);
    }

    public T get() {
        T t = (T) this.f21289a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public boolean isPresent() {
        return this.f21289a != null;
    }

    public <U> Optional<U> map(Function<? super T, ? extends U> function) {
        Objects.requireNonNull(function);
        if (!isPresent()) {
            return empty();
        }
        return ofNullable(function.apply((Object) this.f21289a));
    }

    public T orElse(T t) {
        T t2 = (T) this.f21289a;
        return t2 != null ? t2 : t;
    }

    public T orElseGet(Supplier<? extends T> supplier) {
        T t = (T) this.f21289a;
        return t != null ? t : supplier.get();
    }

    public <X extends Throwable> T orElseThrow(Supplier<? extends X> supplier) {
        T t = (T) this.f21289a;
        if (t != null) {
            return t;
        }
        throw supplier.get();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Optional) {
            return Objects.equals(this.f21289a, ((Optional) obj).f21289a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f21289a);
    }

    public final String toString() {
        Object obj = this.f21289a;
        return obj != null ? String.format("Optional[%s]", obj) : "Optional.empty";
    }
}
