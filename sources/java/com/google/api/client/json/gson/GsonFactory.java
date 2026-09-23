package com.google.api.client.json.gson;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import com.google.api.client.json.JsonParser;
import com.google.api.client.util.Beta;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public class GsonFactory extends JsonFactory {
    private boolean readLeniency;

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    @Beta
    /* loaded from: classes3.dex */
    public static class InstanceHolder {

        /* renamed from: a, reason: collision with root package name */
        public static final GsonFactory f12084a = new GsonFactory();
    }

    public GsonFactory() {
        this.readLeniency = false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.api.client.json.gson.GsonFactory$Builder] */
    public static Builder builder() {
        return new Object();
    }

    @Beta
    public static GsonFactory getDefaultInstance() {
        return InstanceHolder.f12084a;
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonGenerator createJsonGenerator(OutputStream outputStream, Charset charset) {
        return createJsonGenerator(new OutputStreamWriter(outputStream, charset));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(InputStream inputStream) {
        return createJsonParser(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
    }

    public boolean getReadLeniency() {
        return this.readLeniency;
    }

    public JsonGenerator createJsonGenerator(Writer writer) {
        return new GsonGenerator(new JsonWriter(writer));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(InputStream inputStream, Charset charset) {
        if (charset == null) {
            return createJsonParser(inputStream);
        }
        return createJsonParser(new InputStreamReader(inputStream, charset));
    }

    private GsonFactory(Builder builder) {
        this.readLeniency = false;
        builder.getClass();
        this.readLeniency = false;
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(String str) {
        return createJsonParser(new StringReader(str));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(Reader reader) {
        return new GsonParser(this, new JsonReader(reader));
    }
}
