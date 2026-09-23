package androidx.webkit;

import java.nio.charset.Charset;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class URLUtilCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f1789a = Pattern.compile("\\s*(\\S+?) # Group 1: parameter name\n\\s*=\\s* # Match equals sign\n(?: # non-capturing group of options\n   '( (?: [^'\\\\] | \\\\. )* )' # Group 2: single-quoted\n | \"( (?: [^\"\\\\] | \\\\. )*  )\" # Group 3: double-quoted\n | ( [^'\"][^;\\s]* ) # Group 4: un-quoted parameter\n)\\s*;? # Optional end semicolon", 4);

    public static String a(String str, String str2) {
        Charset forName = Charset.forName(str2);
        StringBuilder sb = new StringBuilder();
        for (byte b : forName.encode("+").array()) {
            sb.append(String.format("%02x", Byte.valueOf(b)));
        }
        return str.replaceAll("\\+", sb.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00dc, code lost:
    
        if (r14.equalsIgnoreCase(r15) == false) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0033 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(java.lang.String r13, java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.webkit.URLUtilCompat.b(java.lang.String, java.lang.String, java.lang.String):java.lang.String");
    }
}
