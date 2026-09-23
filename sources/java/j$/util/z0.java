package j$.util;

import j$.util.function.Consumer$CC;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class z0 implements Iterator, Consumer {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21526a = false;
    public Object b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Spliterator f21527c;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public z0(Spliterator spliterator) {
        this.f21527c = spliterator;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f21526a = true;
        this.b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f21526a) {
            this.f21527c.tryAdvance(this);
        }
        return this.f21526a;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f21526a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f21526a = false;
        return this.b;
    }
}
