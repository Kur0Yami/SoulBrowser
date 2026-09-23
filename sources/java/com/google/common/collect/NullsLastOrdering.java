package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class NullsLastOrdering<T> extends Ordering<T> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Ordering f12379c;

    public NullsLastOrdering(Ordering ordering) {
        this.f12379c = ordering;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        if (obj == obj2) {
            return 0;
        }
        if (obj == null) {
            return 1;
        }
        if (obj2 == null) {
            return -1;
        }
        return this.f12379c.compare(obj, obj2);
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering d() {
        return this.f12379c.d();
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering e() {
        return this;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof NullsLastOrdering) {
            return this.f12379c.equals(((NullsLastOrdering) obj).f12379c);
        }
        return false;
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering g() {
        return this.f12379c.g().d();
    }

    public final int hashCode() {
        return this.f12379c.hashCode() ^ (-921210296);
    }

    public final String toString() {
        return this.f12379c + ".nullsLast()";
    }
}
