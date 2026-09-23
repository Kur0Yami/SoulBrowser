package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.GsonTypes;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes3.dex */
public final class MapTypeAdapterFactory implements TypeAdapterFactory {

    /* renamed from: c, reason: collision with root package name */
    public final ConstructorConstructor f12715c;

    /* loaded from: classes3.dex */
    public final class Adapter<K, V> extends TypeAdapter<Map<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public final TypeAdapter f12716a;
        public final TypeAdapter b;

        /* renamed from: c, reason: collision with root package name */
        public final ObjectConstructor f12717c;

        public Adapter(MapTypeAdapterFactory mapTypeAdapterFactory, TypeAdapter typeAdapter, TypeAdapter typeAdapter2, ObjectConstructor objectConstructor) {
            this.f12716a = typeAdapter;
            this.b = typeAdapter2;
            this.f12717c = objectConstructor;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            JsonToken W = jsonReader.W();
            if (W == JsonToken.m) {
                jsonReader.L();
                return null;
            }
            Map map = (Map) this.f12717c.c();
            if (W == JsonToken.f12757c) {
                jsonReader.a();
                while (jsonReader.n()) {
                    jsonReader.a();
                    Object b = ((TypeAdapterRuntimeTypeWrapper) this.f12716a).b.b(jsonReader);
                    if (map.put(b, ((TypeAdapterRuntimeTypeWrapper) this.b).b.b(jsonReader)) == null) {
                        jsonReader.f();
                    } else {
                        throw new RuntimeException("duplicate key: " + b);
                    }
                }
                jsonReader.f();
                return map;
            }
            jsonReader.b();
            while (jsonReader.n()) {
                JsonReaderInternalAccess.f12687a.a(jsonReader);
                Object b2 = ((TypeAdapterRuntimeTypeWrapper) this.f12716a).b.b(jsonReader);
                if (map.put(b2, ((TypeAdapterRuntimeTypeWrapper) this.b).b.b(jsonReader)) != null) {
                    throw new RuntimeException("duplicate key: " + b2);
                }
            }
            jsonReader.i();
            return map;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            Map map = (Map) obj;
            if (map == null) {
                jsonWriter.l();
                return;
            }
            jsonWriter.d();
            for (Map.Entry<K, V> entry : map.entrySet()) {
                jsonWriter.j(String.valueOf(entry.getKey()));
                this.b.c(jsonWriter, entry.getValue());
            }
            jsonWriter.i();
        }
    }

    public MapTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.f12715c = constructorConstructor;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter a(Gson gson, TypeToken typeToken) {
        Type[] typeArr;
        TypeAdapter typeAdapter;
        Type type = typeToken.b;
        Class cls = typeToken.f12754a;
        if (!Map.class.isAssignableFrom(cls)) {
            return null;
        }
        if (Properties.class.isAssignableFrom(cls)) {
            typeArr = new Type[]{String.class, String.class};
        } else {
            Type f = GsonTypes.f(type, cls, Map.class);
            if (f instanceof ParameterizedType) {
                typeArr = ((ParameterizedType) f).getActualTypeArguments();
            } else {
                typeArr = new Type[]{Object.class, Object.class};
            }
        }
        Type type2 = typeArr[0];
        Type type3 = typeArr[1];
        if (type2 != Boolean.TYPE && type2 != Boolean.class) {
            typeAdapter = gson.b(new TypeToken(type2));
        } else {
            typeAdapter = TypeAdapters.f12737c;
        }
        return new Adapter(this, new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type2), new TypeAdapterRuntimeTypeWrapper(gson, gson.b(new TypeToken(type3)), type3), this.f12715c.b(typeToken, false));
    }
}
