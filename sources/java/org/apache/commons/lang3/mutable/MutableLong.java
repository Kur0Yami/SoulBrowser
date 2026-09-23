package org.apache.commons.lang3.mutable;

/* loaded from: classes4.dex */
public class MutableLong extends Number implements Comparable<MutableLong>, Mutable<Number> {
    @Override // java.lang.Comparable
    public final int compareTo(MutableLong mutableLong) {
        mutableLong.getClass();
        return Long.compare(0L, 0L);
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return 0L;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MutableLong) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return (float) 0;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return 0L;
    }

    public final int hashCode() {
        return (int) 0;
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) 0;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return 0L;
    }

    public final String toString() {
        return String.valueOf(0L);
    }
}
