package org.apache.commons.lang3;

/* loaded from: classes4.dex */
public class CharSequenceUtils {
    public static int a(CharSequence charSequence, CharSequence charSequence2, int i) {
        if (charSequence != null && charSequence2 != null) {
            if (charSequence instanceof String) {
                return ((String) charSequence).indexOf(charSequence2.toString(), i);
            }
            if (charSequence instanceof StringBuilder) {
                return ((StringBuilder) charSequence).indexOf(charSequence2.toString(), i);
            }
            if (charSequence instanceof StringBuffer) {
                return ((StringBuffer) charSequence).indexOf(charSequence2.toString(), i);
            }
            return charSequence.toString().indexOf(charSequence2.toString(), i);
        }
        return -1;
    }

    public static boolean b(CharSequence charSequence, boolean z, int i, CharSequence charSequence2, int i2) {
        int i3 = 0;
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return ((String) charSequence).regionMatches(z, i, (String) charSequence2, 0, i2);
        }
        int length = charSequence.length() - i;
        int length2 = charSequence2.length();
        if (i >= 0 && i2 >= 0 && length >= i2 && length2 >= i2) {
            int i4 = i;
            int i5 = i2;
            while (true) {
                int i6 = i5 - 1;
                if (i5 > 0) {
                    int i7 = i4 + 1;
                    char charAt = charSequence.charAt(i4);
                    int i8 = i3 + 1;
                    char charAt2 = charSequence2.charAt(i3);
                    if (charAt != charAt2) {
                        if (z) {
                            char upperCase = Character.toUpperCase(charAt);
                            char upperCase2 = Character.toUpperCase(charAt2);
                            if (upperCase != upperCase2 && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                                return false;
                            }
                        } else {
                            return false;
                        }
                    }
                    i4 = i7;
                    i3 = i8;
                    i5 = i6;
                } else {
                    return true;
                }
            }
        } else {
            return false;
        }
    }
}
