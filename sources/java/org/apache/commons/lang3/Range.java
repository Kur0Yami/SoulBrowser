package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Comparator;

/* loaded from: classes4.dex */
public class Range<T> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Comparator f22351c = ComparableComparator.f22352c;
    public transient int f;
    public final Number g;
    public final Number h;
    public transient String i;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class ComparableComparator implements Comparator {

        /* renamed from: c, reason: collision with root package name */
        public static final ComparableComparator f22352c;
        public static final /* synthetic */ ComparableComparator[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, org.apache.commons.lang3.Range$ComparableComparator] */
        static {
            ?? r0 = new Enum("INSTANCE", 0);
            f22352c = r0;
            f = new ComparableComparator[]{r0};
        }

        public static ComparableComparator valueOf(String str) {
            return (ComparableComparator) Enum.valueOf(ComparableComparator.class, str);
        }

        public static ComparableComparator[] values() {
            return (ComparableComparator[]) f.clone();
        }

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Range(Number number, Number number2) {
        if (((Comparable) number).compareTo(number2) < 1) {
            this.h = number;
            this.g = number2;
        } else {
            this.h = number2;
            this.g = number;
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj != null && obj.getClass() == getClass()) {
                Range range = (Range) obj;
                if (this.h.equals(range.h) && this.g.equals(range.g)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f;
        if (i == 0) {
            int hashCode = this.g.hashCode() + ((this.h.hashCode() + ((getClass().hashCode() + 629) * 37)) * 37);
            this.f = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        if (this.i == null) {
            this.i = "[" + this.h + ".." + this.g + "]";
        }
        return this.i;
    }
}
