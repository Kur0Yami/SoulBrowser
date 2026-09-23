package com.google.api.client.util;

/* loaded from: classes3.dex */
public final class Joiner {
    private final com.google.common.base.Joiner wrapped;

    private Joiner(com.google.common.base.Joiner joiner) {
        this.wrapped = joiner;
    }

    public static Joiner on(char c2) {
        return new Joiner(com.google.common.base.Joiner.d(c2));
    }

    public final String join(Iterable<?> iterable) {
        return this.wrapped.b(iterable);
    }
}
