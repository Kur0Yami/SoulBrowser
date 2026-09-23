package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.GsonTypes;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class CollectionTypeAdapterFactory implements TypeAdapterFactory {

    /* renamed from: c, reason: collision with root package name */
    public final ConstructorConstructor f12704c;

    /* loaded from: classes3.dex */
    public static final class Adapter<E> extends TypeAdapter<Collection<E>> {

        /* renamed from: a, reason: collision with root package name */
        public final TypeAdapter f12705a;
        public final ObjectConstructor b;

        public Adapter(TypeAdapter typeAdapter, ObjectConstructor objectConstructor) {
            this.f12705a = typeAdapter;
            this.b = objectConstructor;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            if (jsonReader.W() == JsonToken.m) {
                jsonReader.L();
                return null;
            }
            Collection collection = (Collection) this.b.c();
            jsonReader.a();
            while (jsonReader.n()) {
                collection.add(((TypeAdapterRuntimeTypeWrapper) this.f12705a).b.b(jsonReader));
            }
            jsonReader.f();
            return collection;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            Collection collection = (Collection) obj;
            if (collection == null) {
                jsonWriter.l();
                return;
            }
            jsonWriter.b();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f12705a.c(jsonWriter, it.next());
            }
            jsonWriter.f();
        }
    }

    public CollectionTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.f12704c = constructorConstructor;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter a(Gson gson, TypeToken typeToken) {
        Type type;
        Type type2 = typeToken.b;
        Class cls = typeToken.f12754a;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        Type f = GsonTypes.f(type2, cls, Collection.class);
        if (f instanceof ParameterizedType) {
            type = ((ParameterizedType) f).getActualTypeArguments()[0];
        } else {
            type = Object.class;
        }
        return new Adapter(new TypeAdapterRuntimeTypeWrapper(gson, gson.b(new TypeToken(type)), type), this.f12704c.b(typeToken, false));
    }
}
