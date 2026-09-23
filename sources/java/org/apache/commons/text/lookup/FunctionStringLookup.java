package org.apache.commons.text.lookup;

import j$.util.Objects;
import java.util.function.Function;

/* loaded from: classes4.dex */
final class FunctionStringLookup<V> extends AbstractStringLookup {
    public final Function b;

    public FunctionStringLookup(Function function) {
        this.b = function;
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        Function function = this.b;
        if (function == null) {
            return null;
        }
        try {
            return Objects.toString(function.apply(str), null);
        } catch (IllegalArgumentException | NullPointerException | SecurityException unused) {
            return null;
        }
    }

    public final String toString() {
        return super.toString() + " [function=" + this.b + "]";
    }
}
