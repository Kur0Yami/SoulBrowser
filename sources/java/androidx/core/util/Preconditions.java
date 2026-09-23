package androidx.core.util;

import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public final class Preconditions {
    public static void a(String str, boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException(str);
        }
    }

    public static void b(int i) {
        if (i >= 0) {
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static void c(Object obj, String str) {
        if (obj != null) {
        } else {
            throw new NullPointerException(str);
        }
    }
}
