package org.apache.commons.text.matcher;

import android.support.v4.media.a;
import java.util.Arrays;

/* loaded from: classes4.dex */
abstract class AbstractStringMatcher implements StringMatcher {

    /* loaded from: classes4.dex */
    public static final class AndStringMatcher extends AbstractStringMatcher {
        @Override // org.apache.commons.text.matcher.StringMatcher
        public final int a(char[] cArr, int i, int i2) {
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static final class CharArrayMatcher extends AbstractStringMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final char[] f22491a;
        public final String b;

        public CharArrayMatcher(char... cArr) {
            this.b = String.valueOf(cArr);
            this.f22491a = (char[]) cArr.clone();
        }

        @Override // org.apache.commons.text.matcher.StringMatcher
        public final int a(char[] cArr, int i, int i2) {
            char[] cArr2 = this.f22491a;
            int length = cArr2.length;
            if (i + length <= i2) {
                int i3 = 0;
                while (i3 < length) {
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
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append("[\"");
            return a.p(sb, this.b, "\"]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class CharMatcher extends AbstractStringMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final char f22492a;

        public CharMatcher(char c2) {
            this.f22492a = c2;
        }

        @Override // org.apache.commons.text.matcher.StringMatcher
        public final int a(char[] cArr, int i, int i2) {
            if (this.f22492a == cArr[i]) {
                return 1;
            }
            return 0;
        }

        public final String toString() {
            return super.toString() + "['" + this.f22492a + "']";
        }
    }

    /* loaded from: classes4.dex */
    public static final class CharSetMatcher extends AbstractStringMatcher {

        /* renamed from: a, reason: collision with root package name */
        public final char[] f22493a;

        public CharSetMatcher(char[] cArr) {
            char[] cArr2 = (char[]) cArr.clone();
            this.f22493a = cArr2;
            Arrays.sort(cArr2);
        }

        @Override // org.apache.commons.text.matcher.StringMatcher
        public final int a(char[] cArr, int i, int i2) {
            if (Arrays.binarySearch(this.f22493a, cArr[i]) >= 0) {
                return 1;
            }
            return 0;
        }

        public final String toString() {
            return super.toString() + Arrays.toString(this.f22493a);
        }
    }

    /* loaded from: classes4.dex */
    public static final class NoneMatcher extends AbstractStringMatcher {
        @Override // org.apache.commons.text.matcher.StringMatcher
        public final int a(char[] cArr, int i, int i2) {
            return 0;
        }
    }

    /* loaded from: classes4.dex */
    public static final class TrimMatcher extends AbstractStringMatcher {
        @Override // org.apache.commons.text.matcher.StringMatcher
        public final int a(char[] cArr, int i, int i2) {
            if (cArr[i] <= ' ') {
                return 1;
            }
            return 0;
        }
    }
}
