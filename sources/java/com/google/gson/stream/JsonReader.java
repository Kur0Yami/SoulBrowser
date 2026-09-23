package com.google.gson.stream;

import android.support.v4.media.a;
import com.google.gson.JsonPrimitive;
import com.google.gson.Strictness;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import j$.util.Objects;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public class JsonReader implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final Reader f12756c;
    public long m;
    public int n;
    public String o;
    public int[] p;
    public String[] r;
    public int[] s;
    public Strictness f = Strictness.f;
    public final char[] g = new char[1024];
    public int h = 0;
    public int i = 0;
    public int j = 0;
    public int k = 0;
    public int l = 0;
    public int q = 1;

    /* renamed from: com.google.gson.stream.JsonReader$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends JsonReaderInternalAccess {
        @Override // com.google.gson.internal.JsonReaderInternalAccess
        public final void a(JsonReader jsonReader) {
            if (jsonReader instanceof JsonTreeReader) {
                JsonTreeReader jsonTreeReader = (JsonTreeReader) jsonReader;
                jsonTreeReader.n0(JsonToken.i);
                Map.Entry entry = (Map.Entry) ((Iterator) jsonTreeReader.A0()).next();
                jsonTreeReader.C0(entry.getValue());
                jsonTreeReader.C0(new JsonPrimitive((String) entry.getKey()));
                return;
            }
            int i = jsonReader.l;
            if (i == 0) {
                i = jsonReader.e();
            }
            if (i == 13) {
                jsonReader.l = 9;
            } else if (i == 12) {
                jsonReader.l = 8;
            } else {
                if (i == 14) {
                    jsonReader.l = 10;
                    return;
                }
                throw jsonReader.k0("a name");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.gson.internal.JsonReaderInternalAccess, java.lang.Object] */
    static {
        JsonReaderInternalAccess.f12687a = new Object();
    }

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.p = iArr;
        iArr[0] = 6;
        this.r = new String[32];
        this.s = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f12756c = reader;
    }

    public int A() {
        char c2;
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 15) {
            long j = this.m;
            int i2 = (int) j;
            if (j == i2) {
                this.l = 0;
                int[] iArr = this.s;
                int i3 = this.q - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new NumberFormatException("Expected an int but was " + this.m + u());
        }
        if (i == 16) {
            this.o = new String(this.g, this.h, this.n);
            this.h += this.n;
        } else {
            if (i != 8 && i != 9 && i != 10) {
                throw k0("an int");
            }
            if (i == 10) {
                this.o = T();
            } else {
                if (i == 8) {
                    c2 = '\'';
                } else {
                    c2 = Typography.quote;
                }
                this.o = Q(c2);
            }
            try {
                int parseInt = Integer.parseInt(this.o);
                this.l = 0;
                int[] iArr2 = this.s;
                int i4 = this.q - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.l = 11;
        double parseDouble = Double.parseDouble(this.o);
        int i5 = (int) parseDouble;
        if (i5 == parseDouble) {
            this.o = null;
            this.l = 0;
            int[] iArr3 = this.s;
            int i6 = this.q - 1;
            iArr3[i6] = iArr3[i6] + 1;
            return i5;
        }
        throw new NumberFormatException("Expected an int but was " + this.o + u());
    }

    public long B() {
        char c2;
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 15) {
            this.l = 0;
            int[] iArr = this.s;
            int i2 = this.q - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.m;
        }
        if (i == 16) {
            this.o = new String(this.g, this.h, this.n);
            this.h += this.n;
        } else {
            if (i != 8 && i != 9 && i != 10) {
                throw k0("a long");
            }
            if (i == 10) {
                this.o = T();
            } else {
                if (i == 8) {
                    c2 = '\'';
                } else {
                    c2 = Typography.quote;
                }
                this.o = Q(c2);
            }
            try {
                long parseLong = Long.parseLong(this.o);
                this.l = 0;
                int[] iArr2 = this.s;
                int i3 = this.q - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.l = 11;
        double parseDouble = Double.parseDouble(this.o);
        long j = (long) parseDouble;
        if (j == parseDouble) {
            this.o = null;
            this.l = 0;
            int[] iArr3 = this.s;
            int i4 = this.q - 1;
            iArr3[i4] = iArr3[i4] + 1;
            return j;
        }
        throw new NumberFormatException("Expected a long but was " + this.o + u());
    }

    public String F() {
        String Q;
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 14) {
            Q = T();
        } else if (i == 12) {
            Q = Q('\'');
        } else if (i == 13) {
            Q = Q(Typography.quote);
        } else {
            throw k0("a name");
        }
        this.l = 0;
        this.r[this.q - 1] = Q;
        return Q;
    }

    public final int G(boolean z) {
        char c2;
        int i = this.h;
        int i2 = this.i;
        while (true) {
            if (i == i2) {
                this.h = i;
                if (!j(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + u());
                }
                i = this.h;
                i2 = this.i;
            }
            int i3 = i + 1;
            char[] cArr = this.g;
            c2 = cArr[i];
            if (c2 == '\n') {
                this.j++;
                this.k = i3;
            } else if (c2 != ' ' && c2 != '\r' && c2 != '\t') {
                if (c2 == '/') {
                    this.h = i3;
                    if (i3 == i2) {
                        this.h = i;
                        boolean j = j(2);
                        this.h++;
                        if (!j) {
                            break;
                        }
                    }
                    d();
                    int i4 = this.h;
                    char c3 = cArr[i4];
                    if (c3 != '*') {
                        if (c3 != '/') {
                            break;
                        }
                        this.h = i4 + 1;
                        b0();
                        i = this.h;
                        i2 = this.i;
                    } else {
                        this.h = i4 + 1;
                        while (true) {
                            if (this.h + 2 > this.i && !j(2)) {
                                i0("Unterminated comment");
                                throw null;
                            }
                            int i5 = this.h;
                            if (cArr[i5] == '\n') {
                                this.j++;
                                this.k = i5 + 1;
                            } else {
                                for (int i6 = 0; i6 < 2; i6++) {
                                    if (cArr[this.h + i6] != "*/".charAt(i6)) {
                                        break;
                                    }
                                }
                                i = this.h + 2;
                                i2 = this.i;
                                break;
                            }
                            this.h++;
                        }
                    }
                } else if (c2 == '#') {
                    this.h = i3;
                    d();
                    b0();
                    i = this.h;
                    i2 = this.i;
                } else {
                    this.h = i3;
                    return c2;
                }
            }
            i = i3;
        }
        return c2;
    }

    public void L() {
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 7) {
            this.l = 0;
            int[] iArr = this.s;
            int i2 = this.q - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        throw k0("null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
    
        r11.h = r8;
        r8 = r8 - r3;
        r2 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0043, code lost:
    
        if (r1 != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0045, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max(r8 * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006c, code lost:
    
        if (r1 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006e, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007c, code lost:
    
        r1.append(r7, r3, r2 - r3);
        r11.h = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String Q(char r12) {
        /*
            r11 = this;
            r0 = 0
            r1 = r0
        L2:
            int r2 = r11.h
            int r3 = r11.i
        L6:
            r4 = r3
            r3 = r2
        L8:
            r5 = 16
            r6 = 1
            char[] r7 = r11.g
            if (r2 >= r4) goto L6c
            int r8 = r2 + 1
            char r2 = r7[r2]
            com.google.gson.Strictness r9 = r11.f
            com.google.gson.Strictness r10 = com.google.gson.Strictness.g
            if (r9 != r10) goto L24
            r9 = 32
            if (r2 < r9) goto L1e
            goto L24
        L1e:
            java.lang.String r12 = "Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode"
            r11.i0(r12)
            throw r0
        L24:
            if (r2 != r12) goto L3a
            r11.h = r8
            int r8 = r8 - r3
            int r8 = r8 - r6
            if (r1 != 0) goto L32
            java.lang.String r12 = new java.lang.String
            r12.<init>(r7, r3, r8)
            return r12
        L32:
            r1.append(r7, r3, r8)
            java.lang.String r12 = r1.toString()
            return r12
        L3a:
            r9 = 92
            if (r2 != r9) goto L5f
            r11.h = r8
            int r8 = r8 - r3
            int r2 = r8 + (-1)
            if (r1 != 0) goto L50
            int r8 = r8 * 2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            int r4 = java.lang.Math.max(r8, r5)
            r1.<init>(r4)
        L50:
            r1.append(r7, r3, r2)
            char r2 = r11.Z()
            r1.append(r2)
            int r2 = r11.h
            int r3 = r11.i
            goto L6
        L5f:
            r5 = 10
            if (r2 != r5) goto L6a
            int r2 = r11.j
            int r2 = r2 + r6
            r11.j = r2
            r11.k = r8
        L6a:
            r2 = r8
            goto L8
        L6c:
            if (r1 != 0) goto L7c
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L7c:
            int r4 = r2 - r3
            r1.append(r7, r3, r4)
            r11.h = r2
            boolean r2 = r11.j(r6)
            if (r2 == 0) goto L8b
            goto L2
        L8b:
            java.lang.String r12 = "Unterminated string"
            r11.i0(r12)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.Q(char):java.lang.String");
    }

    public String S() {
        String str;
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 10) {
            str = T();
        } else if (i == 8) {
            str = Q('\'');
        } else if (i == 9) {
            str = Q(Typography.quote);
        } else if (i == 11) {
            str = this.o;
            this.o = null;
        } else if (i == 15) {
            str = Long.toString(this.m);
        } else if (i == 16) {
            str = new String(this.g, this.h, this.n);
            this.h += this.n;
        } else {
            throw k0("a string");
        }
        this.l = 0;
        int[] iArr = this.s;
        int i2 = this.q - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x004a, code lost:
    
        d();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String T() {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r1
        L3:
            int r3 = r7.h
            int r4 = r3 + r2
            int r5 = r7.i
            char[] r6 = r7.g
            if (r4 >= r5) goto L4e
            int r3 = r3 + r2
            char r3 = r6[r3]
            r4 = 9
            if (r3 == r4) goto L5a
            r4 = 10
            if (r3 == r4) goto L5a
            r4 = 12
            if (r3 == r4) goto L5a
            r4 = 13
            if (r3 == r4) goto L5a
            r4 = 32
            if (r3 == r4) goto L5a
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5a
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5a
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5a
            r4 = 58
            if (r3 == r4) goto L5a
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5a;
                case 92: goto L4a;
                case 93: goto L5a;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r7.d()
            goto L5a
        L4e:
            int r3 = r6.length
            if (r2 >= r3) goto L5c
            int r3 = r2 + 1
            boolean r3 = r7.j(r3)
            if (r3 == 0) goto L5a
            goto L3
        L5a:
            r1 = r2
            goto L7a
        L5c:
            if (r0 != 0) goto L69
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r0.<init>(r3)
        L69:
            int r3 = r7.h
            r0.append(r6, r3, r2)
            int r3 = r7.h
            int r3 = r3 + r2
            r7.h = r3
            r2 = 1
            boolean r2 = r7.j(r2)
            if (r2 != 0) goto L2
        L7a:
            if (r0 != 0) goto L84
            java.lang.String r0 = new java.lang.String
            int r2 = r7.h
            r0.<init>(r6, r2, r1)
            goto L8d
        L84:
            int r2 = r7.h
            r0.append(r6, r2, r1)
            java.lang.String r0 = r0.toString()
        L8d:
            int r2 = r7.h
            int r2 = r2 + r1
            r7.h = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.T():java.lang.String");
    }

    public JsonToken W() {
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        switch (i) {
            case 1:
                return JsonToken.g;
            case 2:
                return JsonToken.h;
            case 3:
                return JsonToken.f12757c;
            case 4:
                return JsonToken.f;
            case 5:
            case 6:
                return JsonToken.l;
            case 7:
                return JsonToken.m;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.j;
            case 12:
            case 13:
            case 14:
                return JsonToken.i;
            case 15:
            case 16:
                return JsonToken.k;
            case 17:
                return JsonToken.n;
            default:
                throw new AssertionError();
        }
    }

    public final void X(int i) {
        int i2 = this.q;
        if (i2 - 1 < 255) {
            int[] iArr = this.p;
            if (i2 == iArr.length) {
                int i3 = i2 * 2;
                this.p = Arrays.copyOf(iArr, i3);
                this.s = Arrays.copyOf(this.s, i3);
                this.r = (String[]) Arrays.copyOf(this.r, i3);
            }
            int[] iArr2 = this.p;
            int i4 = this.q;
            this.q = i4 + 1;
            iArr2[i4] = i;
            return;
        }
        throw new IOException("Nesting limit 255 reached" + u());
    }

    public final char Z() {
        int i;
        if (this.h == this.i && !j(1)) {
            i0("Unterminated escape sequence");
            throw null;
        }
        int i2 = this.h;
        int i3 = i2 + 1;
        this.h = i3;
        char[] cArr = this.g;
        char c2 = cArr[i2];
        Strictness strictness = Strictness.g;
        if (c2 != '\n') {
            if (c2 != '\"') {
                if (c2 != '\'') {
                    if (c2 != '/' && c2 != '\\') {
                        if (c2 != 'b') {
                            if (c2 != 'f') {
                                if (c2 == 'n') {
                                    return '\n';
                                }
                                if (c2 != 'r') {
                                    if (c2 != 't') {
                                        if (c2 == 'u') {
                                            if (i2 + 5 > this.i && !j(4)) {
                                                i0("Unterminated escape sequence");
                                                throw null;
                                            }
                                            int i4 = this.h;
                                            int i5 = i4 + 4;
                                            int i6 = 0;
                                            while (i4 < i5) {
                                                char c3 = cArr[i4];
                                                int i7 = i6 << 4;
                                                if (c3 >= '0' && c3 <= '9') {
                                                    i = c3 - '0';
                                                } else if (c3 >= 'a' && c3 <= 'f') {
                                                    i = c3 - 'W';
                                                } else if (c3 >= 'A' && c3 <= 'F') {
                                                    i = c3 - '7';
                                                } else {
                                                    i0("Malformed Unicode escape \\u".concat(new String(cArr, this.h, 4)));
                                                    throw null;
                                                }
                                                i6 = i + i7;
                                                i4++;
                                            }
                                            this.h += 4;
                                            return (char) i6;
                                        }
                                        i0("Invalid escape sequence");
                                        throw null;
                                    }
                                    return '\t';
                                }
                                return '\r';
                            }
                            return '\f';
                        }
                        return '\b';
                    }
                }
            }
            return c2;
        }
        if (this.f != strictness) {
            this.j++;
            this.k = i3;
        } else {
            i0("Cannot escape a newline character in strict mode");
            throw null;
        }
        if (this.f == strictness) {
            i0("Invalid escaped character \"'\" in strict mode");
            throw null;
        }
        return c2;
    }

    public void a() {
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 3) {
            X(1);
            this.s[this.q - 1] = 0;
            this.l = 0;
            return;
        }
        throw k0("BEGIN_ARRAY");
    }

    public final void a0(char c2) {
        do {
            int i = this.h;
            int i2 = this.i;
            while (i < i2) {
                int i3 = i + 1;
                char c3 = this.g[i];
                if (c3 == c2) {
                    this.h = i3;
                    return;
                }
                if (c3 == '\\') {
                    this.h = i3;
                    Z();
                    i = this.h;
                    i2 = this.i;
                } else {
                    if (c3 == '\n') {
                        this.j++;
                        this.k = i3;
                    }
                    i = i3;
                }
            }
            this.h = i;
        } while (j(1));
        i0("Unterminated string");
        throw null;
    }

    public void b() {
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 1) {
            X(3);
            this.l = 0;
            return;
        }
        throw k0("BEGIN_OBJECT");
    }

    public final void b0() {
        char c2;
        do {
            if (this.h < this.i || j(1)) {
                int i = this.h;
                int i2 = i + 1;
                this.h = i2;
                c2 = this.g[i];
                if (c2 == '\n') {
                    this.j++;
                    this.k = i2;
                    return;
                }
            } else {
                return;
            }
        } while (c2 != '\r');
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.l = 0;
        this.p[0] = 8;
        this.q = 1;
        this.f12756c.close();
    }

    public final void d() {
        if (this.f == Strictness.f12675c) {
            return;
        }
        i0("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x021c, code lost:
    
        if (o(r12) != false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01ad, code lost:
    
        r13 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x021f, code lost:
    
        if (r5 != 2) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0221, code lost:
    
        if (r10 == false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0227, code lost:
    
        if (r1 != Long.MIN_VALUE) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0229, code lost:
    
        if (r17 == 0) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0230, code lost:
    
        if (r1 != 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0232, code lost:
    
        if (r17 != 0) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0234, code lost:
    
        if (r17 == 0) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0237, code lost:
    
        r1 = -r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0238, code lost:
    
        r24.m = r1;
        r24.h += r7;
        r9 = 15;
        r24.l = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x022c, code lost:
    
        r13 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0244, code lost:
    
        if (r5 == r13) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0247, code lost:
    
        if (r5 == 4) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x024a, code lost:
    
        if (r5 != 7) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x024c, code lost:
    
        r24.n = r7;
        r9 = 16;
        r24.l = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:184:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x018c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0274 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e() {
        /*
            Method dump skipped, instructions count: 796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.e():int");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:242)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    public final void e0() {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.h
            int r2 = r1 + r0
            int r3 = r4.i
            if (r2 >= r3) goto L51
            char[] r2 = r4.g
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.d()
        L4b:
            int r1 = r4.h
            int r1 = r1 + r0
            r4.h = r1
            return
        L51:
            int r1 = r1 + r0
            r4.h = r1
            r0 = 1
            boolean r0 = r4.j(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.e0():void");
    }

    public void f() {
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 4) {
            int i2 = this.q;
            this.q = i2 - 1;
            int[] iArr = this.s;
            int i3 = i2 - 2;
            iArr[i3] = iArr[i3] + 1;
            this.l = 0;
            return;
        }
        throw k0("END_ARRAY");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0011. Please report as an issue. */
    public void h0() {
        int i = 0;
        do {
            int i2 = this.l;
            if (i2 == 0) {
                i2 = e();
            }
            switch (i2) {
                case 1:
                    X(3);
                    i++;
                    this.l = 0;
                    break;
                case 2:
                    if (i == 0) {
                        this.r[this.q - 1] = null;
                    }
                    this.q--;
                    i--;
                    this.l = 0;
                    break;
                case 3:
                    X(1);
                    i++;
                    this.l = 0;
                    break;
                case 4:
                    this.q--;
                    i--;
                    this.l = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.l = 0;
                    break;
                case 8:
                    a0('\'');
                    this.l = 0;
                    break;
                case 9:
                    a0(Typography.quote);
                    this.l = 0;
                    break;
                case 10:
                    e0();
                    this.l = 0;
                    break;
                case 12:
                    a0('\'');
                    if (i == 0) {
                        this.r[this.q - 1] = "<skipped>";
                    }
                    this.l = 0;
                    break;
                case 13:
                    a0(Typography.quote);
                    if (i == 0) {
                        this.r[this.q - 1] = "<skipped>";
                    }
                    this.l = 0;
                    break;
                case 14:
                    e0();
                    if (i == 0) {
                        this.r[this.q - 1] = "<skipped>";
                    }
                    this.l = 0;
                    break;
                case 16:
                    this.h += this.n;
                    this.l = 0;
                    break;
                case 17:
                    return;
            }
        } while (i > 0);
        int[] iArr = this.s;
        int i3 = this.q - 1;
        iArr[i3] = iArr[i3] + 1;
    }

    public void i() {
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 2) {
            int i2 = this.q;
            int i3 = i2 - 1;
            this.q = i3;
            this.r[i3] = null;
            int[] iArr = this.s;
            int i4 = i2 - 2;
            iArr[i4] = iArr[i4] + 1;
            this.l = 0;
            return;
        }
        throw k0("END_OBJECT");
    }

    public final void i0(String str) {
        StringBuilder t = a.t(str);
        t.append(u());
        t.append("\nSee ");
        t.append("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("malformed-json"));
        throw new IOException(t.toString());
    }

    public final boolean j(int i) {
        int i2;
        int i3;
        int i4 = this.k;
        int i5 = this.h;
        this.k = i4 - i5;
        int i6 = this.i;
        char[] cArr = this.g;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.i = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.i = 0;
        }
        this.h = 0;
        do {
            int i8 = this.i;
            int read = this.f12756c.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.i + read;
            this.i = i2;
            if (this.j == 0 && (i3 = this.k) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.h++;
                this.k = i3 + 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    public String k() {
        return l(false);
    }

    public final IllegalStateException k0(String str) {
        String str2;
        if (W() == JsonToken.m) {
            str2 = "adapter-not-null-safe";
        } else {
            str2 = "unexpected-json-structure";
        }
        StringBuilder w = a.w("Expected ", str, " but was ");
        w.append(W());
        w.append(u());
        w.append("\nSee ");
        w.append("https://github.com/google/gson/blob/main/Troubleshooting.md#".concat(str2));
        return new IllegalStateException(w.toString());
    }

    public final String l(boolean z) {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (true) {
            int i2 = this.q;
            if (i < i2) {
                int i3 = this.p[i];
                switch (i3) {
                    case 1:
                    case 2:
                        int i4 = this.s[i];
                        if (z && i4 > 0 && i == i2 - 1) {
                            i4--;
                        }
                        sb.append('[');
                        sb.append(i4);
                        sb.append(']');
                        break;
                    case 3:
                    case 4:
                    case 5:
                        sb.append('.');
                        String str = this.r[i];
                        if (str == null) {
                            break;
                        } else {
                            sb.append(str);
                            break;
                        }
                    case 6:
                    case 7:
                    case 8:
                        break;
                    default:
                        throw new AssertionError(a.e(i3, "Unknown scope value: "));
                }
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    public String m() {
        return l(true);
    }

    public boolean n() {
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i != 2 && i != 4 && i != 17) {
            return true;
        }
        return false;
    }

    public final boolean o(char c2) {
        if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
            if (c2 != '#') {
                if (c2 != ',') {
                    if (c2 != '/' && c2 != '=') {
                        if (c2 != '{' && c2 != '}' && c2 != ':') {
                            if (c2 != ';') {
                                switch (c2) {
                                    case '[':
                                    case ']':
                                        return false;
                                    case '\\':
                                        break;
                                    default:
                                        return true;
                                }
                            }
                        } else {
                            return false;
                        }
                    }
                } else {
                    return false;
                }
            }
            d();
            return false;
        }
        return false;
    }

    public String toString() {
        return getClass().getSimpleName() + u();
    }

    final String u() {
        StringBuilder u = a.u(" at line ", this.j + 1, (this.h - this.k) + 1, " column ", " path ");
        u.append(k());
        return u.toString();
    }

    public boolean v() {
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 5) {
            this.l = 0;
            int[] iArr = this.s;
            int i2 = this.q - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (i == 6) {
            this.l = 0;
            int[] iArr2 = this.s;
            int i3 = this.q - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        }
        throw k0("a boolean");
    }

    public double z() {
        char c2;
        int i = this.l;
        if (i == 0) {
            i = e();
        }
        if (i == 15) {
            this.l = 0;
            int[] iArr = this.s;
            int i2 = this.q - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.m;
        }
        if (i == 16) {
            this.o = new String(this.g, this.h, this.n);
            this.h += this.n;
        } else if (i != 8 && i != 9) {
            if (i == 10) {
                this.o = T();
            } else if (i != 11) {
                throw k0("a double");
            }
        } else {
            if (i == 8) {
                c2 = '\'';
            } else {
                c2 = Typography.quote;
            }
            this.o = Q(c2);
        }
        this.l = 11;
        double parseDouble = Double.parseDouble(this.o);
        if (this.f != Strictness.f12675c && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            i0("JSON forbids NaN and infinities: " + parseDouble);
            throw null;
        }
        this.o = null;
        this.l = 0;
        int[] iArr2 = this.s;
        int i3 = this.q - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }
}
