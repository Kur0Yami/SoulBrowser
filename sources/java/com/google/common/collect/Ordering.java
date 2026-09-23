package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicInteger;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class Ordering<T> implements Comparator<T> {

    @VisibleForTesting
    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static class ArbitraryOrdering extends Ordering<Object> {

        /* renamed from: c, reason: collision with root package name */
        public final AtomicInteger f12383c = new AtomicInteger(0);
        public final AbstractMap f;

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.common.collect.MapMaker] */
        public ArbitraryOrdering() {
            ?? obj = new Object();
            obj.b();
            this.f = (AbstractMap) obj.a();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractMap, java.util.Map, java.util.concurrent.ConcurrentMap] */
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            if (obj != null) {
                if (obj2 != null) {
                    int identityHashCode = System.identityHashCode(obj);
                    int identityHashCode2 = System.identityHashCode(obj2);
                    if (identityHashCode != identityHashCode2) {
                        if (identityHashCode < identityHashCode2) {
                            return -1;
                        }
                        return 1;
                    }
                    ?? r0 = this.f;
                    Integer num = (Integer) r0.get(obj);
                    AtomicInteger atomicInteger = this.f12383c;
                    if (num == null) {
                        num = Integer.valueOf(atomicInteger.getAndIncrement());
                        Integer num2 = (Integer) r0.putIfAbsent(obj, num);
                        if (num2 != null) {
                            num = num2;
                        }
                    }
                    Integer num3 = (Integer) r0.get(obj2);
                    if (num3 == null) {
                        num3 = Integer.valueOf(atomicInteger.getAndIncrement());
                        Integer num4 = (Integer) r0.putIfAbsent(obj2, num3);
                        if (num4 != null) {
                            num3 = num4;
                        }
                    }
                    int compareTo = num.compareTo(num3);
                    if (compareTo != 0) {
                        return compareTo;
                    }
                    throw new AssertionError();
                }
                return 1;
            }
            return -1;
        }

        public final String toString() {
            return "Ordering.arbitrary()";
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class ArbitraryOrderingHolder {
        static {
            new ArbitraryOrdering();
        }
    }

    /* loaded from: classes3.dex */
    public static final class IncomparableValueException extends ClassCastException {
    }

    public static Ordering b(Comparator comparator) {
        if (comparator instanceof Ordering) {
            return (Ordering) comparator;
        }
        return new ComparatorOrdering(comparator);
    }

    public static Ordering c() {
        return NaturalOrdering.g;
    }

    public final Ordering a(Comparator comparator) {
        return new CompoundOrdering(this, comparator);
    }

    public Ordering d() {
        return new NullsFirstOrdering(this);
    }

    public Ordering e() {
        return new NullsLastOrdering(this);
    }

    public final Ordering f(Function function) {
        return new ByFunctionOrdering(function, this);
    }

    public Ordering g() {
        return new ReverseOrdering(this);
    }
}
