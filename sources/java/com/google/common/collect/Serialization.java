package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
final class Serialization {

    /* loaded from: classes3.dex */
    public static final class FieldSetter<T> {
    }

    public static void a(Class cls, String str) {
        try {
            cls.getDeclaredField(str).setAccessible(true);
        } catch (NoSuchFieldException e) {
            throw new AssertionError(e);
        }
    }
}
