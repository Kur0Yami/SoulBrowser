package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.Cut;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.lang.Comparable;

@Immutable
@GwtCompatible
/* loaded from: classes3.dex */
public final class Range<C extends Comparable> implements Predicate<C>, Serializable {
    public static final Range g = new Range(Cut.BelowAll.f, Cut.AboveAll.f);

    /* renamed from: c, reason: collision with root package name */
    public final Cut f12384c;
    public final Cut f;

    /* renamed from: com.google.common.collect.Range$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12385a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f12385a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12385a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class RangeLexOrdering extends Ordering<Range<?>> implements Serializable {

        /* renamed from: c, reason: collision with root package name */
        public static final Ordering f12386c = new Object();

        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Range range = (Range) obj;
            Range range2 = (Range) obj2;
            return ComparisonChain.f12267a.a(range.f12384c, range2.f12384c).a(range.f, range2.f).b();
        }
    }

    public Range(Cut cut, Cut cut2) {
        cut.getClass();
        this.f12384c = cut;
        cut2.getClass();
        this.f = cut2;
        if (cut.compareTo(cut2) <= 0 && cut != Cut.AboveAll.f && cut2 != Cut.BelowAll.f) {
            return;
        }
        StringBuilder sb = new StringBuilder("Invalid range: ");
        StringBuilder sb2 = new StringBuilder(16);
        cut.c(sb2);
        sb2.append("..");
        cut2.d(sb2);
        sb.append(sb2.toString());
        throw new IllegalArgumentException(sb.toString());
    }

    public static Range b(Comparable comparable, BoundType boundType) {
        int ordinal = boundType.ordinal();
        Cut.AboveAll aboveAll = Cut.AboveAll.f;
        if (ordinal != 0) {
            if (ordinal == 1) {
                return new Range(Cut.a(comparable), aboveAll);
            }
            throw new AssertionError();
        }
        return new Range(new Cut.AboveValue(comparable), aboveAll);
    }

    public static Range g(Comparable comparable, BoundType boundType, Comparable comparable2, BoundType boundType2) {
        Cut a2;
        Cut aboveValue;
        BoundType boundType3 = BoundType.f12251c;
        if (boundType == boundType3) {
            a2 = new Cut.AboveValue(comparable);
        } else {
            a2 = Cut.a(comparable);
        }
        if (boundType2 == boundType3) {
            aboveValue = Cut.a(comparable2);
        } else {
            aboveValue = new Cut.AboveValue(comparable2);
        }
        return new Range(a2, aboveValue);
    }

    public static Range h(Comparable comparable, BoundType boundType) {
        int ordinal = boundType.ordinal();
        Cut.BelowAll belowAll = Cut.BelowAll.f;
        if (ordinal != 0) {
            if (ordinal == 1) {
                return new Range(belowAll, new Cut.AboveValue(comparable));
            }
            throw new AssertionError();
        }
        return new Range(belowAll, Cut.a(comparable));
    }

    public final boolean a(Comparable comparable) {
        comparable.getClass();
        if (this.f12384c.g(comparable) && !this.f.g(comparable)) {
            return true;
        }
        return false;
    }

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        return a((Comparable) obj);
    }

    public final boolean c() {
        if (this.f != Cut.AboveAll.f) {
            return true;
        }
        return false;
    }

    public final Range d(Range range) {
        boolean z;
        Cut cut = range.f12384c;
        Cut cut2 = this.f12384c;
        int compareTo = cut2.compareTo(cut);
        Cut cut3 = range.f;
        Cut cut4 = this.f;
        int compareTo2 = cut4.compareTo(cut3);
        if (compareTo >= 0 && compareTo2 <= 0) {
            return this;
        }
        if (compareTo <= 0 && compareTo2 >= 0) {
            return range;
        }
        if (compareTo < 0) {
            cut2 = range.f12384c;
        }
        if (compareTo2 <= 0) {
            cut3 = cut4;
        }
        if (cut2.compareTo(cut3) <= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.f(z, "intersection is undefined for disconnected ranges %s and %s", this, range);
        return new Range(cut2, cut3);
    }

    public final boolean e(Range range) {
        if (this.f12384c.compareTo(range.f) <= 0 && range.f12384c.compareTo(this.f) <= 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.common.base.Predicate
    public final boolean equals(Object obj) {
        if (obj instanceof Range) {
            Range range = (Range) obj;
            if (this.f12384c.equals(range.f12384c) && this.f.equals(range.f)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() {
        return this.f12384c.equals(this.f);
    }

    public final int hashCode() {
        return (this.f12384c.hashCode() * 31) + this.f.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(16);
        this.f12384c.c(sb);
        sb.append("..");
        this.f.d(sb);
        return sb.toString();
    }
}
