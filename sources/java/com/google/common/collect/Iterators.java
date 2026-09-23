package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.AbstractIterator;
import com.google.common.primitives.Ints;
import j$.util.Objects;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Iterators {

    /* renamed from: com.google.common.collect.Iterators$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements Enumeration<Object> {
        @Override // java.util.Enumeration
        public final boolean hasMoreElements() {
            throw null;
        }

        @Override // java.util.Enumeration
        public final Object nextElement() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Iterators$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Iterator<Object> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Iterators$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends UnmodifiableIterator<List<Object>> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Iterators$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 extends TransformedIterator<Object, Object> {
        public final /* synthetic */ Function f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass6(Iterator it, Function function) {
            super(it);
            this.f = function;
        }

        @Override // com.google.common.collect.TransformedIterator
        public final Object a(Object obj) {
            return this.f.apply(obj);
        }
    }

    /* renamed from: com.google.common.collect.Iterators$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Iterator<Object> {

        /* renamed from: c, reason: collision with root package name */
        public int f12308c;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (hasNext()) {
                this.f12308c++;
                throw null;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Iterators$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 extends UnmodifiableIterator<Object> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw null;
        }

        public final String toString() {
            return "Iterators.consumingIterator(...)";
        }
    }

    /* renamed from: com.google.common.collect.Iterators$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 extends UnmodifiableIterator<Object> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class ArrayItr<T> extends AbstractIndexedListIterator<T> {
        public static final UnmodifiableListIterator h = new ArrayItr(new Object[0]);
        public final Object[] g;

        public ArrayItr(Object[] objArr) {
            super(objArr.length, 0);
            this.g = objArr;
        }

        @Override // com.google.common.collect.AbstractIndexedListIterator
        public final Object a(int i) {
            return this.g[i];
        }
    }

    /* loaded from: classes3.dex */
    public static final class ConcatenatedIterator<T> implements Iterator<T> {

        /* renamed from: c, reason: collision with root package name */
        public Iterator f12309c;
        public Iterator f;
        public Iterator g;
        public ArrayDeque h;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Iterator it;
            while (true) {
                Iterator it2 = this.f;
                it2.getClass();
                if (!it2.hasNext()) {
                    while (true) {
                        Iterator it3 = this.g;
                        if (it3 != null && it3.hasNext()) {
                            it = this.g;
                            break;
                        }
                        ArrayDeque arrayDeque = this.h;
                        if (arrayDeque == null || arrayDeque.isEmpty()) {
                            break;
                        }
                        this.g = (Iterator) this.h.removeFirst();
                    }
                    it = null;
                    this.g = it;
                    if (it == null) {
                        return false;
                    }
                    Iterator it4 = (Iterator) it.next();
                    this.f = it4;
                    if (it4 instanceof ConcatenatedIterator) {
                        ConcatenatedIterator concatenatedIterator = (ConcatenatedIterator) it4;
                        this.f = concatenatedIterator.f;
                        if (this.h == null) {
                            this.h = new ArrayDeque();
                        }
                        this.h.addFirst(this.g);
                        if (concatenatedIterator.h != null) {
                            while (!concatenatedIterator.h.isEmpty()) {
                                this.h.addFirst((Iterator) concatenatedIterator.h.removeLast());
                            }
                        }
                        this.g = concatenatedIterator.g;
                    }
                } else {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (hasNext()) {
                Iterator it = this.f;
                this.f12309c = it;
                return it.next();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Iterator it = this.f12309c;
            if (it != null) {
                it.remove();
                this.f12309c = null;
                return;
            }
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class EmptyModifiableIterator implements Iterator<Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final EmptyModifiableIterator f12310c;
        public static final /* synthetic */ EmptyModifiableIterator[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.common.collect.Iterators$EmptyModifiableIterator] */
        static {
            ?? r0 = new Enum("INSTANCE", 0);
            f12310c = r0;
            f = new EmptyModifiableIterator[]{r0};
        }

        public static EmptyModifiableIterator valueOf(String str) {
            return (EmptyModifiableIterator) Enum.valueOf(EmptyModifiableIterator.class, str);
        }

        public static EmptyModifiableIterator[] values() {
            return (EmptyModifiableIterator[]) f.clone();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            CollectPreconditions.d(false);
        }
    }

    /* loaded from: classes3.dex */
    public static final class MergingIterator<T> extends UnmodifiableIterator<T> {

        /* loaded from: classes3.dex */
        public static class IndexedIterator<E> {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class PeekingImpl<E> implements PeekingIterator<E> {

        /* renamed from: c, reason: collision with root package name */
        public final Iterator f12311c;
        public boolean f;
        public Object g;

        public PeekingImpl(Iterator it) {
            it.getClass();
            this.f12311c = it;
        }

        public final Object a() {
            if (!this.f) {
                this.g = this.f12311c.next();
                this.f = true;
            }
            return this.g;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (!this.f && !this.f12311c.hasNext()) {
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!this.f) {
                return this.f12311c.next();
            }
            Object obj = this.g;
            this.f = false;
            this.g = null;
            return obj;
        }

        @Override // java.util.Iterator
        public final void remove() {
            Preconditions.m(!this.f, "Can't remove after you've peeked at next");
            this.f12311c.remove();
        }
    }

    /* loaded from: classes3.dex */
    public static final class SingletonIterator<T> extends UnmodifiableIterator<T> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12312c;
        public boolean f;

        public SingletonIterator(Object obj) {
            this.f12312c = obj;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.f;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!this.f) {
                this.f = true;
                return this.f12312c;
            }
            throw new NoSuchElementException();
        }
    }

    public static boolean a(Collection collection, Iterator it) {
        collection.getClass();
        it.getClass();
        boolean z = false;
        while (it.hasNext()) {
            z |= collection.add(it.next());
        }
        return z;
    }

    public static void b(Iterator it) {
        it.getClass();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.Iterator, java.lang.Object, com.google.common.collect.Iterators$ConcatenatedIterator] */
    public static Iterator c(Iterator it, Iterator it2) {
        final Iterator[] itArr = {it, it2};
        UnmodifiableIterator<Iterator<?>> unmodifiableIterator = new UnmodifiableIterator<Iterator<?>>() { // from class: com.google.common.collect.Iterators.3

            /* renamed from: c, reason: collision with root package name */
            public int f12307c = 0;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.f12307c < itArr.length) {
                    return true;
                }
                return false;
            }

            @Override // java.util.Iterator
            public final Object next() {
                if (hasNext()) {
                    int i = this.f12307c;
                    Iterator[] itArr2 = itArr;
                    Iterator it3 = itArr2[i];
                    Objects.requireNonNull(it3);
                    int i2 = this.f12307c;
                    itArr2[i2] = null;
                    this.f12307c = i2 + 1;
                    return it3;
                }
                throw new NoSuchElementException();
            }
        };
        ?? obj = new Object();
        obj.f = ArrayItr.h;
        obj.g = unmodifiableIterator;
        return obj;
    }

    public static UnmodifiableIterator d(final Iterator it, final Predicate predicate) {
        it.getClass();
        predicate.getClass();
        return new AbstractIterator<Object>() { // from class: com.google.common.collect.Iterators.5
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                Object next;
                do {
                    Iterator it2 = it;
                    if (it2.hasNext()) {
                        next = it2.next();
                    } else {
                        this.f12232c = AbstractIterator.State.g;
                        return null;
                    }
                } while (!predicate.apply(next));
                return next;
            }
        };
    }

    public static Object e(Iterator it, Predicate predicate) {
        it.getClass();
        predicate.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (predicate.apply(next)) {
                return next;
            }
        }
        return null;
    }

    public static UnmodifiableIterator f(Object... objArr) {
        if (objArr.length == 0) {
            Preconditions.i(0, objArr.length);
            return ArrayItr.h;
        }
        return new ArrayItr(objArr);
    }

    public static PeekingIterator g(Iterator it) {
        if (it instanceof PeekingImpl) {
            return (PeekingImpl) it;
        }
        return new PeekingImpl(it);
    }

    public static Object h(Iterator it) {
        if (it.hasNext()) {
            Object next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    public static boolean i(Collection collection, Iterator it) {
        collection.getClass();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    public static int j(Iterator it) {
        long j = 0;
        while (it.hasNext()) {
            it.next();
            j++;
        }
        return Ints.c(j);
    }

    public static Iterator k(Iterator it, Function function) {
        function.getClass();
        return new AnonymousClass6(it, function);
    }

    public static UnmodifiableIterator l(final Iterator it) {
        it.getClass();
        if (it instanceof UnmodifiableIterator) {
            return (UnmodifiableIterator) it;
        }
        return new UnmodifiableIterator<Object>() { // from class: com.google.common.collect.Iterators.1
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                return it.next();
            }
        };
    }
}
