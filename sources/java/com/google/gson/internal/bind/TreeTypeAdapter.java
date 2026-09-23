package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.Streams;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Type;

/* loaded from: classes3.dex */
public final class TreeTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {

    /* renamed from: a, reason: collision with root package name */
    public final JsonSerializer f12732a;
    public final JsonDeserializer b;

    /* renamed from: c, reason: collision with root package name */
    public final Gson f12733c;
    public final TypeToken d;
    public final TypeAdapterFactory e;
    public final boolean f;
    public volatile TypeAdapter g;

    /* loaded from: classes3.dex */
    public final class GsonContextImpl implements JsonSerializationContext, JsonDeserializationContext {
    }

    /* loaded from: classes3.dex */
    public static final class SingleTypeFactory implements TypeAdapterFactory {
        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            Class cls = typeToken.f12754a;
            throw null;
        }
    }

    public TreeTypeAdapter(JsonSerializer jsonSerializer, JsonDeserializer jsonDeserializer, Gson gson, TypeToken typeToken, TypeAdapterFactory typeAdapterFactory, boolean z) {
        this.f12732a = jsonSerializer;
        this.b = jsonDeserializer;
        this.f12733c = gson;
        this.d = typeToken;
        this.e = typeAdapterFactory;
        this.f = z;
    }

    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) {
        JsonDeserializer jsonDeserializer = this.b;
        if (jsonDeserializer == null) {
            TypeAdapter typeAdapter = this.g;
            if (typeAdapter == null) {
                typeAdapter = this.f12733c.c(this.e, this.d);
                this.g = typeAdapter;
            }
            return typeAdapter.b(jsonReader);
        }
        JsonElement a2 = Streams.a(jsonReader);
        if (this.f) {
            a2.getClass();
            if (a2 instanceof JsonNull) {
                return null;
            }
        }
        Type type = this.d.b;
        return jsonDeserializer.a();
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Object obj) {
        JsonSerializer jsonSerializer = this.f12732a;
        if (jsonSerializer == null) {
            TypeAdapter typeAdapter = this.g;
            if (typeAdapter == null) {
                typeAdapter = this.f12733c.c(this.e, this.d);
                this.g = typeAdapter;
            }
            typeAdapter.c(jsonWriter, obj);
            return;
        }
        if (this.f && obj == null) {
            jsonWriter.l();
            return;
        }
        Type type = this.d.b;
        TypeAdapters.z.c(jsonWriter, jsonSerializer.a());
    }

    @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
    public final TypeAdapter d() {
        if (this.f12732a != null) {
            return this;
        }
        TypeAdapter typeAdapter = this.g;
        if (typeAdapter == null) {
            TypeAdapter c2 = this.f12733c.c(this.e, this.d);
            this.g = c2;
            return c2;
        }
        return typeAdapter;
    }
}
