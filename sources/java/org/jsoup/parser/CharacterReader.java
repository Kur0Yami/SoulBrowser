package org.jsoup.parser;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.function.Supplier;
import kotlin.jvm.internal.CharCompanionObject;
import org.jsoup.helper.Validate;
import org.jsoup.internal.SoftPool;
import org.jsoup.internal.StringUtil;

/* loaded from: classes4.dex */
public final class CharacterReader implements AutoCloseable {
    public static final SoftPool r;
    public static final SoftPool s;

    /* renamed from: c, reason: collision with root package name */
    public String[] f22585c;
    public Reader f;
    public char[] g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public ArrayList n;
    public int o;
    public String p;
    public int q;

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface CharPredicate {
        boolean a(char c2);
    }

    static {
        final int i = 0;
        r = new SoftPool(new Supplier() { // from class: org.jsoup.parser.a
            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i) {
                    case 0:
                        SoftPool softPool = CharacterReader.r;
                        return new String[512];
                    default:
                        SoftPool softPool2 = CharacterReader.r;
                        return new char[2048];
                }
            }
        });
        final int i2 = 1;
        s = new SoftPool(new Supplier() { // from class: org.jsoup.parser.a
            @Override // java.util.function.Supplier
            public final Object get() {
                switch (i2) {
                    case 0:
                        SoftPool softPool = CharacterReader.r;
                        return new String[512];
                    default:
                        SoftPool softPool2 = CharacterReader.r;
                        return new char[2048];
                }
            }
        });
    }

    public CharacterReader(Reader reader, int i) {
        this(reader);
    }

    public static String b(char[] cArr, String[] strArr, int i, int i2) {
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        if (i2 < 1) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        int i3 = i2 + i;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 < i3; i6++) {
            i5 = (i5 * 31) + cArr[i6];
        }
        int i7 = i5 & 511;
        String str = strArr[i7];
        if (str != null && i2 == str.length()) {
            int i8 = i;
            int i9 = i2;
            while (true) {
                int i10 = i9 - 1;
                if (i9 != 0) {
                    int i11 = i8 + 1;
                    int i12 = i4 + 1;
                    if (cArr[i8] != str.charAt(i4)) {
                        break;
                    }
                    i8 = i11;
                    i9 = i10;
                    i4 = i12;
                } else {
                    return str;
                }
            }
        }
        String str2 = new String(cArr, i, i2);
        strArr[i7] = str2;
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0021, code lost:
    
        r2 = r1 + 1;
        r4 = (r9.length() + r2) - 1;
        r5 = r8.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r1 >= r5) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002d, code lost:
    
        if (r4 > r5) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
    
        if (r5 >= r4) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
    
        if (r9.charAt(r3) != r8.g[r5]) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
    
        r5 = r5 + 1;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        if (r5 != r4) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0046, code lost:
    
        return r1 - r8.h;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0047, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0047, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
    
        if (r0 != r8.g[r1]) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
    
        if (r1 >= r8.i) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
    
        if (r0 == r8.g[r1]) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int A(java.lang.String r9) {
        /*
            r8 = this;
            r8.a()
            r0 = 0
            char r0 = r9.charAt(r0)
            int r1 = r8.h
        La:
            int r2 = r8.i
            if (r1 >= r2) goto L49
            char[] r2 = r8.g
            char r2 = r2[r1]
            r3 = 1
            if (r0 == r2) goto L21
        L15:
            int r1 = r1 + r3
            int r2 = r8.i
            if (r1 >= r2) goto L21
            char[] r2 = r8.g
            char r2 = r2[r1]
            if (r0 == r2) goto L21
            goto L15
        L21:
            int r2 = r1 + 1
            int r4 = r9.length()
            int r4 = r4 + r2
            int r4 = r4 - r3
            int r5 = r8.i
            if (r1 >= r5) goto L47
            if (r4 > r5) goto L47
            r5 = r2
        L30:
            if (r5 >= r4) goto L41
            char r6 = r9.charAt(r3)
            char[] r7 = r8.g
            char r7 = r7[r5]
            if (r6 != r7) goto L41
            int r5 = r5 + 1
            int r3 = r3 + 1
            goto L30
        L41:
            if (r5 != r4) goto L47
            int r9 = r8.h
            int r1 = r1 - r9
            return r1
        L47:
            r1 = r2
            goto La
        L49:
            r9 = -1
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.CharacterReader.A(java.lang.String):int");
    }

    public final void B() {
        int i = this.l;
        if (i != -1) {
            this.h = i;
            this.l = -1;
            return;
        }
        throw new UncheckedIOException(new IOException("Mark invalid"));
    }

    public final void F() {
        if (isTrackNewlines()) {
            if (this.n.size() > 0) {
                int k = k(this.k);
                if (k == -1) {
                    k = 0;
                }
                Integer num = (Integer) this.n.get(k);
                num.intValue();
                this.o += k;
                this.n.clear();
                this.n.add(num);
            }
            for (int i = this.h; i < this.i; i++) {
                if (this.g[i] == '\n') {
                    this.n.add(Integer.valueOf(this.k + 1 + i));
                }
            }
        }
    }

    public final void G() {
        int i = this.h;
        if (i >= 1) {
            this.h = i - 1;
            return;
        }
        throw new UncheckedIOException(new IOException("WTF: No buffer left to unconsume."));
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
    
        r5.m = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r5 = this;
            boolean r0 = r5.m
            if (r0 != 0) goto L5b
            int r0 = r5.h
            int r1 = r5.j
            if (r0 < r1) goto L5b
            int r1 = r5.l
            r2 = -1
            if (r1 == r2) goto L10
            goto L5b
        L10:
            int r1 = r5.k
            int r1 = r1 + r0
            r5.k = r1
            int r1 = r5.i
            int r1 = r1 - r0
            r5.i = r1
            r3 = 0
            if (r1 <= 0) goto L22
            char[] r4 = r5.g
            java.lang.System.arraycopy(r4, r0, r4, r3, r1)
        L22:
            r5.h = r3
        L24:
            int r0 = r5.i
            r1 = 2048(0x800, float:2.87E-42)
            if (r0 >= r1) goto L4b
            java.io.Reader r1 = r5.f     // Catch: java.io.IOException -> L3a
            char[] r3 = r5.g     // Catch: java.io.IOException -> L3a
            int r4 = r3.length     // Catch: java.io.IOException -> L3a
            int r4 = r4 - r0
            int r0 = r1.read(r3, r0, r4)     // Catch: java.io.IOException -> L3a
            if (r0 != r2) goto L3c
            r0 = 1
            r5.m = r0     // Catch: java.io.IOException -> L3a
            goto L4b
        L3a:
            r0 = move-exception
            goto L45
        L3c:
            if (r0 != 0) goto L3f
            goto L4b
        L3f:
            int r1 = r5.i     // Catch: java.io.IOException -> L3a
            int r1 = r1 + r0
            r5.i = r1     // Catch: java.io.IOException -> L3a
            goto L24
        L45:
            java.io.UncheckedIOException r1 = new java.io.UncheckedIOException
            r1.<init>(r0)
            throw r1
        L4b:
            int r0 = r5.i
            r1 = 1024(0x400, float:1.435E-42)
            int r0 = java.lang.Math.min(r0, r1)
            r5.j = r0
            r5.F()
            r0 = 0
            r5.p = r0
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.CharacterReader.a():void");
    }

    public void advance() {
        this.h++;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        SoftPool softPool = r;
        SoftPool softPool2 = s;
        Reader reader = this.f;
        if (reader == null) {
            return;
        }
        try {
            reader.close();
            this.f = null;
            Arrays.fill(this.g, (char) 0);
            softPool2.release(this.g);
            this.g = null;
            softPool.release(this.f22585c);
        } catch (IOException unused) {
            this.f = null;
            Arrays.fill(this.g, (char) 0);
            softPool2.release(this.g);
            this.g = null;
            softPool.release(this.f22585c);
        } catch (Throwable th) {
            this.f = null;
            Arrays.fill(this.g, (char) 0);
            softPool2.release(this.g);
            this.g = null;
            softPool.release(this.f22585c);
            this.f22585c = null;
            throw th;
        }
        this.f22585c = null;
    }

    public int columnNumber() {
        return d(pos());
    }

    public char consume() {
        char c2;
        a();
        int i = this.h;
        if (i >= this.i) {
            c2 = CharCompanionObject.MAX_VALUE;
        } else {
            c2 = this.g[i];
        }
        this.h = i + 1;
        return c2;
    }

    public String consumeTo(char c2) {
        int i;
        a();
        int i2 = this.h;
        while (true) {
            if (i2 >= this.i) {
                i = -1;
                break;
            }
            if (c2 == this.g[i2]) {
                i = i2 - this.h;
                break;
            }
            i2++;
        }
        if (i != -1) {
            String b = b(this.g, this.f22585c, this.h, i);
            this.h += i;
            return b;
        }
        return j();
    }

    public String consumeToAny(char... cArr) {
        a();
        int i = this.h;
        int i2 = this.i;
        char[] cArr2 = this.g;
        int i3 = i;
        while (i3 < i2) {
            char c2 = cArr2[i3];
            int length = cArr.length;
            boolean z = false;
            int i4 = 0;
            while (true) {
                if (i4 < length) {
                    if (c2 == cArr[i4]) {
                        break;
                    }
                    i4++;
                } else {
                    z = true;
                    break;
                }
            }
            if (!z) {
                break;
            }
            i3++;
        }
        this.h = i3;
        if (i3 > i) {
            return b(this.g, this.f22585c, i, i3 - i);
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public char current() {
        a();
        int i = this.h;
        if (i >= this.i) {
            return CharCompanionObject.MAX_VALUE;
        }
        return this.g[i];
    }

    public final int d(int i) {
        if (!isTrackNewlines()) {
            return i + 1;
        }
        int k = k(i);
        if (k == -1) {
            return i + 1;
        }
        return (i - ((Integer) this.n.get(k)).intValue()) + 1;
    }

    public final String e() {
        a();
        int i = this.h;
        int i2 = this.i;
        char[] cArr = this.g;
        int i3 = i;
        while (i3 < i2 && Character.isLetter(cArr[i3])) {
            i3++;
        }
        this.h = i3;
        if (i3 > i) {
            return b(this.g, this.f22585c, i, i3 - i);
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public final String f(CharPredicate charPredicate) {
        a();
        int i = this.h;
        int i2 = this.i;
        char[] cArr = this.g;
        int i3 = i;
        while (i3 < i2 && charPredicate.a(cArr[i3])) {
            i3++;
        }
        this.h = i3;
        if (i3 > i) {
            return b(this.g, this.f22585c, i, i3 - i);
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public final String i(char... cArr) {
        a();
        int i = this.h;
        int i2 = this.i;
        char[] cArr2 = this.g;
        int i3 = i;
        while (i3 < i2 && Arrays.binarySearch(cArr, cArr2[i3]) < 0) {
            i3++;
        }
        this.h = i3;
        if (i3 > i) {
            return b(this.g, this.f22585c, i, i3 - i);
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public boolean isEmpty() {
        a();
        if (this.h >= this.i) {
            return true;
        }
        return false;
    }

    public boolean isTrackNewlines() {
        if (this.n != null) {
            return true;
        }
        return false;
    }

    public final String j() {
        a();
        char[] cArr = this.g;
        String[] strArr = this.f22585c;
        int i = this.h;
        String b = b(cArr, strArr, i, this.i - i);
        this.h = this.i;
        return b;
    }

    public final int k(int i) {
        if (!isTrackNewlines()) {
            return 0;
        }
        int binarySearch = Collections.binarySearch(this.n, Integer.valueOf(i));
        if (binarySearch < -1) {
            return Math.abs(binarySearch) - 2;
        }
        return binarySearch;
    }

    public final int l(int i) {
        if (!isTrackNewlines()) {
            return 1;
        }
        int k = k(i);
        if (k == -1) {
            return this.o;
        }
        return k + this.o + 1;
    }

    public int lineNumber() {
        return l(pos());
    }

    public final boolean m(String str) {
        a();
        a();
        int length = str.length();
        if (length <= this.i - this.h) {
            for (int i = 0; i < length; i++) {
                if (str.charAt(i) == this.g[this.h + i]) {
                }
            }
            this.h = str.length() + this.h;
            return true;
        }
        return false;
    }

    public final boolean n(String str) {
        if (z(str)) {
            this.h = str.length() + this.h;
            return true;
        }
        return false;
    }

    public final boolean o(char c2) {
        if (!isEmpty() && this.g[this.h] == c2) {
            return true;
        }
        return false;
    }

    public int pos() {
        return this.k + this.h;
    }

    public String toString() {
        int i = this.i;
        int i2 = this.h;
        if (i - i2 < 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return new String(this.g, i2, i - i2);
    }

    public void trackNewlines(boolean z) {
        if (z && this.n == null) {
            this.n = new ArrayList(25);
            F();
        } else if (!z) {
            this.n = null;
        }
    }

    public final boolean u(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        a();
        char c2 = this.g[this.h];
        for (char c3 : cArr) {
            if (c3 == c2) {
                return true;
            }
        }
        return false;
    }

    public final boolean v() {
        if (isEmpty()) {
            return false;
        }
        return StringUtil.isAsciiLetter(this.g[this.h]);
    }

    public final boolean z(String str) {
        a();
        int length = str.length();
        if (length > this.i - this.h) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            char c2 = this.g[this.h + i];
            if (charAt != c2 && Character.toUpperCase(charAt) != Character.toUpperCase(c2)) {
                return false;
            }
        }
        return true;
    }

    public CharacterReader(Reader reader) {
        this.j = 0;
        this.l = -1;
        this.n = null;
        this.o = 1;
        Validate.notNull(reader);
        this.f = reader;
        this.g = (char[]) s.borrow();
        this.f22585c = (String[]) r.borrow();
        a();
    }

    public String consumeTo(String str) {
        int A = A(str);
        if (A != -1) {
            String b = b(this.g, this.f22585c, this.h, A);
            this.h += A;
            return b;
        }
        if (this.i - this.h < str.length()) {
            return j();
        }
        int length = (this.i - str.length()) + 1;
        char[] cArr = this.g;
        String[] strArr = this.f22585c;
        int i = this.h;
        String b2 = b(cArr, strArr, i, length - i);
        this.h = length;
        return b2;
    }

    public CharacterReader(String str) {
        this(new StringReader(str));
    }
}
