package j$.util.stream;

import j$.util.Spliterator;
import java.util.Deque;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class e3 extends f3 {
    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        c2 a2;
        if (!c()) {
            return false;
        }
        boolean tryAdvance = this.d.tryAdvance(consumer);
        if (!tryAdvance) {
            if (this.f21416c == null && (a2 = f3.a(this.e)) != null) {
                Spliterator spliterator = a2.spliterator();
                this.d = spliterator;
                return spliterator.tryAdvance(consumer);
            }
            this.f21415a = null;
        }
        return tryAdvance;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f21415a == null) {
            return;
        }
        if (this.d == null) {
            Spliterator spliterator = this.f21416c;
            if (spliterator == null) {
                Deque b = b();
                while (true) {
                    c2 a2 = f3.a(b);
                    if (a2 != null) {
                        a2.forEach(consumer);
                    } else {
                        this.f21415a = null;
                        return;
                    }
                }
            } else {
                spliterator.forEachRemaining(consumer);
                return;
            }
        }
        do {
        } while (tryAdvance(consumer));
    }
}
