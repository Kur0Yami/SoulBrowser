package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.util.Arrays;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public final class zzhyo implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final StringReader f8885c;
    public long l;
    public int m;
    public int[] n;
    public String[] p;
    public int[] q;
    public final char[] f = new char[1024];
    public int g = 0;
    public int h = 0;
    public int i = 0;
    public int j = 0;
    public int k = 0;
    public int o = 1;

    public zzhyo(StringReader stringReader) {
        int[] iArr = new int[32];
        this.n = iArr;
        iArr[0] = 6;
        this.p = new String[32];
        this.q = new int[32];
        this.f8885c = stringReader;
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0164, code lost:
    
        r24 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01b8, code lost:
    
        if (f(r13) == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01bc, code lost:
    
        if (r9 != 2) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01be, code lost:
    
        if (r10 == false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01c4, code lost:
    
        if (r24 != Long.MIN_VALUE) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01c6, code lost:
    
        if (r19 == false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01c8, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01d0, code lost:
    
        if (r24 != 0) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01d2, code lost:
    
        if (r6 != false) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01dc, code lost:
    
        r7 = -r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01dd, code lost:
    
        r26.l = r7;
        r26.g += r4;
        r7 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01e6, code lost:
    
        r26.k = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01d7, code lost:
    
        if (r6 == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01d9, code lost:
    
        r7 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01cc, code lost:
    
        r6 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01ca, code lost:
    
        r9 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01e9, code lost:
    
        if (r9 == 2) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01ec, code lost:
    
        if (r9 == 4) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ef, code lost:
    
        if (r9 != 7) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01f1, code lost:
    
        r26.m = r4;
        r7 = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0234 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x021f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0220  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a() {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhyo.a():int");
    }

    public final String b() {
        String str;
        int i = this.k;
        if (i == 0) {
            i = a();
        }
        if (i == 10) {
            str = j();
        } else if (i == 8) {
            str = i('\'');
        } else if (i == 9) {
            str = i(Typography.quote);
        } else if (i == 11) {
            str = null;
        } else if (i == 15) {
            str = Long.toString(this.l);
        } else if (i == 16) {
            str = new String(this.f, this.g, this.m);
            this.g += this.m;
        } else {
            throw u("a string");
        }
        this.k = 0;
        int[] iArr = this.q;
        int i2 = this.o - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.k = 0;
        this.n[0] = 8;
        this.o = 1;
        this.f8885c.close();
    }

    public final String d() {
        int i = this.i + 1;
        int i2 = this.g - this.j;
        StringBuilder sb = new StringBuilder("$");
        for (int i3 = 0; i3 < this.o; i3++) {
            int i4 = this.n[i3];
            switch (i4) {
                case 1:
                case 2:
                    int i5 = this.q[i3];
                    sb.append('[');
                    sb.append(i5);
                    sb.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sb.append('.');
                    String str = this.p[i3];
                    if (str != null) {
                        sb.append(str);
                        break;
                    } else {
                        break;
                    }
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    throw new AssertionError(androidx.work.impl.workers.a.r(i4, "Unknown scope value: ", new StringBuilder(String.valueOf(i4).length() + 21)));
            }
        }
        int i6 = i2 + 1;
        String sb2 = sb.toString();
        int length = String.valueOf(i).length();
        int length2 = String.valueOf(i6).length();
        StringBuilder sb3 = new StringBuilder(sb2.length() + length2 + length + 17 + 6);
        androidx.work.impl.workers.a.A(sb3, " at line ", i, " column ", i6);
        return android.support.v4.media.a.p(sb3, " path ", sb2);
    }

    public final int e() {
        int i = this.k;
        if (i == 0) {
            i = a();
        }
        switch (i) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            default:
                return 10;
        }
    }

    public final boolean f(char c2) {
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
            n();
            throw null;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0116, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max(r4 + r4, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0122, code lost:
    
        r1.append(r7, r3, r4);
        r11.g = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00ca, code lost:
    
        o("Malformed Unicode escape \\u".concat(new java.lang.String(r7, r11.g, 4)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00da, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0112, code lost:
    
        r4 = r2 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0114, code lost:
    
        if (r1 != null) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String i(char r12) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhyo.i(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0049, code lost:
    
        n();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x004c, code lost:
    
        throw null;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:55:0x0043. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String j() {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
            r2 = r0
            r3 = r1
        L4:
            int r4 = r7.g
            int r4 = r4 + r2
            int r5 = r7.h
            char[] r6 = r7.f
            if (r4 >= r5) goto L4d
            char r4 = r6[r4]
            r5 = 9
            if (r4 == r5) goto L5a
            r5 = 10
            if (r4 == r5) goto L5a
            r5 = 12
            if (r4 == r5) goto L5a
            r5 = 13
            if (r4 == r5) goto L5a
            r5 = 32
            if (r4 == r5) goto L5a
            r5 = 35
            if (r4 == r5) goto L49
            r5 = 44
            if (r4 == r5) goto L5a
            r5 = 47
            if (r4 == r5) goto L49
            r5 = 61
            if (r4 == r5) goto L49
            r5 = 123(0x7b, float:1.72E-43)
            if (r4 == r5) goto L5a
            r5 = 125(0x7d, float:1.75E-43)
            if (r4 == r5) goto L5a
            r5 = 58
            if (r4 == r5) goto L5a
            r5 = 59
            if (r4 == r5) goto L49
            switch(r4) {
                case 91: goto L5a;
                case 92: goto L49;
                case 93: goto L5a;
                default: goto L46;
            }
        L46:
            int r2 = r2 + 1
            goto L4
        L49:
            r7.n()
            throw r1
        L4d:
            r4 = 1024(0x400, float:1.435E-42)
            if (r2 >= r4) goto L5c
            int r4 = r2 + 1
            boolean r4 = r7.l(r4)
            if (r4 == 0) goto L5a
            goto L4
        L5a:
            r0 = r2
            goto L7a
        L5c:
            if (r3 != 0) goto L69
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r4 = 16
            int r4 = java.lang.Math.max(r2, r4)
            r3.<init>(r4)
        L69:
            int r4 = r7.g
            r3.append(r6, r4, r2)
            int r4 = r7.g
            int r4 = r4 + r2
            r7.g = r4
            r2 = 1
            boolean r2 = r7.l(r2)
            if (r2 != 0) goto L93
        L7a:
            if (r3 != 0) goto L84
            java.lang.String r1 = new java.lang.String
            int r2 = r7.g
            r1.<init>(r6, r2, r0)
            goto L8d
        L84:
            int r1 = r7.g
            r3.append(r6, r1, r0)
            java.lang.String r1 = r3.toString()
        L8d:
            int r2 = r7.g
            int r2 = r2 + r0
            r7.g = r2
            return r1
        L93:
            r2 = r0
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhyo.j():java.lang.String");
    }

    public final void k(int i) {
        int i2 = this.o;
        if (i2 - 1 < 1280) {
            int[] iArr = this.n;
            if (i2 == iArr.length) {
                int i3 = i2 + i2;
                this.n = Arrays.copyOf(iArr, i3);
                this.q = Arrays.copyOf(this.q, i3);
                this.p = (String[]) Arrays.copyOf(this.p, i3);
            }
            int[] iArr2 = this.n;
            int i4 = this.o;
            this.o = i4 + 1;
            iArr2[i4] = i;
            return;
        }
        String d = d();
        throw new IOException(android.support.v4.media.a.p(new StringBuilder(d.length() + 26), "Nesting limit 1280 reached", d));
    }

    public final boolean l(int i) {
        int i2;
        int i3 = this.j;
        int i4 = this.g;
        this.j = i3 - i4;
        int i5 = this.h;
        char[] cArr = this.f;
        if (i5 != i4) {
            int i6 = i5 - i4;
            this.h = i6;
            System.arraycopy(cArr, i4, cArr, 0, i6);
        } else {
            this.h = 0;
        }
        this.g = 0;
        do {
            int i7 = this.h;
            int read = this.f8885c.read(cArr, i7, 1024 - i7);
            if (read == -1) {
                return false;
            }
            i2 = this.h + read;
            this.h = i2;
            if (this.i == 0 && this.j == 0 && i2 > 0 && cArr[0] == 65279) {
                this.g++;
                this.j = 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    public final int m(boolean z) {
        int i = this.g;
        int i2 = this.h;
        while (true) {
            if (i == i2) {
                this.g = i;
                if (!l(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input".concat(d()));
                }
                i = this.g;
                i2 = this.h;
            }
            int i3 = i + 1;
            char c2 = this.f[i];
            if (c2 == '\n') {
                this.i++;
                this.j = i3;
            } else if (c2 != ' ' && c2 != '\r' && c2 != '\t') {
                if (c2 == '/') {
                    this.g = i3;
                    if (i3 == i2) {
                        this.g = i;
                        boolean l = l(2);
                        this.g++;
                        if (!l) {
                            return 47;
                        }
                    }
                    n();
                    throw null;
                }
                if (c2 != '#') {
                    this.g = i3;
                    return c2;
                }
                this.g = i3;
                n();
                throw null;
            }
            i = i3;
        }
    }

    public final void n() {
        o("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
        throw null;
    }

    public final void o(String str) {
        String d = d();
        throw new IOException(android.support.v4.media.a.q(new StringBuilder(str.length() + d.length() + 79), str, d, "\nSee https://github.com/google/gson/blob/main/Troubleshooting.md#malformed-json"));
    }

    public final String toString() {
        return "zzhyo".concat(d());
    }

    public final IllegalStateException u(String str) {
        String str2;
        int e = e();
        String a2 = zzhyp.a(e());
        String d = d();
        int d2 = androidx.work.impl.workers.a.d(str.length() + 18, d.length(), a2);
        if (e == 9) {
            str2 = "adapter-not-null-safe";
        } else {
            str2 = "unexpected-json-structure";
        }
        String concat = "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat(str2);
        StringBuilder sb = new StringBuilder(concat.length() + d2 + 5);
        android.support.v4.media.a.z(sb, "Expected ", str, " but was ", a2);
        return new IllegalStateException(android.support.v4.media.a.q(sb, d, "\nSee ", concat));
    }
}
