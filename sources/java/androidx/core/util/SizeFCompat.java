package androidx.core.util;

import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class SizeFCompat {

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class Api21Impl {
    }

    public final boolean equals(Object obj) {
        if (this == obj || (obj instanceof SizeFCompat)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(0.0f) ^ Float.floatToIntBits(0.0f);
    }

    public final String toString() {
        return "0.0x0.0";
    }
}
