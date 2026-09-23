package io.opencensus.internal;

/* loaded from: classes3.dex */
public final class Utils {
    public static void a(String str, boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException(str);
        }
    }

    public static void b(Object obj, String str) {
        if (obj != null) {
        } else {
            throw new NullPointerException(str);
        }
    }
}
