package androidx.room.util;

import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public class ViewInfo {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return "ViewInfo{name='null', sql='null'}";
    }
}
