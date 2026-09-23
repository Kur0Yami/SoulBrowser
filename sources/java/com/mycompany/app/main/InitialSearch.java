package com.mycompany.app.main;

/* loaded from: classes3.dex */
public class InitialSearch {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f16373a = {12593, 12594, 12596, 12599, 12600, 12601, 12609, 12610, 12611, 12613, 12614, 12615, 12616, 12617, 12618, 12619, 12620, 12621, 12622};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.StringBuilder] */
    public static String a(String str, String str2, String str3) {
        String str4;
        String str5;
        String str6;
        char c2;
        String str7 = null;
        if (str == null || str2 == null || str3 == null) {
            return null;
        }
        int length = str3.length();
        int length2 = str2.length() - length;
        if (length2 < 0) {
            return null;
        }
        ?? r8 = null;
        int i = 0;
        while (i <= length2) {
            int i2 = 0;
            while (i2 < length) {
                int i3 = i2 + i;
                char charAt = str2.charAt(i3);
                char charAt2 = str3.charAt(i2);
                if (44032 <= charAt && charAt <= 55203) {
                    int i4 = 0;
                    while (i4 < 19) {
                        char[] cArr = f16373a;
                        str5 = str7;
                        if (cArr[i4] == charAt2) {
                            int i5 = (charAt - 44032) / 588;
                            if (i5 >= 0 && i5 < 19) {
                                c2 = cArr[i5];
                            } else {
                                c2 = 0;
                            }
                            if (c2 == charAt2) {
                                if (r8 == null) {
                                    r8 = new StringBuilder();
                                }
                                r8.append(str.charAt(i3));
                                str6 = str5;
                                i2++;
                                str7 = str6;
                            } else {
                                r8 = str5;
                                str4 = str5;
                                break;
                            }
                        } else {
                            i4++;
                            str7 = str5;
                        }
                    }
                }
                str5 = str7;
                if (charAt != charAt2) {
                    r8 = str5;
                    str4 = str5;
                    break;
                }
                if (r8 == null) {
                    r8 = new StringBuilder();
                }
                r8.append(str.charAt(i3));
                str6 = str5;
                i2++;
                str7 = str6;
            }
            str4 = str7;
            if (i2 == length) {
                if (r8 == null) {
                    return str4;
                }
                return r8.toString();
            }
            i++;
            str7 = str4;
        }
        return str7;
    }
}
