package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Booleans {

    /* loaded from: classes3.dex */
    public static final class BooleanArrayAsList extends AbstractList<Boolean> implements RandomAccess, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final int f12498c;
        public final int f;

        public BooleanArrayAsList(int i, int i2) {
            this.f12498c = i;
            this.f = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            if ((obj instanceof Boolean) && this.f12498c < this.f) {
                throw null;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            if (obj != this) {
                if (obj instanceof BooleanArrayAsList) {
                    int size = size();
                    if (((BooleanArrayAsList) obj).size() != size) {
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
            if (this.f12498c >= this.f) {
                return 1;
            }
            throw null;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Boolean) {
                if (this.f12498c < this.f) {
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
            if ((obj instanceof Boolean) && this.f - 1 >= this.f12498c) {
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
            return this.f - this.f12498c;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List subList(int i, int i2) {
            Preconditions.j(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.f12498c;
            return new BooleanArrayAsList(i + i3, i3 + i2);
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            new StringBuilder(size() * 7);
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public enum BooleanComparator implements Comparator<Boolean> {
        /* JADX INFO: Fake field, exist only in values array */
        TRUE_FIRST(1, "Booleans.trueFirst()"),
        /* JADX INFO: Fake field, exist only in values array */
        FALSE_FIRST(-1, "Booleans.falseFirst()");


        /* renamed from: c, reason: collision with root package name */
        public final int f12499c;
        public final String f;

        BooleanComparator(int i, String str) {
            this.f12499c = i;
            this.f = str;
        }

        @Override // java.util.Comparator
        public final int compare(Boolean bool, Boolean bool2) {
            int i;
            Boolean bool3 = bool2;
            boolean booleanValue = bool.booleanValue();
            int i2 = 0;
            int i3 = this.f12499c;
            if (booleanValue) {
                i = i3;
            } else {
                i = 0;
            }
            if (bool3.booleanValue()) {
                i2 = i3;
            }
            return i2 - i;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.f;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class LexicographicalComparator implements Comparator<boolean[]> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ LexicographicalComparator[] f12500c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        LexicographicalComparator EF5;

        public static LexicographicalComparator valueOf(String str) {
            return (LexicographicalComparator) Enum.valueOf(LexicographicalComparator.class, str);
        }

        public static LexicographicalComparator[] values() {
            return (LexicographicalComparator[]) f12500c.clone();
        }

        @Override // java.util.Comparator
        public final int compare(boolean[] zArr, boolean[] zArr2) {
            boolean[] zArr3 = zArr;
            boolean[] zArr4 = zArr2;
            int min = Math.min(zArr3.length, zArr4.length);
            for (int i = 0; i < min; i++) {
                int compare = Boolean.compare(zArr3[i], zArr4[i]);
                if (compare != 0) {
                    return compare;
                }
            }
            return zArr3.length - zArr4.length;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Booleans.lexicographicalComparator()";
        }
    }
}
