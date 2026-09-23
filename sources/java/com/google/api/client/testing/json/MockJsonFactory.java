package com.google.api.client.testing.json;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import com.google.api.client.json.JsonParser;
import com.google.api.client.util.Beta;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;

@Beta
/* loaded from: classes3.dex */
public class MockJsonFactory extends JsonFactory {
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.api.client.json.JsonGenerator] */
    @Override // com.google.api.client.json.JsonFactory
    public final JsonGenerator createJsonGenerator(OutputStream outputStream, Charset charset) {
        return new Object();
    }

    @Override // com.google.api.client.json.JsonFactory
    public final JsonParser createJsonParser(InputStream inputStream) {
        return new MockJsonParser(this);
    }

    @Override // com.google.api.client.json.JsonFactory
    public final JsonParser createJsonParser(InputStream inputStream, Charset charset) {
        return new MockJsonParser(this);
    }

    @Override // com.google.api.client.json.JsonFactory
    public final JsonParser createJsonParser(String str) {
        return new MockJsonParser(this);
    }

    @Override // com.google.api.client.json.JsonFactory
    public final JsonParser createJsonParser(Reader reader) {
        return new MockJsonParser(this);
    }
}
