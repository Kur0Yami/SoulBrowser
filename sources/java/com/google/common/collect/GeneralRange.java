package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Comparator;

@GwtCompatible
/* loaded from: classes3.dex */
final class GeneralRange<T> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Comparator f12280c;
    public final boolean f;
    public final Object g;
    public final BoundType h;
    public final boolean i;
    public final Object j;
    public final BoundType k;

    public GeneralRange(Comparator comparator, boolean z, Object obj, BoundType boundType, boolean z2, Object obj2, BoundType boundType2) {
        boolean z3;
        comparator.getClass();
        this.f12280c = comparator;
        this.f = z;
        this.i = z2;
        this.g = obj;
        boundType.getClass();
        this.h = boundType;
        this.j = obj2;
        boundType2.getClass();
        this.k = boundType2;
        if (z) {
            comparator.compare(obj, obj);
        }
        if (z2) {
            comparator.compare(obj2, obj2);
        }
        if (z && z2) {
            int compare = comparator.compare(obj, obj2);
            if (compare <= 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            Preconditions.f(z3, "lowerEndpoint (%s) > upperEndpoint (%s)", obj, obj2);
            if (compare == 0) {
                BoundType boundType3 = BoundType.f12251c;
                Preconditions.d((boundType == boundType3 && boundType2 == boundType3) ? false : true);
            }
        }
    }

    public final boolean a(Object obj) {
        if (!d(obj) && !c(obj)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final GeneralRange b(GeneralRange generalRange) {
        boolean z;
        int compare;
        boolean z2;
        int compare2;
        BoundType boundType;
        Object obj;
        int compare3;
        boolean z3 = generalRange.i;
        boolean z4 = generalRange.f;
        BoundType boundType2 = generalRange.k;
        Object obj2 = generalRange.j;
        BoundType boundType3 = generalRange.h;
        Object obj3 = generalRange.g;
        Comparator comparator = generalRange.f12280c;
        Comparator comparator2 = this.f12280c;
        Preconditions.d(comparator2.equals(comparator));
        BoundType boundType4 = BoundType.f12251c;
        boolean z5 = this.f;
        if (!z5) {
            z = z4;
        } else {
            Object obj4 = this.g;
            if (z4 && ((compare = comparator2.compare(obj4, obj3)) < 0 || (compare == 0 && boundType3 == boundType4))) {
                z = z5;
            } else {
                boundType3 = this.h;
                z = z5;
                obj3 = obj4;
            }
        }
        boolean z6 = this.i;
        if (!z6) {
            z2 = z3;
        } else {
            Object obj5 = this.j;
            if (z3 && ((compare2 = comparator2.compare(obj5, obj2)) > 0 || (compare2 == 0 && boundType2 == boundType4))) {
                z2 = z6;
            } else {
                boundType2 = this.k;
                z2 = z6;
                obj2 = obj5;
            }
        }
        if (z && z2 && ((compare3 = comparator2.compare(obj3, obj2)) > 0 || (compare3 == 0 && boundType3 == boundType4 && boundType2 == boundType4))) {
            boundType2 = BoundType.f;
            boundType = boundType4;
            obj = obj2;
        } else {
            boundType = boundType3;
            obj = obj3;
        }
        return new GeneralRange(this.f12280c, z, obj, boundType, z2, obj2, boundType2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean c(Object obj) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (!this.i) {
            return false;
        }
        int compare = this.f12280c.compare(obj, this.j);
        if (compare > 0) {
            z = true;
        } else {
            z = false;
        }
        if (compare == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.k == BoundType.f12251c) {
            z3 = true;
        }
        return (z2 & z3) | z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d(Object obj) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (!this.f) {
            return false;
        }
        int compare = this.f12280c.compare(obj, this.g);
        if (compare < 0) {
            z = true;
        } else {
            z = false;
        }
        if (compare == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.h == BoundType.f12251c) {
            z3 = true;
        }
        return (z2 & z3) | z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof GeneralRange) {
            GeneralRange generalRange = (GeneralRange) obj;
            if (this.f12280c.equals(generalRange.f12280c) && this.f == generalRange.f && this.i == generalRange.i && this.h.equals(generalRange.h) && this.k.equals(generalRange.k) && Objects.equals(this.g, generalRange.g) && Objects.equals(this.j, generalRange.j)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f12280c, this.g, this.h, this.j, this.k);
    }

    public final String toString() {
        char c2;
        Object obj;
        Object obj2;
        char c3;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f12280c);
        sb.append(":");
        BoundType boundType = this.h;
        BoundType boundType2 = BoundType.f;
        if (boundType == boundType2) {
            c2 = '[';
        } else {
            c2 = '(';
        }
        sb.append(c2);
        if (this.f) {
            obj = this.g;
        } else {
            obj = "-∞";
        }
        sb.append(obj);
        sb.append(',');
        if (this.i) {
            obj2 = this.j;
        } else {
            obj2 = "∞";
        }
        sb.append(obj2);
        if (this.k == boundType2) {
            c3 = ']';
        } else {
            c3 = ')';
        }
        sb.append(c3);
        return sb.toString();
    }
}
