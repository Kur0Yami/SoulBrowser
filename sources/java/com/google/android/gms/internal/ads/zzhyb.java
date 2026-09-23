package com.google.android.gms.internal.ads;

import java.math.BigDecimal;

/* loaded from: classes.dex */
public final class zzhyb {
    public static BigDecimal a(String str) {
        b(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < 10000) {
            return bigDecimal;
        }
        throw new NumberFormatException("Number has unsupported scale: ".concat(str));
    }

    public static void b(String str) {
        if (str.length() <= 10000) {
            return;
        }
        String substring = str.substring(0, 30);
        throw new NumberFormatException(android.support.v4.media.a.q(new StringBuilder(String.valueOf(substring).length() + 28), "Number string too large: ", substring, "..."));
    }
}
