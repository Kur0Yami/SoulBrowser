package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.List;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Comparator;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.stream.Stream;

@Immutable
@GwtCompatible
/* loaded from: classes3.dex */
public final class ImmutableDoubleArray implements Serializable {
    public static final ImmutableDoubleArray h = new ImmutableDoubleArray(new double[0], 0, 0);

    /* renamed from: c, reason: collision with root package name */
    public final double[] f12509c;
    public final transient int f;
    public final int g;

    /* loaded from: classes3.dex */
    public static final class AsList extends AbstractList<Double> implements RandomAccess, Serializable, List {

        /* renamed from: c, reason: collision with root package name */
        public final ImmutableDoubleArray f12510c;

        public AsList(ImmutableDoubleArray immutableDoubleArray) {
            this.f12510c = immutableDoubleArray;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            if (indexOf(obj) >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            boolean z = obj instanceof AsList;
            ImmutableDoubleArray immutableDoubleArray = this.f12510c;
            if (z) {
                return immutableDoubleArray.equals(((AsList) obj).f12510c);
            }
            if (!(obj instanceof java.util.List)) {
                return false;
            }
            java.util.List list = (java.util.List) obj;
            if (immutableDoubleArray.b() != list.size()) {
                return false;
            }
            int i = immutableDoubleArray.f;
            for (Object obj2 : list) {
                if (obj2 instanceof Double) {
                    int i2 = i + 1;
                    if (ImmutableDoubleArray.a(immutableDoubleArray.f12509c[i], ((Double) obj2).doubleValue())) {
                        i = i2;
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
        public /* synthetic */ void forEach(Consumer consumer) {
            Iterable.CC.$default$forEach(this, consumer);
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            ImmutableDoubleArray immutableDoubleArray = this.f12510c;
            Preconditions.g(i, immutableDoubleArray.b());
            return Double.valueOf(immutableDoubleArray.f12509c[immutableDoubleArray.f + i]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            return this.f12510c.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                ImmutableDoubleArray immutableDoubleArray = this.f12510c;
                int i = immutableDoubleArray.f;
                for (int i2 = i; i2 < immutableDoubleArray.g; i2++) {
                    if (ImmutableDoubleArray.a(immutableDoubleArray.f12509c[i2], doubleValue)) {
                        return i2 - i;
                    }
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                ImmutableDoubleArray immutableDoubleArray = this.f12510c;
                int i = immutableDoubleArray.f;
                for (int i2 = immutableDoubleArray.g - 1; i2 >= i; i2--) {
                    if (ImmutableDoubleArray.a(immutableDoubleArray.f12509c[i2], doubleValue)) {
                        return i2 - i;
                    }
                }
            }
            return -1;
        }

        @Override // java.util.Collection
        public /* synthetic */ Stream parallelStream() {
            return Stream.Wrapper.convert(parallelStream());
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ boolean removeIf(Predicate predicate) {
            return Collection.CC.$default$removeIf(this, predicate);
        }

        @Override // java.util.List, j$.util.List
        public /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
            List.CC.$default$replaceAll(this, unaryOperator);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f12510c.b();
        }

        @Override // java.util.List, j$.util.List
        public /* synthetic */ void sort(Comparator comparator) {
            List.CC.$default$sort(this, comparator);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List
        public /* synthetic */ Spliterator spliterator() {
            return Spliterator.Wrapper.convert(spliterator());
        }

        @Override // java.util.Collection
        public /* synthetic */ java.util.stream.Stream stream() {
            return Stream.Wrapper.convert(stream());
        }

        @Override // java.util.AbstractList, java.util.List
        public final java.util.List subList(int i, int i2) {
            ImmutableDoubleArray immutableDoubleArray;
            ImmutableDoubleArray immutableDoubleArray2 = this.f12510c;
            Preconditions.j(i, i2, immutableDoubleArray2.b());
            if (i == i2) {
                immutableDoubleArray = ImmutableDoubleArray.h;
            } else {
                double[] dArr = immutableDoubleArray2.f12509c;
                int i3 = immutableDoubleArray2.f;
                immutableDoubleArray = new ImmutableDoubleArray(dArr, i + i3, i3 + i2);
            }
            return new AsList(immutableDoubleArray);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            Object[] array;
            array = toArray((Object[]) intFunction.apply(0));
            return array;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            return this.f12510c.toString();
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List, j$.util.List, j$.util.Collection, j$.lang.Iterable
        public final j$.util.Spliterator spliterator() {
            ImmutableDoubleArray immutableDoubleArray = this.f12510c;
            return Spliterators.spliterator(immutableDoubleArray.f12509c, immutableDoubleArray.f, immutableDoubleArray.g, 1040);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream stream() {
            return Collection.CC.$default$stream(this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    public ImmutableDoubleArray(double[] dArr, int i, int i2) {
        this.f12509c = dArr;
        this.f = i;
        this.g = i2;
    }

    public static boolean a(double d, double d2) {
        if (Double.doubleToLongBits(d) == Double.doubleToLongBits(d2)) {
            return true;
        }
        return false;
    }

    public final int b() {
        return this.g - this.f;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ImmutableDoubleArray) {
                ImmutableDoubleArray immutableDoubleArray = (ImmutableDoubleArray) obj;
                if (b() == immutableDoubleArray.b()) {
                    for (int i = 0; i < b(); i++) {
                        Preconditions.g(i, b());
                        double d = this.f12509c[this.f + i];
                        Preconditions.g(i, immutableDoubleArray.b());
                        if (a(d, immutableDoubleArray.f12509c[immutableDoubleArray.f + i])) {
                        }
                    }
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = 1;
        for (int i2 = this.f; i2 < this.g; i2++) {
            long doubleToLongBits = Double.doubleToLongBits(this.f12509c[i2]);
            i = (i * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        }
        return i;
    }

    public final String toString() {
        int i = this.g;
        int i2 = this.f;
        if (i == i2) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(b() * 5);
        sb.append('[');
        double[] dArr = this.f12509c;
        sb.append(dArr[i2]);
        while (true) {
            i2++;
            if (i2 < i) {
                sb.append(", ");
                sb.append(dArr[i2]);
            } else {
                sb.append(']');
                return sb.toString();
            }
        }
    }
}
