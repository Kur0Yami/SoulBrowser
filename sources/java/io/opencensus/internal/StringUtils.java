package io.opencensus.internal;

/* loaded from: classes3.dex */
public final class StringUtils {
    public static boolean a(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt < ' ' || charAt > '~') {
                return false;
            }
        }
        return true;
    }
}
