package com.mycompany.app.script;

import android.support.v4.media.a;
import android.text.TextUtils;
import java.util.Locale;

/* loaded from: classes3.dex */
public class CriterionMatcher {
    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return true;
        }
        Locale locale = Locale.US;
        String lowerCase = str.toLowerCase(locale);
        String lowerCase2 = str2.toLowerCase(locale);
        if (lowerCase.length() >= 2 && lowerCase.startsWith("/") && lowerCase.endsWith("/")) {
            String str3 = null;
            if (lowerCase.length() >= 3) {
                String d = a.d(1, 1, lowerCase);
                if (!TextUtils.isEmpty(d)) {
                    StringBuilder sb = new StringBuilder();
                    if (!d.startsWith("^")) {
                        sb.append("^.*");
                    }
                    sb.append(d);
                    if (!d.endsWith("$")) {
                        sb.append(".*$");
                    }
                    str3 = sb.toString();
                }
            }
            if (TextUtils.isEmpty(str3)) {
                return false;
            }
            return lowerCase2.matches(str3);
        }
        return b(lowerCase, 0, 0, lowerCase2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0021, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(java.lang.String r5, int r6, int r7, java.lang.String r8) {
        /*
            int r0 = r5.length()
            int r1 = r8.length()
        L8:
            r2 = 1
            if (r6 != r0) goto Le
            if (r7 != r1) goto L3e
            goto L21
        Le:
            char r3 = r5.charAt(r6)
            r4 = 42
            if (r3 != r4) goto L28
            int r4 = r6 + 1
            if (r4 < r0) goto L1b
            goto L21
        L1b:
            boolean r6 = b(r5, r4, r7, r8)
            if (r6 == 0) goto L22
        L21:
            return r2
        L22:
            if (r7 != r1) goto L25
            goto L3e
        L25:
            int r7 = r7 + 1
            goto L1b
        L28:
            if (r7 != r1) goto L2b
            goto L3e
        L2b:
            r4 = 92
            if (r3 != r4) goto L38
            int r6 = r6 + 1
            if (r6 < r0) goto L34
            goto L3e
        L34:
            char r3 = r5.charAt(r6)
        L38:
            char r4 = r8.charAt(r7)
            if (r3 == r4) goto L40
        L3e:
            r5 = 0
            return r5
        L40:
            int r6 = r6 + r2
            int r7 = r7 + 1
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.script.CriterionMatcher.b(java.lang.String, int, int, java.lang.String):boolean");
    }
}
