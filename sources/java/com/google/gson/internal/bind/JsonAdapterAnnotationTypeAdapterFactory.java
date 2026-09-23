package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.GsonTypes;
import com.google.gson.reflect.TypeToken;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class JsonAdapterAnnotationTypeAdapterFactory implements TypeAdapterFactory {
    public static final TypeAdapterFactory g;
    public static final TypeAdapterFactory h;

    /* renamed from: c, reason: collision with root package name */
    public final ConstructorConstructor f12711c;
    public final ConcurrentHashMap f = new ConcurrentHashMap();

    /* loaded from: classes3.dex */
    public static class DummyTypeAdapterFactory implements TypeAdapterFactory {
        private DummyTypeAdapterFactory() {
        }

        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            throw new AssertionError("Factory should not be used");
        }

        public /* synthetic */ DummyTypeAdapterFactory(int i) {
            this();
        }
    }

    static {
        int i = 0;
        g = new DummyTypeAdapterFactory(i);
        h = new DummyTypeAdapterFactory(i);
    }

    public JsonAdapterAnnotationTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.f12711c = constructorConstructor;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter a(Gson gson, TypeToken typeToken) {
        JsonAdapter jsonAdapter = (JsonAdapter) typeToken.f12754a.getAnnotation(JsonAdapter.class);
        if (jsonAdapter == null) {
            return null;
        }
        return b(this.f12711c, gson, typeToken, jsonAdapter, true);
    }

    public final TypeAdapter b(ConstructorConstructor constructorConstructor, Gson gson, TypeToken typeToken, JsonAdapter jsonAdapter, boolean z) {
        JsonSerializer jsonSerializer;
        TypeAdapterFactory typeAdapterFactory;
        TypeAdapter typeAdapter;
        Object c2 = constructorConstructor.b(new TypeToken(jsonAdapter.value()), true).c();
        boolean nullSafe = jsonAdapter.nullSafe();
        if (c2 instanceof TypeAdapter) {
            typeAdapter = (TypeAdapter) c2;
        } else if (c2 instanceof TypeAdapterFactory) {
            TypeAdapterFactory typeAdapterFactory2 = (TypeAdapterFactory) c2;
            if (z) {
                TypeAdapterFactory typeAdapterFactory3 = (TypeAdapterFactory) this.f.putIfAbsent(typeToken.f12754a, typeAdapterFactory2);
                if (typeAdapterFactory3 != null) {
                    typeAdapterFactory2 = typeAdapterFactory3;
                }
            }
            typeAdapter = typeAdapterFactory2.a(gson, typeToken);
        } else {
            boolean z2 = c2 instanceof JsonSerializer;
            if (!z2 && !(c2 instanceof JsonDeserializer)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + c2.getClass().getName() + " as a @JsonAdapter for " + GsonTypes.h(typeToken.b) + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            JsonDeserializer jsonDeserializer = null;
            if (z2) {
                jsonSerializer = (JsonSerializer) c2;
            } else {
                jsonSerializer = null;
            }
            if (c2 instanceof JsonDeserializer) {
                jsonDeserializer = (JsonDeserializer) c2;
            }
            JsonDeserializer jsonDeserializer2 = jsonDeserializer;
            if (z) {
                typeAdapterFactory = g;
            } else {
                typeAdapterFactory = h;
            }
            TreeTypeAdapter treeTypeAdapter = new TreeTypeAdapter(jsonSerializer, jsonDeserializer2, gson, typeToken, typeAdapterFactory, nullSafe);
            nullSafe = false;
            typeAdapter = treeTypeAdapter;
        }
        if (typeAdapter != null && nullSafe) {
            return typeAdapter.a();
        }
        return typeAdapter;
    }
}
