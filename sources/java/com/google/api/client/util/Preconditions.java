package com.google.api.client.util;

/* loaded from: classes3.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean z) {
        com.google.common.base.Preconditions.d(z);
    }

    public static <T> T checkNotNull(T t, Object obj) {
        com.google.common.base.Preconditions.h(t, obj);
        return t;
    }

    public static void checkState(boolean z) {
        com.google.common.base.Preconditions.l(z);
    }

    public static void checkArgument(boolean z, Object obj) {
        com.google.common.base.Preconditions.e(z, obj);
    }

    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    public static void checkState(boolean z, Object obj) {
        com.google.common.base.Preconditions.m(z, obj);
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(com.google.common.base.Strings.a(str, objArr));
        }
    }

    public static <T> T checkNotNull(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(com.google.common.base.Strings.a(str, objArr));
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(com.google.common.base.Strings.a(str, objArr));
        }
    }
}
