package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class CompoundOrdering<T> extends Ordering<T> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Comparator[] f12269c;

    public CompoundOrdering(Ordering ordering, Comparator comparator) {
        this.f12269c = new Comparator[]{ordering, comparator};
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = 0;
        while (true) {
            Comparator[] comparatorArr = this.f12269c;
            if (i >= comparatorArr.length) {
                return 0;
            }
            int compare = comparatorArr[i].compare(obj, obj2);
            if (compare != 0) {
                return compare;
            }
            i++;
        }
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CompoundOrdering) {
            return Arrays.equals(this.f12269c, ((CompoundOrdering) obj).f12269c);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f12269c);
    }

    public final String toString() {
        return android.support.v4.media.a.p(new StringBuilder("Ordering.compound("), Arrays.toString(this.f12269c), ")");
    }
}
