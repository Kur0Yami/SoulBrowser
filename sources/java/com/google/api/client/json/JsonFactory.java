package com.google.api.client.json;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public abstract class JsonFactory {
    public abstract JsonGenerator createJsonGenerator(OutputStream outputStream, Charset charset);

    public final JsonObjectParser createJsonObjectParser() {
        return new JsonObjectParser(this);
    }

    public abstract JsonParser createJsonParser(InputStream inputStream);

    public abstract JsonParser createJsonParser(InputStream inputStream, Charset charset);

    public abstract JsonParser createJsonParser(Reader reader);

    public abstract JsonParser createJsonParser(String str);

    public final <T> T fromInputStream(InputStream inputStream, Class<T> cls) {
        return (T) createJsonParser(inputStream).B(cls);
    }

    public final <T> T fromReader(Reader reader, Class<T> cls) {
        return (T) createJsonParser(reader).B(cls);
    }

    public final <T> T fromString(String str, Class<T> cls) {
        return (T) createJsonParser(str).z(cls, false);
    }

    public final byte[] toByteArray(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        JsonGenerator createJsonGenerator = createJsonGenerator(byteArrayOutputStream, StandardCharsets.UTF_8);
        createJsonGenerator.b(obj, false);
        createJsonGenerator.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public final String toPrettyString(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        JsonGenerator createJsonGenerator = createJsonGenerator(byteArrayOutputStream, StandardCharsets.UTF_8);
        createJsonGenerator.a();
        createJsonGenerator.b(obj, false);
        createJsonGenerator.flush();
        return byteArrayOutputStream.toString("UTF-8");
    }

    public final String toString(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        JsonGenerator createJsonGenerator = createJsonGenerator(byteArrayOutputStream, StandardCharsets.UTF_8);
        createJsonGenerator.b(obj, false);
        createJsonGenerator.flush();
        return byteArrayOutputStream.toString("UTF-8");
    }

    public final <T> T fromInputStream(InputStream inputStream, Charset charset, Class<T> cls) {
        return (T) createJsonParser(inputStream, charset).B(cls);
    }
}
