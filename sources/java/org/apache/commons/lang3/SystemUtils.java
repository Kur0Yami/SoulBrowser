package org.apache.commons.lang3;

import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class SystemUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final String f22360a;
    public static final JavaVersion b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f22361c;
    public static final String d;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x028b, code lost:
    
        if (java.lang.Float.parseFloat(r0.substring(r1 + 1, java.lang.Math.max(r0.length(), r0.indexOf(44, r1)))) > 0.9f) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x028d, code lost:
    
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0298, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0295, code lost:
    
        if (r1 > 10.0f) goto L122;
     */
    static {
        /*
            Method dump skipped, instructions count: 1574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.SystemUtils.<clinit>():void");
    }

    public static void a(String str) {
        String str2 = f22360a;
        if (str2 == null) {
            return;
        }
        str2.startsWith(str);
    }

    public static void b(String str) {
        String str2;
        String str3 = f22361c;
        if (str3 != null && (str2 = d) != null && d(str3, "Mac OS X") && !StringUtils.c(str2)) {
            JavaVersion javaVersion = JavaVersion.g;
            Pattern pattern = RegExUtils.f22353a;
            String[] split2 = pattern.split(str);
            String[] split3 = pattern.split(str2);
            for (int i = 0; i < Math.min(split2.length, split3.length) && split2[i].equals(split3[i]); i++) {
            }
        }
    }

    public static void c(String str) {
        d(f22361c, str);
    }

    public static boolean d(String str, String str2) {
        int length;
        if (str == null || (length = str2.length()) > str.length()) {
            return false;
        }
        return CharSequenceUtils.b(str, true, 0, str2, length);
    }
}
