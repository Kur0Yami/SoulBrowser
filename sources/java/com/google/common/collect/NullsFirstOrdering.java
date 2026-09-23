package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;

@GwtCompatible
/* loaded from: classes3.dex */
final class NullsFirstOrdering<T> extends Ordering<T> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Ordering f12378c;

    public NullsFirstOrdering(Ordering ordering) {
        this.f12378c = ordering;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        if (obj == obj2) {
            return 0;
        }
        if (obj == null) {
            return -1;
        }
        if (obj2 == null) {
            return 1;
        }
        return this.f12378c.compare(obj, obj2);
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering d() {
        return this;
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering e() {
        return this.f12378c.e();
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof NullsFirstOrdering) {
            return this.f12378c.equals(((NullsFirstOrdering) obj).f12378c);
        }
        return false;
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering g() {
        return this.f12378c.g().e();
    }

    public final int hashCode() {
        return this.f12378c.hashCode() ^ 957692532;
    }

    public final String toString() {
        return this.f12378c + ".nullsFirst()";
    }
}
