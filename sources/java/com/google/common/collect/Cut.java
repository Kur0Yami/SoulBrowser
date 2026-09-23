package com.google.common.collect;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.lang.Comparable;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class Cut<C extends Comparable> implements Comparable<Cut<C>>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Comparable f12271c;

    /* renamed from: com.google.common.collect.Cut$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12272a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f12272a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12272a[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class AboveAll extends Cut<Comparable<?>> {
        public static final AboveAll f = new Cut(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

        @Override // com.google.common.collect.Cut
        /* renamed from: b */
        public final int compareTo(Cut cut) {
            return cut == this ? 0 : 1;
        }

        @Override // com.google.common.collect.Cut
        public final void c(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.Cut, java.lang.Comparable
        public final int compareTo(Object obj) {
            if (((Cut) obj) == this) {
                return 0;
            }
            return 1;
        }

        @Override // com.google.common.collect.Cut
        public final void d(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override // com.google.common.collect.Cut
        public final Comparable e() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.Cut
        public final Comparable f() {
            throw null;
        }

        @Override // com.google.common.collect.Cut
        public final boolean g(Comparable comparable) {
            return false;
        }

        @Override // com.google.common.collect.Cut
        public final Comparable h() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.Cut
        public final int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.Cut
        public final BoundType i() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.Cut
        public final BoundType j() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.Cut
        public final Cut k() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.Cut
        public final Cut l() {
            throw new IllegalStateException();
        }

        public final String toString() {
            return "+∞";
        }
    }

    /* loaded from: classes3.dex */
    public static final class BelowAll extends Cut<Comparable<?>> {
        public static final BelowAll f = new Cut(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

        @Override // com.google.common.collect.Cut
        /* renamed from: b */
        public final int compareTo(Cut cut) {
            return cut == this ? 0 : -1;
        }

        @Override // com.google.common.collect.Cut
        public final void c(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override // com.google.common.collect.Cut, java.lang.Comparable
        public final int compareTo(Object obj) {
            if (((Cut) obj) == this) {
                return 0;
            }
            return -1;
        }

        @Override // com.google.common.collect.Cut
        public final void d(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.Cut
        public final Comparable e() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.Cut
        public final Comparable f() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.Cut
        public final boolean g(Comparable comparable) {
            return true;
        }

        @Override // com.google.common.collect.Cut
        public final Comparable h() {
            throw null;
        }

        @Override // com.google.common.collect.Cut
        public final int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.Cut
        public final BoundType i() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.Cut
        public final BoundType j() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.Cut
        public final Cut k() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.Cut
        public final Cut l() {
            throw new AssertionError("this statement should be unreachable");
        }

        public final String toString() {
            return "-∞";
        }
    }

    public Cut(Comparable comparable) {
        this.f12271c = comparable;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.Cut, com.google.common.collect.Cut$BelowValue] */
    public static BelowValue a(Comparable comparable) {
        comparable.getClass();
        return new Cut(comparable);
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(Cut cut) {
        if (cut == BelowAll.f) {
            return 1;
        }
        if (cut == AboveAll.f) {
            return -1;
        }
        Comparable comparable = cut.f12271c;
        Range range = Range.g;
        int compareTo = this.f12271c.compareTo(comparable);
        if (compareTo != 0) {
            return compareTo;
        }
        return Boolean.compare(this instanceof AboveValue, cut instanceof AboveValue);
    }

    public abstract void c(StringBuilder sb);

    public abstract void d(StringBuilder sb);

    public Comparable e() {
        return this.f12271c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Cut) {
            try {
                if (compareTo((Cut) obj) == 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    public abstract Comparable f();

    public abstract boolean g(Comparable comparable);

    public abstract Comparable h();

    public abstract int hashCode();

    public abstract BoundType i();

    public abstract BoundType j();

    public abstract Cut k();

    public abstract Cut l();

    /* loaded from: classes3.dex */
    public static final class AboveValue<C extends Comparable> extends Cut<C> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AboveValue(Comparable comparable) {
            super(comparable);
            comparable.getClass();
        }

        @Override // com.google.common.collect.Cut
        public final void c(StringBuilder sb) {
            sb.append('(');
            sb.append(this.f12271c);
        }

        @Override // com.google.common.collect.Cut, java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return compareTo((Cut) obj);
        }

        @Override // com.google.common.collect.Cut
        public final void d(StringBuilder sb) {
            sb.append(this.f12271c);
            sb.append(']');
        }

        @Override // com.google.common.collect.Cut
        public final Comparable f() {
            return this.f12271c;
        }

        @Override // com.google.common.collect.Cut
        public final boolean g(Comparable comparable) {
            Range range = Range.g;
            if (this.f12271c.compareTo(comparable) < 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.Cut
        public final Comparable h() {
            throw null;
        }

        @Override // com.google.common.collect.Cut
        public final int hashCode() {
            return ~this.f12271c.hashCode();
        }

        @Override // com.google.common.collect.Cut
        public final BoundType i() {
            return BoundType.f12251c;
        }

        @Override // com.google.common.collect.Cut
        public final BoundType j() {
            return BoundType.f;
        }

        @Override // com.google.common.collect.Cut
        public final Cut k() {
            throw null;
        }

        public final String toString() {
            return "/" + this.f12271c + "\\";
        }

        @Override // com.google.common.collect.Cut
        public final Cut l() {
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static final class BelowValue<C extends Comparable> extends Cut<C> {
        @Override // com.google.common.collect.Cut
        public final void c(StringBuilder sb) {
            sb.append('[');
            sb.append(this.f12271c);
        }

        @Override // com.google.common.collect.Cut, java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return compareTo((Cut) obj);
        }

        @Override // com.google.common.collect.Cut
        public final void d(StringBuilder sb) {
            sb.append(this.f12271c);
            sb.append(')');
        }

        @Override // com.google.common.collect.Cut
        public final Comparable f() {
            throw null;
        }

        @Override // com.google.common.collect.Cut
        public final boolean g(Comparable comparable) {
            Range range = Range.g;
            if (this.f12271c.compareTo(comparable) <= 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.Cut
        public final Comparable h() {
            return this.f12271c;
        }

        @Override // com.google.common.collect.Cut
        public final int hashCode() {
            return this.f12271c.hashCode();
        }

        @Override // com.google.common.collect.Cut
        public final BoundType i() {
            return BoundType.f;
        }

        @Override // com.google.common.collect.Cut
        public final BoundType j() {
            return BoundType.f12251c;
        }

        @Override // com.google.common.collect.Cut
        public final Cut l() {
            throw null;
        }

        public final String toString() {
            return "\\" + this.f12271c + "/";
        }

        @Override // com.google.common.collect.Cut
        public final Cut k() {
            return this;
        }
    }
}
