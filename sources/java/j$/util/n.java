package j$.util;

import java.util.ListIterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class n implements ListIterator, a0 {

    /* renamed from: a, reason: collision with root package name */
    public final ListIterator f21366a;

    public n(o oVar, int i) {
        this.f21366a = oVar.b.listIterator(i);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f21366a.hasNext();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        return this.f21366a.next();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f21366a.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return this.f21366a.previous();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f21366a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f21366a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, j$.util.a0
    public final void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.F(this.f21366a, consumer);
    }
}
