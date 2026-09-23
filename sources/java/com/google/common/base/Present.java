package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.FluentIterable;

@GwtCompatible
/* loaded from: classes3.dex */
final class Present<T> extends Optional<T> {

    /* renamed from: c, reason: collision with root package name */
    public final Object f12182c;

    public Present(Object obj) {
        this.f12182c = obj;
    }

    @Override // com.google.common.base.Optional
    public final Object c(FluentIterable fluentIterable) {
        return this.f12182c;
    }

    @Override // com.google.common.base.Optional
    public final Object d() {
        return this.f12182c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Present) {
            return this.f12182c.equals(((Present) obj).f12182c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12182c.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.f12182c + ")";
    }
}
