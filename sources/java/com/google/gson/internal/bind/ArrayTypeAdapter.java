package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.GsonTypes;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class ArrayTypeAdapter<E> extends TypeAdapter<Object> {

    /* renamed from: c, reason: collision with root package name */
    public static final TypeAdapterFactory f12702c = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.ArrayTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            Type componentType;
            Type type = typeToken.b;
            boolean z = type instanceof GenericArrayType;
            if (!z && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            if (z) {
                componentType = ((GenericArrayType) type).getGenericComponentType();
            } else {
                componentType = ((Class) type).getComponentType();
            }
            return new ArrayTypeAdapter(gson, gson.b(new TypeToken(componentType)), GsonTypes.e(componentType));
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final Class f12703a;
    public final TypeAdapter b;

    public ArrayTypeAdapter(Gson gson, TypeAdapter typeAdapter, Class cls) {
        this.b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, cls);
        this.f12703a = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) {
        if (jsonReader.W() == JsonToken.m) {
            jsonReader.L();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        jsonReader.a();
        while (jsonReader.n()) {
            arrayList.add(((TypeAdapterRuntimeTypeWrapper) this.b).b.b(jsonReader));
        }
        jsonReader.f();
        int size = arrayList.size();
        Class cls = this.f12703a;
        if (cls.isPrimitive()) {
            Object newInstance = Array.newInstance((Class<?>) cls, size);
            for (int i = 0; i < size; i++) {
                Array.set(newInstance, i, arrayList.get(i));
            }
            return newInstance;
        }
        return arrayList.toArray((Object[]) Array.newInstance((Class<?>) cls, size));
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Object obj) {
        if (obj == null) {
            jsonWriter.l();
            return;
        }
        jsonWriter.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.b.c(jsonWriter, Array.get(obj, i));
        }
        jsonWriter.f();
    }
}
