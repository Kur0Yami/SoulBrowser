package com.google.gson.stream;

import com.google.gson.FormattingStyle;
import com.google.gson.Strictness;
import j$.util.Objects;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
public class JsonWriter implements Closeable, Flushable {
    public static final Pattern p = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");
    public static final String[] q = new String[Uuid.SIZE_BITS];
    public static final String[] r;

    /* renamed from: c, reason: collision with root package name */
    public final Writer f12758c;
    public int[] f;
    public int g;
    public FormattingStyle h;
    public String i;
    public String j;
    public boolean k;
    public Strictness l;
    public boolean m;
    public String n;
    public boolean o;

    static {
        for (int i = 0; i <= 31; i++) {
            q[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = q;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        r = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        int[] iArr = new int[32];
        this.f = iArr;
        this.g = 0;
        if (iArr.length == 0) {
            this.f = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.f;
        int i = this.g;
        this.g = i + 1;
        iArr2[i] = 6;
        this.l = Strictness.f;
        this.o = true;
        Objects.requireNonNull(writer, "out == null");
        this.f12758c = writer;
        n(FormattingStyle.d);
    }

    public void A(Boolean bool) {
        String str;
        if (bool == null) {
            l();
            return;
        }
        L();
        a();
        if (bool.booleanValue()) {
            str = "true";
        } else {
            str = "false";
        }
        this.f12758c.write(str);
    }

    public void B(Number number) {
        if (number == null) {
            l();
            return;
        }
        L();
        String obj = number.toString();
        Class<?> cls = number.getClass();
        if (cls != Integer.class && cls != Long.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class) {
            if (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN")) {
                if (cls != Float.class && cls != Double.class && !p.matcher(obj).matches()) {
                    throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + obj);
                }
            } else if (this.l != Strictness.f12675c) {
                throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(obj));
            }
        }
        a();
        this.f12758c.append((CharSequence) obj);
    }

    public void F(String str) {
        if (str == null) {
            l();
            return;
        }
        L();
        a();
        u(str);
    }

    public void G(boolean z) {
        String str;
        L();
        a();
        if (z) {
            str = "true";
        } else {
            str = "false";
        }
        this.f12758c.write(str);
    }

    public final void L() {
        if (this.n != null) {
            int m = m();
            if (m == 5) {
                this.f12758c.write(this.j);
            } else if (m != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            k();
            this.f[this.g - 1] = 4;
            u(this.n);
            this.n = null;
        }
    }

    public final void a() {
        int m = m();
        if (m != 1) {
            Writer writer = this.f12758c;
            if (m != 2) {
                if (m != 4) {
                    if (m != 6) {
                        if (m == 7) {
                            if (this.l != Strictness.f12675c) {
                                throw new IllegalStateException("JSON must have only one top-level value.");
                            }
                        } else {
                            throw new IllegalStateException("Nesting problem.");
                        }
                    }
                    this.f[this.g - 1] = 7;
                    return;
                }
                writer.append((CharSequence) this.i);
                this.f[this.g - 1] = 5;
                return;
            }
            writer.append((CharSequence) this.j);
            k();
            return;
        }
        this.f[this.g - 1] = 2;
        k();
    }

    public void b() {
        L();
        a();
        int i = this.g;
        int[] iArr = this.f;
        if (i == iArr.length) {
            this.f = Arrays.copyOf(iArr, i * 2);
        }
        int[] iArr2 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr2[i2] = 1;
        this.f12758c.write(91);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f12758c.close();
        int i = this.g;
        if (i <= 1 && (i != 1 || this.f[i - 1] == 7)) {
            this.g = 0;
            return;
        }
        throw new IOException("Incomplete document");
    }

    public void d() {
        L();
        a();
        int i = this.g;
        int[] iArr = this.f;
        if (i == iArr.length) {
            this.f = Arrays.copyOf(iArr, i * 2);
        }
        int[] iArr2 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr2[i2] = 3;
        this.f12758c.write(123);
    }

    public final void e(char c2, int i, int i2) {
        int m = m();
        if (m != i2 && m != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.n == null) {
            this.g--;
            if (m == i2) {
                k();
            }
            this.f12758c.write(c2);
            return;
        }
        throw new IllegalStateException("Dangling name: " + this.n);
    }

    public void f() {
        e(']', 1, 2);
    }

    public void flush() {
        if (this.g != 0) {
            this.f12758c.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public void i() {
        e('}', 3, 5);
    }

    public void j(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.n == null) {
            int m = m();
            if (m != 3 && m != 5) {
                throw new IllegalStateException("Please begin an object before writing a name.");
            }
            this.n = str;
            return;
        }
        throw new IllegalStateException("Already wrote a name, expecting a value.");
    }

    public final void k() {
        if (!this.k) {
            String str = this.h.f12662a;
            Writer writer = this.f12758c;
            writer.write(str);
            int i = this.g;
            for (int i2 = 1; i2 < i; i2++) {
                writer.write(this.h.b);
            }
        }
    }

    public JsonWriter l() {
        if (this.n != null) {
            if (this.o) {
                L();
            } else {
                this.n = null;
                return this;
            }
        }
        a();
        this.f12758c.write("null");
        return this;
    }

    public final int m() {
        int i = this.g;
        if (i != 0) {
            return this.f[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void n(FormattingStyle formattingStyle) {
        boolean z;
        Objects.requireNonNull(formattingStyle);
        this.h = formattingStyle;
        this.j = ",";
        if (formattingStyle.f12663c) {
            this.i = ": ";
            if (formattingStyle.f12662a.isEmpty()) {
                this.j = ", ";
            }
        } else {
            this.i = ":";
        }
        if (this.h.f12662a.isEmpty() && this.h.b.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        this.k = z;
    }

    public final void o(Strictness strictness) {
        Objects.requireNonNull(strictness);
        this.l = strictness;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(java.lang.String r9) {
        /*
            r8 = this;
            boolean r0 = r8.m
            if (r0 == 0) goto L7
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.r
            goto L9
        L7:
            java.lang.String[] r0 = com.google.gson.stream.JsonWriter.q
        L9:
            java.io.Writer r1 = r8.f12758c
            r2 = 34
            r1.write(r2)
            int r3 = r9.length()
            r4 = 0
            r5 = r4
        L16:
            if (r4 >= r3) goto L41
            char r6 = r9.charAt(r4)
            r7 = 128(0x80, float:1.8E-43)
            if (r6 >= r7) goto L25
            r6 = r0[r6]
            if (r6 != 0) goto L32
            goto L3e
        L25:
            r7 = 8232(0x2028, float:1.1535E-41)
            if (r6 != r7) goto L2c
            java.lang.String r6 = "\\u2028"
            goto L32
        L2c:
            r7 = 8233(0x2029, float:1.1537E-41)
            if (r6 != r7) goto L3e
            java.lang.String r6 = "\\u2029"
        L32:
            if (r5 >= r4) goto L39
            int r7 = r4 - r5
            r1.write(r9, r5, r7)
        L39:
            r1.write(r6)
            int r5 = r4 + 1
        L3e:
            int r4 = r4 + 1
            goto L16
        L41:
            if (r5 >= r3) goto L47
            int r3 = r3 - r5
            r1.write(r9, r5, r3)
        L47:
            r1.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonWriter.u(java.lang.String):void");
    }

    public void v(double d) {
        L();
        if (this.l != Strictness.f12675c && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        a();
        this.f12758c.append((CharSequence) Double.toString(d));
    }

    public void z(long j) {
        L();
        a();
        this.f12758c.write(Long.toString(j));
    }
}
