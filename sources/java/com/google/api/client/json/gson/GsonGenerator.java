package com.google.api.client.json.gson;

import com.google.api.client.json.JsonGenerator;
import com.google.gson.FormattingStyle;
import com.google.gson.Strictness;
import com.google.gson.stream.JsonWriter;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class GsonGenerator extends JsonGenerator {

    /* renamed from: c, reason: collision with root package name */
    public final JsonWriter f12085c;

    /* loaded from: classes3.dex */
    public static final class StringNumber extends Number {
        @Override // java.lang.Number
        public final double doubleValue() {
            return 0.0d;
        }

        @Override // java.lang.Number
        public final float floatValue() {
            return 0.0f;
        }

        @Override // java.lang.Number
        public final int intValue() {
            return 0;
        }

        @Override // java.lang.Number
        public final long longValue() {
            return 0L;
        }

        public final String toString() {
            return null;
        }
    }

    public GsonGenerator(JsonWriter jsonWriter) {
        this.f12085c = jsonWriter;
        jsonWriter.l = Strictness.f12675c;
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void A(String str) {
        this.f12085c.F(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void a() {
        FormattingStyle formattingStyle = FormattingStyle.e;
        this.f12085c.n(new FormattingStyle(formattingStyle.f12662a, "  ", formattingStyle.f12663c));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f12085c.close();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void d(boolean z) {
        this.f12085c.G(z);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void e() {
        this.f12085c.f();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void f() {
        this.f12085c.i();
    }

    @Override // com.google.api.client.json.JsonGenerator, java.io.Flushable
    public final void flush() {
        this.f12085c.flush();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void i(String str) {
        this.f12085c.j(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void j() {
        this.f12085c.l();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void k(double d) {
        this.f12085c.v(d);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void l(float f) {
        JsonWriter jsonWriter = this.f12085c;
        jsonWriter.L();
        if (jsonWriter.l != Strictness.f12675c && (Float.isNaN(f) || Float.isInfinite(f))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + f);
        }
        jsonWriter.a();
        jsonWriter.f12758c.append((CharSequence) Float.toString(f));
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void m(int i) {
        this.f12085c.z(i);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void n(long j) {
        this.f12085c.z(j);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void o(BigDecimal bigDecimal) {
        this.f12085c.B(bigDecimal);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void u(BigInteger bigInteger) {
        this.f12085c.B(bigInteger);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void v() {
        this.f12085c.b();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public final void z() {
        this.f12085c.d();
    }
}
