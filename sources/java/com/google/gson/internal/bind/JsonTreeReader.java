package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.Strictness;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class JsonTreeReader extends JsonReader {
    public static final Object x;
    public Object[] t;
    public int u;
    public String[] v;
    public int[] w;

    /* renamed from: com.google.gson.internal.bind.JsonTreeReader$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12714a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f12714a = iArr;
            try {
                iArr[4] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12714a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12714a[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12714a[9] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        new Reader() { // from class: com.google.gson.internal.bind.JsonTreeReader.1
            @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                throw new AssertionError();
            }

            @Override // java.io.Reader
            public final int read(char[] cArr, int i, int i2) {
                throw new AssertionError();
            }
        };
        x = new Object();
    }

    @Override // com.google.gson.stream.JsonReader
    public final int A() {
        JsonToken W = W();
        JsonToken jsonToken = JsonToken.k;
        if (W != jsonToken && W != JsonToken.j) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + W + s0());
        }
        int g = ((JsonPrimitive) A0()).g();
        B0();
        int i = this.u;
        if (i > 0) {
            int[] iArr = this.w;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return g;
    }

    public final Object A0() {
        return this.t[this.u - 1];
    }

    @Override // com.google.gson.stream.JsonReader
    public final long B() {
        JsonToken W = W();
        JsonToken jsonToken = JsonToken.k;
        if (W != jsonToken && W != JsonToken.j) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + W + s0());
        }
        long m = ((JsonPrimitive) A0()).m();
        B0();
        int i = this.u;
        if (i > 0) {
            int[] iArr = this.w;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return m;
    }

    public final Object B0() {
        Object[] objArr = this.t;
        int i = this.u - 1;
        this.u = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    public final void C0(Object obj) {
        int i = this.u;
        Object[] objArr = this.t;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.t = Arrays.copyOf(objArr, i2);
            this.w = Arrays.copyOf(this.w, i2);
            this.v = (String[]) Arrays.copyOf(this.v, i2);
        }
        Object[] objArr2 = this.t;
        int i3 = this.u;
        this.u = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // com.google.gson.stream.JsonReader
    public final String F() {
        return y0(false);
    }

    @Override // com.google.gson.stream.JsonReader
    public final void L() {
        n0(JsonToken.m);
        B0();
        int i = this.u;
        if (i > 0) {
            int[] iArr = this.w;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String S() {
        JsonToken W = W();
        JsonToken jsonToken = JsonToken.j;
        if (W != jsonToken && W != JsonToken.k) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + W + s0());
        }
        String p = ((JsonPrimitive) B0()).p();
        int i = this.u;
        if (i > 0) {
            int[] iArr = this.w;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return p;
    }

    @Override // com.google.gson.stream.JsonReader
    public final JsonToken W() {
        if (this.u == 0) {
            return JsonToken.n;
        }
        Object A0 = A0();
        if (A0 instanceof Iterator) {
            boolean z = this.t[this.u - 2] instanceof JsonObject;
            Iterator it = (Iterator) A0;
            if (it.hasNext()) {
                if (z) {
                    return JsonToken.i;
                }
                C0(it.next());
                return W();
            }
            if (z) {
                return JsonToken.h;
            }
            return JsonToken.f;
        }
        if (A0 instanceof JsonObject) {
            return JsonToken.g;
        }
        if (A0 instanceof JsonArray) {
            return JsonToken.f12757c;
        }
        if (A0 instanceof JsonPrimitive) {
            Serializable serializable = ((JsonPrimitive) A0).f12672c;
            if (serializable instanceof String) {
                return JsonToken.j;
            }
            if (serializable instanceof Boolean) {
                return JsonToken.l;
            }
            if (serializable instanceof Number) {
                return JsonToken.k;
            }
            throw new AssertionError();
        }
        if (A0 instanceof JsonNull) {
            return JsonToken.m;
        }
        if (A0 == x) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new IOException("Custom JsonElement subclass " + A0.getClass().getName() + " is not supported");
    }

    @Override // com.google.gson.stream.JsonReader
    public final void a() {
        n0(JsonToken.f12757c);
        C0(((JsonArray) A0()).f12669c.iterator());
        this.w[this.u - 1] = 0;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void b() {
        n0(JsonToken.g);
        C0(((JsonObject) A0()).f12671c.entrySet().iterator());
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.t = new Object[]{x};
        this.u = 1;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void f() {
        n0(JsonToken.f);
        B0();
        B0();
        int i = this.u;
        if (i > 0) {
            int[] iArr = this.w;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final void h0() {
        int ordinal = W().ordinal();
        if (ordinal != 1) {
            if (ordinal != 9) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        B0();
                        int i = this.u;
                        if (i > 0) {
                            int[] iArr = this.w;
                            int i2 = i - 1;
                            iArr[i2] = iArr[i2] + 1;
                            return;
                        }
                        return;
                    }
                    y0(true);
                    return;
                }
                i();
                return;
            }
            return;
        }
        f();
    }

    @Override // com.google.gson.stream.JsonReader
    public final void i() {
        n0(JsonToken.h);
        this.v[this.u - 1] = null;
        B0();
        B0();
        int i = this.u;
        if (i > 0) {
            int[] iArr = this.w;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String k() {
        return q0(false);
    }

    @Override // com.google.gson.stream.JsonReader
    public final String m() {
        return q0(true);
    }

    @Override // com.google.gson.stream.JsonReader
    public final boolean n() {
        JsonToken W = W();
        if (W != JsonToken.h && W != JsonToken.f && W != JsonToken.n) {
            return true;
        }
        return false;
    }

    public final void n0(JsonToken jsonToken) {
        if (W() == jsonToken) {
            return;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + W() + s0());
    }

    public final String q0(boolean z) {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (true) {
            int i2 = this.u;
            if (i < i2) {
                Object[] objArr = this.t;
                Object obj = objArr[i];
                if (obj instanceof JsonArray) {
                    i++;
                    if (i < i2 && (objArr[i] instanceof Iterator)) {
                        int i3 = this.w[i];
                        if (z && i3 > 0 && (i == i2 - 1 || i == i2 - 2)) {
                            i3--;
                        }
                        sb.append('[');
                        sb.append(i3);
                        sb.append(']');
                    }
                } else if ((obj instanceof JsonObject) && (i = i + 1) < i2 && (objArr[i] instanceof Iterator)) {
                    sb.append('.');
                    String str = this.v[i];
                    if (str != null) {
                        sb.append(str);
                    }
                }
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    public final String s0() {
        return " at path " + q0(false);
    }

    @Override // com.google.gson.stream.JsonReader
    public final String toString() {
        return "JsonTreeReader" + s0();
    }

    @Override // com.google.gson.stream.JsonReader
    public final boolean v() {
        n0(JsonToken.l);
        boolean a2 = ((JsonPrimitive) B0()).a();
        int i = this.u;
        if (i > 0) {
            int[] iArr = this.w;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return a2;
    }

    public final String y0(boolean z) {
        String str;
        n0(JsonToken.i);
        Map.Entry entry = (Map.Entry) ((Iterator) A0()).next();
        String str2 = (String) entry.getKey();
        String[] strArr = this.v;
        int i = this.u - 1;
        if (z) {
            str = "<skipped>";
        } else {
            str = str2;
        }
        strArr[i] = str;
        C0(entry.getValue());
        return str2;
    }

    @Override // com.google.gson.stream.JsonReader
    public final double z() {
        JsonToken W = W();
        JsonToken jsonToken = JsonToken.k;
        if (W != jsonToken && W != JsonToken.j) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + W + s0());
        }
        double r = ((JsonPrimitive) A0()).r();
        if (this.f == Strictness.f12675c || (!Double.isNaN(r) && !Double.isInfinite(r))) {
            B0();
            int i = this.u;
            if (i > 0) {
                int[] iArr = this.w;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return r;
        }
        throw new IOException("JSON forbids NaN and infinities: " + r);
    }
}
