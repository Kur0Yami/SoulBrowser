package org.apache.commons.lang3;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class StringUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f22358a = 0;

    static {
        Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
    }

    public static boolean a(String str, char... cArr) {
        if (!c(str) && !ArrayUtils.b(cArr)) {
            int length = str.length();
            int length2 = cArr.length;
            int i = length - 1;
            int i2 = length2 - 1;
            for (int i3 = 0; i3 < length; i3++) {
                char charAt = str.charAt(i3);
                for (int i4 = 0; i4 < length2; i4++) {
                    if (cArr[i4] == charAt) {
                        if (Character.isHighSurrogate(charAt) && i4 != i2) {
                            if (i3 < i && cArr[i4 + 1] == str.charAt(i3 + 1)) {
                                return true;
                            }
                        } else {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean b(String str, char... cArr) {
        if (str != null && cArr != null) {
            int length = str.length();
            int i = length - 1;
            int length2 = cArr.length;
            int i2 = length2 - 1;
            for (int i3 = 0; i3 < length; i3++) {
                char charAt = str.charAt(i3);
                for (int i4 = 0; i4 < length2; i4++) {
                    if (cArr[i4] == charAt && (!Character.isHighSurrogate(charAt) || i4 == i2 || (i3 < i && cArr[i4 + 1] == str.charAt(i3 + 1)))) {
                        return false;
                    }
                }
            }
            return true;
        }
        return true;
    }

    public static boolean c(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() != 0) {
            return false;
        }
        return true;
    }

    public static int d(CharSequence charSequence) {
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    public static String e(char c2, int i) {
        if (i <= 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        char[] cArr = new char[i];
        Arrays.fill(cArr, c2);
        return new String(cArr);
    }
}
