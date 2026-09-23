package org.apache.commons.text;

import java.util.Arrays;
import kotlin.text.Typography;

@Deprecated
/* loaded from: classes4.dex */
public abstract class StrMatcher {

    /* renamed from: a, reason: collision with root package name */
    public static final StrMatcher f22466a = new CharMatcher(',');
    public static final StrMatcher b = new CharMatcher('\t');

    /* renamed from: c, reason: collision with root package name */
    public static final StrMatcher f22467c = new CharSetMatcher(" \t\n\r\f".toCharArray());
    public static final StrMatcher d = new Object();
    public static final StrMatcher e = new CharMatcher(Typography.quote);
    public static final StrMatcher f;

    /* loaded from: classes4.dex */
    public static final class CharMatcher extends StrMatcher {
        public final char g;

        public CharMatcher(char c2) {
            this.g = c2;
        }

        @Override // org.apache.commons.text.StrMatcher
        public final int a(char[] cArr, int i, int i2) {
            if (this.g == cArr[i]) {
                return 1;
            }
            return 0;
        }
    }

    /* loaded from: classes4.dex */
    public static final class CharSetMatcher extends StrMatcher {
        public final char[] g;

        public CharSetMatcher(char[] cArr) {
            char[] cArr2 = (char[]) cArr.clone();
            this.g = cArr2;
            Arrays.sort(cArr2);
        }

        @Override // org.apache.commons.text.StrMatcher
        public final int a(char[] cArr, int i, int i2) {
            if (Arrays.binarySearch(this.g, cArr[i]) >= 0) {
                return 1;
            }
            return 0;
        }
    }

    /* loaded from: classes4.dex */
    public static final class NoMatcher extends StrMatcher {
        @Override // org.apache.commons.text.StrMatcher
        public final int a(char[] cArr, int i, int i2) {
            return 0;
        }
    }

    /* loaded from: classes4.dex */
    public static final class StringMatcher extends StrMatcher {
        public final char[] g;

        public StringMatcher(String str) {
            this.g = str.toCharArray();
        }

        @Override // org.apache.commons.text.StrMatcher
        public final int a(char[] cArr, int i, int i2) {
            char[] cArr2 = this.g;
            int length = cArr2.length;
            if (i + length <= i2) {
                int i3 = 0;
                while (i3 < cArr2.length) {
                    if (cArr2[i3] == cArr[i]) {
                        i3++;
                        i++;
                    }
                }
                return length;
            }
            return 0;
        }

        public final String toString() {
            return super.toString() + ' ' + Arrays.toString(this.g);
        }
    }

    /* loaded from: classes4.dex */
    public static final class TrimMatcher extends StrMatcher {
        @Override // org.apache.commons.text.StrMatcher
        public final int a(char[] cArr, int i, int i2) {
            if (cArr[i] <= ' ') {
                return 1;
            }
            return 0;
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, org.apache.commons.text.StrMatcher] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, org.apache.commons.text.StrMatcher] */
    static {
        new CharSetMatcher("'\"".toCharArray());
        f = new Object();
    }

    public static void b(String str) {
        if (str.isEmpty()) {
            return;
        }
        new StringMatcher(str);
    }

    public abstract int a(char[] cArr, int i, int i2);
}
