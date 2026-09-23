package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Converter;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Floats extends FloatsMethodsForWeb {

    /* loaded from: classes3.dex */
    public static final class FloatArrayAsList extends AbstractList<Float> implements RandomAccess, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final int f12507c;
        public final int f;

        public FloatArrayAsList(int i, int i2) {
            this.f12507c = i;
            this.f = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            if ((obj instanceof Float) && this.f12507c < this.f) {
                throw null;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            if (obj != this) {
                if (obj instanceof FloatArrayAsList) {
                    int size = size();
                    if (((FloatArrayAsList) obj).size() != size) {
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

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            Preconditions.g(i, size());
            throw null;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            if (this.f12507c >= this.f) {
                return 1;
            }
            throw null;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Float) {
                if (this.f12507c < this.f) {
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
            if ((obj instanceof Float) && this.f - 1 >= this.f12507c) {
                throw null;
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i, Object obj) {
            Preconditions.g(i, size());
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f - this.f12507c;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List subList(int i, int i2) {
            Preconditions.j(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.f12507c;
            return new FloatArrayAsList(i + i3, i3 + i2);
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            new StringBuilder(size() * 12).append('[');
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FloatConverter extends Converter<String, Float> implements Serializable {
        @Override // com.google.common.base.Converter
        public final Object b(Object obj) {
            return Float.valueOf((String) obj);
        }

        public final String toString() {
            return "Floats.stringConverter()";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class LexicographicalComparator implements Comparator<float[]> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ LexicographicalComparator[] f12508c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        LexicographicalComparator EF5;

        public static LexicographicalComparator valueOf(String str) {
            return (LexicographicalComparator) Enum.valueOf(LexicographicalComparator.class, str);
        }

        public static LexicographicalComparator[] values() {
            return (LexicographicalComparator[]) f12508c.clone();
        }

        @Override // java.util.Comparator
        public final int compare(float[] fArr, float[] fArr2) {
            float[] fArr3 = fArr;
            float[] fArr4 = fArr2;
            int min = Math.min(fArr3.length, fArr4.length);
            for (int i = 0; i < min; i++) {
                int compare = Float.compare(fArr3[i], fArr4[i]);
                if (compare != 0) {
                    return compare;
                }
            }
            return fArr3.length - fArr4.length;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Floats.lexicographicalComparator()";
        }
    }
}
