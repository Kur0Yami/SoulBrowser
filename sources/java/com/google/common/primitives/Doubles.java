package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Converter;
import com.google.common.base.Preconditions;
import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.List;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Comparator;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;
import java.util.regex.Pattern;
import java.util.stream.Stream;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Doubles extends DoublesMethodsForWeb {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f12504a = 0;

    /* loaded from: classes3.dex */
    public static final class DoubleArrayAsList extends AbstractList<Double> implements RandomAccess, Serializable, List {

        /* renamed from: c, reason: collision with root package name */
        public final int f12505c;
        public final int f;

        public DoubleArrayAsList(int i, int i2) {
            this.f12505c = i;
            this.f = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            if (obj instanceof Double) {
                int i = Doubles.f12504a;
                if (this.f12505c < this.f) {
                    throw null;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            if (obj != this) {
                if (obj instanceof DoubleArrayAsList) {
                    int size = size();
                    if (((DoubleArrayAsList) obj).size() != size) {
                        return false;
                    }
                    if (size <= 0) {
                        return true;
                    }
                    throw null;
                }
                return super.equals(obj);
            }
            return true;
        }

        @Override // java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
        public /* synthetic */ void forEach(Consumer consumer) {
            Iterable.CC.$default$forEach(this, consumer);
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            Preconditions.g(i, size());
            throw null;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            if (this.f12505c >= this.f) {
                return 1;
            }
            throw null;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Double) {
                int i = Doubles.f12504a;
                if (this.f12505c < this.f) {
                    throw null;
                }
                return -1;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Double) {
                int i = Doubles.f12504a;
                if (this.f - 1 >= this.f12505c) {
                    throw null;
                }
                return -1;
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

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i, Object obj) {
            Preconditions.g(i, size());
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f - this.f12505c;
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
            Preconditions.j(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.f12505c;
            return new DoubleArrayAsList(i + i3, i3 + i2);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ Object[] toArray(IntFunction intFunction) {
            Object[] array;
            array = toArray((Object[]) intFunction.apply(0));
            return array;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            new StringBuilder(size() * 12).append('[');
            throw null;
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream parallelStream() {
            return Collection.CC.$default$parallelStream(this);
        }

        @Override // java.util.Collection, java.lang.Iterable, java.util.List, j$.util.List, j$.util.Collection, j$.lang.Iterable
        public final j$.util.Spliterator spliterator() {
            return Spliterators.spliterator((double[]) null, this.f12505c, this.f, 0);
        }

        @Override // java.util.Collection, j$.util.Collection
        public /* synthetic */ j$.util.stream.Stream stream() {
            return Collection.CC.$default$stream(this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class DoubleConverter extends Converter<String, Double> implements Serializable {
        @Override // com.google.common.base.Converter
        public final Object b(Object obj) {
            return Double.valueOf((String) obj);
        }

        public final String toString() {
            return "Doubles.stringConverter()";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class LexicographicalComparator implements Comparator<double[]> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ LexicographicalComparator[] f12506c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        LexicographicalComparator EF5;

        public static LexicographicalComparator valueOf(String str) {
            return (LexicographicalComparator) Enum.valueOf(LexicographicalComparator.class, str);
        }

        public static LexicographicalComparator[] values() {
            return (LexicographicalComparator[]) f12506c.clone();
        }

        @Override // java.util.Comparator
        public final int compare(double[] dArr, double[] dArr2) {
            double[] dArr3 = dArr;
            double[] dArr4 = dArr2;
            int min = Math.min(dArr3.length, dArr4.length);
            for (int i = 0; i < min; i++) {
                int compare = Double.compare(dArr3[i], dArr4[i]);
                if (compare != 0) {
                    return compare;
                }
            }
            return dArr3.length - dArr4.length;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Doubles.lexicographicalComparator()";
        }
    }

    static {
        Pattern.compile("[+-]?(?:NaN|Infinity|(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)(?:[eE][+-]?\\d+#)?[fFdD]?|0[xX](?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)[pP][+-]?\\d+#[fFdD]?)".replace("#", "+"));
    }
}
