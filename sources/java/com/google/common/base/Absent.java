package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.FluentIterable;

@GwtCompatible
/* loaded from: classes3.dex */
final class Absent<T> extends Optional<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final Absent f12148c = new Object();

    @Override // com.google.common.base.Optional
    public final Object d() {
        return null;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.common.base.Optional
    public final Object c(FluentIterable fluentIterable) {
        return fluentIterable;
    }
}
