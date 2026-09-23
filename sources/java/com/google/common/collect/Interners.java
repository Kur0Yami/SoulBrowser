package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class Interners {

    /* loaded from: classes3.dex */
    public static class InternerBuilder {
    }

    /* loaded from: classes3.dex */
    public static final class InternerFunction<E> implements Function<E, E> {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (!(obj instanceof InternerFunction)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class InternerImpl<E> implements Interner<E> {
    }
}
