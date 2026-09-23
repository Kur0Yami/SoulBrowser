package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class ReverseOrdering<T> extends Ordering<T> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Ordering f12388c;

    public ReverseOrdering(Ordering ordering) {
        this.f12388c = ordering;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f12388c.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReverseOrdering) {
            return this.f12388c.equals(((ReverseOrdering) obj).f12388c);
        }
        return false;
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering g() {
        return this.f12388c;
    }

    public final int hashCode() {
        return -this.f12388c.hashCode();
    }

    public final String toString() {
        return this.f12388c + ".reverse()";
    }
}
