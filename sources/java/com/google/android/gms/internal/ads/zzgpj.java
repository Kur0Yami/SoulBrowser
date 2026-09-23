package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgpj {
    public static String a(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (c(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c2 = charArray[i];
                    if (c(c2)) {
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

    public static String b(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt >= 'a' && charAt <= 'z') {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c2 = charArray[i];
                    if (c2 >= 'a' && c2 <= 'z') {
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

    public static boolean c(char c2) {
        return c2 >= 'A' && c2 <= 'Z';
    }

    public static boolean d(String str, CharSequence charSequence) {
        char c2;
        int length = str.length();
        if (str != charSequence) {
            if (length == charSequence.length()) {
                for (int i = 0; i < length; i++) {
                    if (str.charAt(i) == charSequence.charAt(i) || ((c2 = (char) ((r3 | ' ') - 97)) < 26 && c2 == ((char) ((r4 | ' ') - 97)))) {
                    }
                }
                return true;
            }
            return false;
        }
        return true;
    }
}
