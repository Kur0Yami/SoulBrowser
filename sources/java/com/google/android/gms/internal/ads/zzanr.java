package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzanr {
    public static long a(String str) {
        String str2 = zzfj.f7405a;
        String[] split2 = str.split("\\.", 2);
        long j = 0;
        for (String str3 : split2[0].split(":", -1)) {
            j = (j * 60) + Long.parseLong(str3);
        }
        long j2 = j * 1000;
        if (split2.length == 2) {
            String trim = split2[1].trim();
            if (trim.length() == 3) {
                j2 += Long.parseLong(trim);
            } else {
                throw new IllegalArgumentException("Expected 3 decimal places, got: ".concat(trim));
            }
        }
        return j2 * 1000;
    }

    public static float b(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }
}
