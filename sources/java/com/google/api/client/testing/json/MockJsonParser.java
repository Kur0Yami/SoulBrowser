package com.google.api.client.testing.json;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.api.client.util.Beta;
import java.math.BigDecimal;
import java.math.BigInteger;

@Beta
/* loaded from: classes3.dex */
public class MockJsonParser extends JsonParser {
    public final MockJsonFactory g;

    public MockJsonParser(MockJsonFactory mockJsonFactory) {
        this.g = mockJsonFactory;
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonParser G() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public final BigInteger a() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public final byte b() {
        return (byte) 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.api.client.json.JsonParser
    public final String e() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonToken f() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public final BigDecimal i() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public final double j() {
        return 0.0d;
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonFactory k() {
        return this.g;
    }

    @Override // com.google.api.client.json.JsonParser
    public final float l() {
        return 0.0f;
    }

    @Override // com.google.api.client.json.JsonParser
    public final int m() {
        return 0;
    }

    @Override // com.google.api.client.json.JsonParser
    public final long n() {
        return 0L;
    }

    @Override // com.google.api.client.json.JsonParser
    public final short o() {
        return (short) 0;
    }

    @Override // com.google.api.client.json.JsonParser
    public final String u() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonToken v() {
        return null;
    }
}
