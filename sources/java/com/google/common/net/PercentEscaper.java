package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.UnicodeEscaper;

@GwtCompatible
/* loaded from: classes3.dex */
public final class PercentEscaper extends UnicodeEscaper {
    static {
        "0123456789ABCDEF".toCharArray();
    }

    public PercentEscaper(String str, boolean z) {
        if (!str.matches(".*[0-9A-Za-z].*")) {
            String concat = str.concat("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
            if (z && concat.contains(" ")) {
                throw new IllegalArgumentException("plusForSpace cannot be specified when space is a 'safe' character");
            }
            char[] charArray = concat.toCharArray();
            int i = -1;
            for (char c2 : charArray) {
                i = Math.max((int) c2, i);
            }
            boolean[] zArr = new boolean[i + 1];
            for (char c3 : charArray) {
                zArr[c3] = true;
            }
            return;
        }
        throw new IllegalArgumentException("Alphanumeric characters are always 'safe' and should not be explicitly specified");
    }
}
