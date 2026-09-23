package com.google.api.client.json;

import com.google.api.client.util.ObjectParser;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sets;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashSet;

/* loaded from: classes3.dex */
public class JsonObjectParser implements ObjectParser {

    /* renamed from: a, reason: collision with root package name */
    public final JsonFactory f12079a;
    public final HashSet b;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final JsonFactory f12080a;
        public Collection b = Sets.newHashSet();

        public Builder(JsonFactory jsonFactory) {
            this.f12080a = (JsonFactory) Preconditions.checkNotNull(jsonFactory);
        }
    }

    public JsonObjectParser(JsonFactory jsonFactory) {
        this(new Builder(jsonFactory));
    }

    public final void a(JsonParser jsonParser) {
        boolean z;
        HashSet hashSet = this.b;
        if (hashSet.isEmpty()) {
            return;
        }
        try {
            if (jsonParser.L(hashSet) != null && jsonParser.f() != JsonToken.h) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, "wrapper key(s) not found: %s", hashSet);
        } catch (Throwable th) {
            jsonParser.close();
            throw th;
        }
    }

    @Override // com.google.api.client.util.ObjectParser
    public final Object parseAndClose(InputStream inputStream, Charset charset, Class cls) {
        return parseAndClose(inputStream, charset, (Type) cls);
    }

    public JsonObjectParser(Builder builder) {
        this.f12079a = builder.f12080a;
        this.b = new HashSet(builder.b);
    }

    @Override // com.google.api.client.util.ObjectParser
    public final Object parseAndClose(InputStream inputStream, Charset charset, Type type) {
        JsonParser createJsonParser = this.f12079a.createJsonParser(inputStream, charset);
        a(createJsonParser);
        return createJsonParser.z(type, true);
    }

    @Override // com.google.api.client.util.ObjectParser
    public final Object parseAndClose(Reader reader, Class cls) {
        return parseAndClose(reader, (Type) cls);
    }

    @Override // com.google.api.client.util.ObjectParser
    public final Object parseAndClose(Reader reader, Type type) {
        JsonParser createJsonParser = this.f12079a.createJsonParser(reader);
        a(createJsonParser);
        return createJsonParser.z(type, true);
    }
}
