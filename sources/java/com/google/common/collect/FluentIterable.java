package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Optional;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.Iterables;
import java.util.Collection;
import java.util.Iterator;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class FluentIterable<E> implements Iterable<E> {

    /* renamed from: c, reason: collision with root package name */
    public final Optional f12279c;

    /* renamed from: com.google.common.collect.FluentIterable$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends FluentIterable<Object> {
        @Override // java.lang.Iterable
        public final Iterator iterator() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.FluentIterable$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends FluentIterable<Object> {

        /* renamed from: com.google.common.collect.FluentIterable$3$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIndexedListIterator<Iterator<Object>> {
            public final /* synthetic */ Iterable[] g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(int i, Iterable[] iterableArr) {
                super(i, 0);
                this.g = iterableArr;
            }

            @Override // com.google.common.collect.AbstractIndexedListIterator
            public final Object a(int i) {
                return this.g[i].iterator();
            }
        }

        @Override // java.lang.Iterable
        public final Iterator iterator() {
            throw null;
        }
    }

    public FluentIterable() {
        this.f12279c = Optional.a();
    }

    public static FluentIterable c(final Iterable iterable) {
        if (iterable instanceof FluentIterable) {
            return (FluentIterable) iterable;
        }
        return new FluentIterable<Object>(iterable) { // from class: com.google.common.collect.FluentIterable.1
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                return iterable.iterator();
            }
        };
    }

    public final FluentIterable a(Class cls) {
        Iterable g = g();
        g.getClass();
        cls.getClass();
        return c(new Iterables.AnonymousClass4(g, Predicates.f(cls)));
    }

    public final Iterable g() {
        return (Iterable) this.f12279c.c(this);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.common.collect.ImmutableSet$Builder, com.google.common.collect.ImmutableCollection$ArrayBasedBuilder] */
    public final ImmutableSet i() {
        Iterable g = g();
        if (g instanceof Collection) {
            return ImmutableSet.t((Collection) g);
        }
        int i = ImmutableSet.g;
        Iterator it = g.iterator();
        if (!it.hasNext()) {
            return RegularImmutableSet.n;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return new SingletonImmutableSet(next);
        }
        ?? arrayBasedBuilder = new ImmutableCollection.ArrayBasedBuilder(4);
        arrayBasedBuilder.a(next);
        while (it.hasNext()) {
            arrayBasedBuilder.a(it.next());
        }
        return arrayBasedBuilder.f();
    }

    public String toString() {
        Iterator it = g().iterator();
        StringBuilder sb = new StringBuilder("[");
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(it.next());
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }

    public FluentIterable(Iterable iterable) {
        this.f12279c = Optional.b(iterable);
    }
}
