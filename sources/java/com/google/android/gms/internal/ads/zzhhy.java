package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.StringReader;

/* loaded from: classes.dex */
public final class zzhhy {
    public static boolean a(String str) {
        int length = str.length();
        int i = 0;
        while (i != length) {
            char charAt = str.charAt(i);
            int i2 = i + 1;
            if (Character.isSurrogate(charAt)) {
                if (Character.isLowSurrogate(charAt) || i2 == length || !Character.isLowSurrogate(str.charAt(i2))) {
                    return false;
                }
                i += 2;
            } else {
                i = i2;
            }
        }
        return true;
    }

    public static zzhxj b(String str) {
        try {
            return zzhhw.a(new zzhyo(new StringReader(str)));
        } catch (NumberFormatException e) {
            throw new IOException(e);
        }
    }
}
