package androidx.browser.trusted;

import java.util.Arrays;

/* loaded from: classes.dex */
final class TokenContents {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TokenContents.class == obj.getClass()) {
            return Arrays.equals((byte[]) null, (byte[]) null);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode((byte[]) null);
    }
}
