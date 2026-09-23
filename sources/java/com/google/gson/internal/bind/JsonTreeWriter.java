package com.google.gson.internal.bind;

import android.support.v4.media.a;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.Strictness;
import com.google.gson.stream.JsonWriter;
import j$.util.Objects;
import java.io.Writer;

/* loaded from: classes3.dex */
public final class JsonTreeWriter extends JsonWriter {
    public static final JsonPrimitive t;
    public String s;

    static {
        new Writer() { // from class: com.google.gson.internal.bind.JsonTreeWriter.1
            @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                throw new AssertionError();
            }

            @Override // java.io.Writer, java.io.Flushable
            public final void flush() {
                throw new AssertionError();
            }

            @Override // java.io.Writer
            public final void write(char[] cArr, int i, int i2) {
                throw new AssertionError();
            }
        };
        t = new JsonPrimitive("closed");
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void A(Boolean bool) {
        if (bool == null) {
            Q(JsonNull.f12670c);
        } else {
            Q(new JsonPrimitive(bool));
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void B(Number number) {
        if (number == null) {
            Q(JsonNull.f12670c);
            return;
        }
        if (this.l != Strictness.f12675c) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        Q(new JsonPrimitive(number));
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void F(String str) {
        if (str == null) {
            Q(JsonNull.f12670c);
        } else {
            Q(new JsonPrimitive(str));
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void G(boolean z) {
        Q(new JsonPrimitive(Boolean.valueOf(z)));
    }

    public final void Q(JsonElement jsonElement) {
        this.s.getClass();
        if (!(jsonElement instanceof JsonNull) || this.o) {
            ((JsonObject) ((JsonElement) a.c(1, null))).q(this.s, jsonElement);
        }
        this.s = null;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void b() {
        Q(new JsonArray());
        throw null;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void d() {
        Q(new JsonObject());
        throw null;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void f() {
        throw null;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public final void flush() {
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void i() {
        throw null;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void j(String str) {
        Objects.requireNonNull(str, "name == null");
        throw null;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final JsonWriter l() {
        Q(JsonNull.f12670c);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void v(double d) {
        if (this.l == Strictness.f12675c || (!Double.isNaN(d) && !Double.isInfinite(d))) {
            Q(new JsonPrimitive(Double.valueOf(d)));
        } else {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d);
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    public final void z(long j) {
        Q(new JsonPrimitive(Long.valueOf(j)));
    }
}
