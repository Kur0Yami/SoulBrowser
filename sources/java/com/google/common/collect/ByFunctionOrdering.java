package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import j$.util.Objects;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class ByFunctionOrdering<F, T> extends Ordering<F> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Function f12252c;
    public final Ordering f;

    public ByFunctionOrdering(Function function, Ordering ordering) {
        this.f12252c = function;
        this.f = ordering;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Function function = this.f12252c;
        return this.f.compare(function.apply(obj), function.apply(obj2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByFunctionOrdering) {
            ByFunctionOrdering byFunctionOrdering = (ByFunctionOrdering) obj;
            if (this.f12252c.equals(byFunctionOrdering.f12252c) && this.f.equals(byFunctionOrdering.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f12252c, this.f);
    }

    public final String toString() {
        return this.f + ".onResultOf(" + this.f12252c + ")";
    }
}
