package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.Serializable;
import java.util.WeakHashMap;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class Enums {

    /* loaded from: classes3.dex */
    public static final class StringConverter<T extends Enum<T>> extends Converter<String, T> implements Serializable {
        @Override // com.google.common.base.Converter
        public final Object b(Object obj) {
            return Enum.valueOf(null, (String) obj);
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (!(obj instanceof StringConverter)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    static {
        new WeakHashMap();
    }
}
