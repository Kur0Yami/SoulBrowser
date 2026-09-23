package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class ComparatorOrdering<T> extends Ordering<T> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Comparator f12266c;

    public ComparatorOrdering(Comparator comparator) {
        comparator.getClass();
        this.f12266c = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f12266c.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ComparatorOrdering) {
            return this.f12266c.equals(((ComparatorOrdering) obj).f12266c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12266c.hashCode();
    }

    public final String toString() {
        return this.f12266c.toString();
    }
}
