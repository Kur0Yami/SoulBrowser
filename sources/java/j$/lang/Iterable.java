package j$.lang;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public interface Iterable<T> {
    void forEach(Consumer<? super T> consumer);

    Spliterator<T> spliterator();

    /* renamed from: j$.lang.Iterable$-CC, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static void $default$forEach(java.lang.Iterable iterable, Consumer consumer) {
            Objects.requireNonNull(consumer);
            Iterator<T> it = iterable.iterator();
            while (it.hasNext()) {
                consumer.accept(it.next());
            }
        }
    }

    /* renamed from: j$.lang.Iterable$-EL, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class EL {
        /* JADX WARN: Multi-variable type inference failed */
        public static void forEach(java.lang.Iterable iterable, Consumer consumer) {
            if (iterable instanceof Iterable) {
                ((Iterable) iterable).forEach(consumer);
                return;
            }
            if (!(iterable instanceof Collection)) {
                CC.$default$forEach(iterable, consumer);
                return;
            }
            Objects.requireNonNull(consumer);
            Iterator it = ((Collection) iterable).iterator();
            while (it.hasNext()) {
                consumer.accept(it.next());
            }
        }
    }
}
