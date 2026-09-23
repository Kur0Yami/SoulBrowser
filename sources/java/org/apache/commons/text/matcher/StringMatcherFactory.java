package org.apache.commons.text.matcher;

import java.lang.reflect.Array;
import kotlin.text.Typography;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.matcher.AbstractStringMatcher;

/* loaded from: classes4.dex */
public final class StringMatcherFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final AbstractStringMatcher.CharMatcher f22494a = new AbstractStringMatcher.CharMatcher(',');
    public static final AbstractStringMatcher.CharMatcher b = new AbstractStringMatcher.CharMatcher(Typography.quote);

    /* renamed from: c, reason: collision with root package name */
    public static final AbstractStringMatcher.NoneMatcher f22495c = new Object();
    public static final AbstractStringMatcher.CharSetMatcher d;
    public static final AbstractStringMatcher.CharMatcher e;
    public static final AbstractStringMatcher.TrimMatcher f;

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, org.apache.commons.text.matcher.AbstractStringMatcher$NoneMatcher] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, org.apache.commons.text.matcher.AbstractStringMatcher$TrimMatcher] */
    static {
        new AbstractStringMatcher.CharSetMatcher("'\"".toCharArray());
        d = new AbstractStringMatcher.CharSetMatcher(" \t\n\r\f".toCharArray());
        e = new AbstractStringMatcher.CharMatcher('\t');
        f = new Object();
    }

    public static StringMatcher a(String str) {
        int i;
        if (!StringUtils.c(str)) {
            char[] charArray = str.toCharArray();
            if (charArray != null) {
                i = Array.getLength(charArray);
            } else {
                i = 0;
            }
            if (i != 0) {
                if (i == 1) {
                    return new AbstractStringMatcher.CharMatcher(charArray[0]);
                }
                return new AbstractStringMatcher.CharArrayMatcher(charArray);
            }
        }
        return f22495c;
    }
}
