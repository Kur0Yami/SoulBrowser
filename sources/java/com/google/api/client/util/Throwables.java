package com.google.api.client.util;

/* loaded from: classes3.dex */
public final class Throwables {
    private Throwables() {
    }

    public static RuntimeException propagate(Throwable th) {
        com.google.common.base.Throwables.a(th);
        throw new RuntimeException(th);
    }

    public static void propagateIfPossible(Throwable th) {
        if (th != null) {
            com.google.common.base.Throwables.a(th);
        }
    }

    public static <X extends Throwable> void propagateIfPossible(Throwable th, Class<X> cls) {
        Object obj = com.google.common.base.Throwables.f12191a;
        if (th != null && cls.isInstance(th)) {
            throw cls.cast(th);
        }
        if (th != null) {
            com.google.common.base.Throwables.a(th);
        }
    }
}
