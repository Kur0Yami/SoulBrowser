package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.regex.Pattern;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzhyq implements Closeable, Flushable {
    public static final Pattern n = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");
    public static final String[] o = new String[Uuid.SIZE_BITS];

    /* renamed from: c, reason: collision with root package name */
    public final Writer f8886c;
    public int[] f;
    public int g;
    public final zzhxh h;
    public final String i;
    public final String j;
    public final boolean k;
    public zzhxo l;
    public String m;

    static {
        for (int i = 0; i <= 31; i++) {
            o[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = o;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public zzhyq(Writer writer) {
        int[] iArr = new int[32];
        this.f = iArr;
        boolean z = false;
        this.g = 0;
        if (iArr.length == 0) {
            this.f = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.f;
        int i = this.g;
        this.g = i + 1;
        iArr2[i] = 6;
        this.l = zzhxo.f;
        this.f8886c = writer;
        zzhxh zzhxhVar = zzhxh.d;
        Objects.requireNonNull(zzhxhVar);
        String str = zzhxhVar.f8866a;
        this.h = zzhxhVar;
        this.j = ",";
        if (zzhxhVar.f8867c) {
            this.i = ": ";
            if (str.isEmpty()) {
                this.j = ", ";
            }
        } else {
            this.i = ":";
        }
        if (str.isEmpty() && zzhxhVar.b.isEmpty()) {
            z = true;
        }
        this.k = z;
    }

    public final void a(char c2, int i, int i2) {
        int b = b();
        if (b != i2 && b != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        String str = this.m;
        if (str == null) {
            this.g--;
            if (b == i2) {
                f();
            }
            this.f8886c.write(c2);
            return;
        }
        throw new IllegalStateException("Dangling name: ".concat(str));
    }

    public final int b() {
        int i = this.g;
        if (i != 0) {
            return this.f[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f8886c.close();
        int i = this.g;
        if (i <= 1 && (i != 1 || this.f[0] == 7)) {
            this.g = 0;
            return;
        }
        throw new IOException("Incomplete document");
    }

    public final void d() {
        if (this.m != null) {
            int b = b();
            if (b == 5) {
                this.f8886c.write(this.j);
            } else if (b != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            f();
            this.f[this.g - 1] = 4;
            e(this.m);
            this.m = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(java.lang.String r9) {
        /*
            r8 = this;
            java.io.Writer r0 = r8.f8886c
            r1 = 34
            r0.write(r1)
            int r2 = r9.length()
            r3 = 0
            r4 = r3
        Ld:
            if (r3 >= r2) goto L39
            int r5 = r3 + 1
            char r6 = r9.charAt(r3)
            r7 = 128(0x80, float:1.8E-43)
            if (r6 >= r7) goto L20
            java.lang.String[] r7 = com.google.android.gms.internal.ads.zzhyq.o
            r6 = r7[r6]
            if (r6 == 0) goto L37
            goto L2d
        L20:
            r7 = 8232(0x2028, float:1.1535E-41)
            if (r6 != r7) goto L27
            java.lang.String r6 = "\\u2028"
            goto L2d
        L27:
            r7 = 8233(0x2029, float:1.1537E-41)
            if (r6 != r7) goto L37
            java.lang.String r6 = "\\u2029"
        L2d:
            if (r4 >= r3) goto L33
            int r3 = r3 - r4
            r0.write(r9, r4, r3)
        L33:
            r0.write(r6)
            r4 = r5
        L37:
            r3 = r5
            goto Ld
        L39:
            if (r4 >= r2) goto L3f
            int r2 = r2 - r4
            r0.write(r9, r4, r2)
        L3f:
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhyq.e(java.lang.String):void");
    }

    public final void f() {
        if (!this.k) {
            zzhxh zzhxhVar = this.h;
            String str = zzhxhVar.f8866a;
            Writer writer = this.f8886c;
            writer.write(str);
            int i = this.g;
            for (int i2 = 1; i2 < i; i2++) {
                writer.write(zzhxhVar.b);
            }
        }
    }

    @Override // java.io.Flushable
    public final void flush() {
        if (this.g != 0) {
            this.f8886c.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void i() {
        int b = b();
        if (b != 1) {
            Writer writer = this.f8886c;
            if (b != 2) {
                if (b != 4) {
                    if (b != 6) {
                        if (b == 7) {
                            if (this.l != zzhxo.f8872c) {
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
            f();
            return;
        }
        this.f[this.g - 1] = 2;
        f();
    }
}
