package org.jsoup.internal;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.stream.Collector;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.jsoup.helper.Validate;

/* loaded from: classes4.dex */
public final class StringUtil {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f22554a = {RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};
    public static final Pattern b = Pattern.compile("^/(?>(?>\\.\\.?/)+)");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f22555c = Pattern.compile("^[a-zA-Z][a-zA-Z0-9+-.]*:");
    public static final Pattern d = Pattern.compile("[\\x00-\\x1f]*");
    public static final SoftPool e = new SoftPool(new b(2));

    /* loaded from: classes4.dex */
    public static class StringJoiner {
        public final String b;

        /* renamed from: a, reason: collision with root package name */
        public StringBuilder f22556a = StringUtil.borrowBuilder();

        /* renamed from: c, reason: collision with root package name */
        public boolean f22557c = true;

        public StringJoiner(String str) {
            this.b = str;
        }

        public StringJoiner add(Object obj) {
            Validate.notNull(this.f22556a);
            if (!this.f22557c) {
                this.f22556a.append(this.b);
            }
            this.f22556a.append(obj);
            this.f22557c = false;
            return this;
        }

        public StringJoiner append(Object obj) {
            Validate.notNull(this.f22556a);
            this.f22556a.append(obj);
            return this;
        }

        public String complete() {
            String releaseBuilder = StringUtil.releaseBuilder(this.f22556a);
            this.f22556a = null;
            return releaseBuilder;
        }
    }

    public static void appendNormalisedWhitespace(StringBuilder sb, String str, boolean z) {
        int length = str.length();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (isActuallyWhitespace(codePointAt)) {
                if ((!z || z2) && !z3) {
                    sb.append(' ');
                    z3 = true;
                }
            } else if (!isInvisibleChar(codePointAt)) {
                sb.appendCodePoint(codePointAt);
                z3 = false;
                z2 = true;
            }
            i += Character.charCount(codePointAt);
        }
    }

    public static StringBuilder borrowBuilder() {
        return (StringBuilder) e.borrow();
    }

    public static boolean in(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean inSorted(String str, String[] strArr) {
        if (Arrays.binarySearch(strArr, str) >= 0) {
            return true;
        }
        return false;
    }

    public static boolean isActuallyWhitespace(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13 || i == 160;
    }

    public static boolean isAscii(String str) {
        Validate.notNull(str);
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) > 127) {
                return false;
            }
        }
        return true;
    }

    public static boolean isAsciiLetter(char c2) {
        if (c2 < 'a' || c2 > 'z') {
            return c2 >= 'A' && c2 <= 'Z';
        }
        return true;
    }

    public static boolean isBlank(String str) {
        if (str != null && !str.isEmpty()) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (!isWhitespace(str.codePointAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isDigit(char c2) {
        return c2 >= '0' && c2 <= '9';
    }

    public static boolean isHexDigit(char c2) {
        if (!isDigit(c2)) {
            if (c2 < 'a' || c2 > 'f') {
                if (c2 < 'A' || c2 > 'F') {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public static boolean isInvisibleChar(int i) {
        return i == 8203 || i == 173;
    }

    public static boolean isNumeric(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhitespace(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    public static String join(Collection<?> collection, String str) {
        return join(collection.iterator(), str);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.util.function.BinaryOperator] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.function.BiConsumer, java.lang.Object] */
    public static Collector<CharSequence, ?, String> joining(String str) {
        return Collector.CC.of(new kotlin.streams.jdk8.a(1, str), new Object(), new Object(), new a(4), new Collector.Characteristics[0]);
    }

    public static String normaliseWhitespace(String str) {
        StringBuilder borrowBuilder = borrowBuilder();
        appendNormalisedWhitespace(borrowBuilder, str, false);
        return releaseBuilder(borrowBuilder);
    }

    public static String padding(int i) {
        return padding(i, 30);
    }

    public static String releaseBuilder(StringBuilder sb) {
        Validate.notNull(sb);
        String sb2 = sb.toString();
        releaseBuilderVoid(sb);
        return sb2;
    }

    public static void releaseBuilderVoid(StringBuilder sb) {
        if (sb.length() <= 8192) {
            sb.delete(0, sb.length());
            e.release(sb);
        }
    }

    public static String resolve(String str, String str2) {
        Pattern pattern = d;
        String replaceAll = pattern.matcher(str).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        String replaceAll2 = pattern.matcher(str2).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        try {
            try {
                return resolve(new URL(replaceAll), replaceAll2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(replaceAll2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return f22555c.matcher(replaceAll2).find() ? replaceAll2 : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    public static boolean startsWithNewline(String str) {
        if (str == null || str.length() == 0 || str.charAt(0) != '\n') {
            return false;
        }
        return true;
    }

    public static String join(Iterator<?> it, String str) {
        if (!it.hasNext()) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String obj = it.next().toString();
        if (!it.hasNext()) {
            return obj;
        }
        StringJoiner stringJoiner = new StringJoiner(str);
        stringJoiner.add(obj);
        while (it.hasNext()) {
            stringJoiner.add(it.next());
        }
        return stringJoiner.complete();
    }

    public static String padding(int i, int i2) {
        Validate.isTrue(i >= 0, "width must be >= 0");
        Validate.isTrue(i2 >= -1);
        if (i2 != -1) {
            i = Math.min(i, i2);
        }
        if (i < 21) {
            return f22554a[i];
        }
        char[] cArr = new char[i];
        for (int i3 = 0; i3 < i; i3++) {
            cArr[i3] = ' ';
        }
        return String.valueOf(cArr);
    }

    public static URL resolve(URL url, String str) {
        String replaceAll = d.matcher(str).replaceAll(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (replaceAll.startsWith("?")) {
            replaceAll = url.getPath() + replaceAll;
        }
        URL url2 = new URL(url, replaceAll);
        String replaceFirst = b.matcher(url2.getFile()).replaceFirst("/");
        if (url2.getRef() != null) {
            StringBuilder v = android.support.v4.media.a.v(replaceFirst, "#");
            v.append(url2.getRef());
            replaceFirst = v.toString();
        }
        return new URL(url2.getProtocol(), url2.getHost(), url2.getPort(), replaceFirst);
    }

    public static String join(String[] strArr, String str) {
        return join(Arrays.asList(strArr), str);
    }
}
