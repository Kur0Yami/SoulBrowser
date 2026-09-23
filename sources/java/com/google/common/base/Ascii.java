package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Ascii {
    public static boolean a(char c2) {
        return c2 >= 'a' && c2 <= 'z';
    }

    public static boolean b(char c2) {
        return c2 >= 'A' && c2 <= 'Z';
    }

    public static String c(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (b(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c2 = charArray[i];
                    if (b(c2)) {
                        charArray[i] = (char) (c2 ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    public static String d(String str) {
        str.getClass();
        if (str.length() <= 30) {
            str = str.toString();
            if (str.length() <= 30) {
                return str;
            }
        }
        StringBuilder sb = new StringBuilder(30);
        sb.append((CharSequence) str, 0, 27);
        sb.append("...");
        return sb.toString();
    }
}
