package com.google.gson;

import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.ArrayTypeAdapter;
import com.google.gson.internal.bind.CollectionTypeAdapterFactory;
import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.MapTypeAdapterFactory;
import com.google.gson.internal.bind.NumberTypeAdapter;
import com.google.gson.internal.bind.ObjectTypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.internal.bind.SerializationDelegatingTypeAdapter;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.internal.sql.SqlTypesSupport;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import j$.util.DesugarCollections;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes3.dex */
public final class Gson {
    public static final FormattingStyle o = FormattingStyle.d;
    public static final FieldNamingStrategy p = FieldNamingPolicy.f12661c;
    public static final ToNumberStrategy q = ToNumberPolicy.f12676c;
    public static final ToNumberStrategy r = ToNumberPolicy.f;

    /* renamed from: a, reason: collision with root package name */
    public final ThreadLocal f12664a;
    public final ConcurrentHashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final ConstructorConstructor f12665c;
    public final JsonAdapterAnnotationTypeAdapterFactory d;
    public final List e;
    public final FieldNamingStrategy f;
    public final Map g;
    public final boolean h;
    public final FormattingStyle i;
    public final List j;
    public final List k;
    public final ToNumberStrategy l;
    public final ToNumberStrategy m;
    public final List n;

    /* renamed from: com.google.gson.Gson$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends TypeAdapter<Number> {
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            if (jsonReader.W() == JsonToken.m) {
                jsonReader.L();
                return null;
            }
            return Double.valueOf(jsonReader.z());
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            Number number = (Number) obj;
            if (number == null) {
                jsonWriter.l();
                return;
            }
            double doubleValue = number.doubleValue();
            Gson.a(doubleValue);
            jsonWriter.v(doubleValue);
        }
    }

    /* renamed from: com.google.gson.Gson$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends TypeAdapter<Number> {
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            if (jsonReader.W() == JsonToken.m) {
                jsonReader.L();
                return null;
            }
            return Float.valueOf((float) jsonReader.z());
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            Number number = (Number) obj;
            if (number == null) {
                jsonWriter.l();
                return;
            }
            float floatValue = number.floatValue();
            Gson.a(floatValue);
            if (!(number instanceof Float)) {
                number = Float.valueOf(floatValue);
            }
            jsonWriter.B(number);
        }
    }

    /* renamed from: com.google.gson.Gson$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends TypeAdapter<Number> {
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            if (jsonReader.W() == JsonToken.m) {
                jsonReader.L();
                return null;
            }
            return Long.valueOf(jsonReader.B());
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            Number number = (Number) obj;
            if (number == null) {
                jsonWriter.l();
            } else {
                jsonWriter.F(number.toString());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class FutureTypeAdapter<T> extends SerializationDelegatingTypeAdapter<T> {

        /* renamed from: a, reason: collision with root package name */
        public TypeAdapter f12668a = null;

        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            TypeAdapter typeAdapter = this.f12668a;
            if (typeAdapter != null) {
                return typeAdapter.b(jsonReader);
            }
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            TypeAdapter typeAdapter = this.f12668a;
            if (typeAdapter != null) {
                typeAdapter.c(jsonWriter, obj);
                return;
            }
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }

        @Override // com.google.gson.internal.bind.SerializationDelegatingTypeAdapter
        public final TypeAdapter d() {
            TypeAdapter typeAdapter = this.f12668a;
            if (typeAdapter != null) {
                return typeAdapter;
            }
            throw new IllegalStateException("Adapter for type with cyclic dependency has been used before dependency has been resolved");
        }
    }

    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.Object, com.google.gson.TypeAdapter] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object, com.google.gson.TypeAdapter] */
    public Gson() {
        TypeAdapterFactory d;
        Excluder excluder = Excluder.g;
        Map map = Collections.EMPTY_MAP;
        List list = Collections.EMPTY_LIST;
        this.f12664a = new ThreadLocal();
        this.b = new ConcurrentHashMap();
        FieldNamingStrategy fieldNamingStrategy = p;
        this.f = fieldNamingStrategy;
        this.g = map;
        ConstructorConstructor constructorConstructor = new ConstructorConstructor();
        this.f12665c = constructorConstructor;
        this.h = true;
        this.i = o;
        this.j = list;
        this.k = list;
        ToNumberStrategy toNumberStrategy = q;
        this.l = toNumberStrategy;
        ToNumberStrategy toNumberStrategy2 = r;
        this.m = toNumberStrategy2;
        this.n = list;
        ArrayList arrayList = new ArrayList();
        arrayList.add(TypeAdapters.A);
        arrayList.add(ObjectTypeAdapter.d(toNumberStrategy));
        arrayList.add(excluder);
        arrayList.addAll(list);
        arrayList.add(TypeAdapters.p);
        arrayList.add(TypeAdapters.g);
        arrayList.add(TypeAdapters.d);
        arrayList.add(TypeAdapters.e);
        arrayList.add(TypeAdapters.f);
        final TypeAdapter typeAdapter = TypeAdapters.k;
        arrayList.add(TypeAdapters.b(Long.TYPE, Long.class, typeAdapter));
        arrayList.add(TypeAdapters.b(Double.TYPE, Double.class, new Object()));
        arrayList.add(TypeAdapters.b(Float.TYPE, Float.class, new Object()));
        if (toNumberStrategy2 == ToNumberPolicy.f) {
            d = NumberTypeAdapter.b;
        } else {
            d = NumberTypeAdapter.d(toNumberStrategy2);
        }
        arrayList.add(d);
        arrayList.add(TypeAdapters.h);
        arrayList.add(TypeAdapters.i);
        arrayList.add(TypeAdapters.a(AtomicLong.class, new TypeAdapter<AtomicLong>() { // from class: com.google.gson.Gson.4
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                return new AtomicLong(((Number) TypeAdapter.this.b(jsonReader)).longValue());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                TypeAdapter.this.c(jsonWriter, Long.valueOf(((AtomicLong) obj).get()));
            }
        }.a()));
        arrayList.add(TypeAdapters.a(AtomicLongArray.class, new TypeAdapter<AtomicLongArray>() { // from class: com.google.gson.Gson.5
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                ArrayList arrayList2 = new ArrayList();
                jsonReader.a();
                while (jsonReader.n()) {
                    arrayList2.add(Long.valueOf(((Number) TypeAdapter.this.b(jsonReader)).longValue()));
                }
                jsonReader.f();
                int size = arrayList2.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i = 0; i < size; i++) {
                    atomicLongArray.set(i, ((Long) arrayList2.get(i)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                AtomicLongArray atomicLongArray = (AtomicLongArray) obj;
                jsonWriter.b();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    TypeAdapter.this.c(jsonWriter, Long.valueOf(atomicLongArray.get(i)));
                }
                jsonWriter.f();
            }
        }.a()));
        arrayList.add(TypeAdapters.j);
        arrayList.add(TypeAdapters.l);
        arrayList.add(TypeAdapters.q);
        arrayList.add(TypeAdapters.r);
        arrayList.add(TypeAdapters.a(BigDecimal.class, TypeAdapters.m));
        arrayList.add(TypeAdapters.a(BigInteger.class, TypeAdapters.n));
        arrayList.add(TypeAdapters.a(LazilyParsedNumber.class, TypeAdapters.o));
        arrayList.add(TypeAdapters.s);
        arrayList.add(TypeAdapters.t);
        arrayList.add(TypeAdapters.v);
        arrayList.add(TypeAdapters.w);
        arrayList.add(TypeAdapters.y);
        arrayList.add(TypeAdapters.u);
        arrayList.add(TypeAdapters.b);
        arrayList.add(DefaultDateTypeAdapter.f12706c);
        arrayList.add(TypeAdapters.x);
        if (SqlTypesSupport.f12752a) {
            arrayList.add(SqlTypesSupport.f12753c);
            arrayList.add(SqlTypesSupport.b);
            arrayList.add(SqlTypesSupport.d);
        }
        arrayList.add(ArrayTypeAdapter.f12702c);
        arrayList.add(TypeAdapters.f12736a);
        arrayList.add(new CollectionTypeAdapterFactory(constructorConstructor));
        arrayList.add(new MapTypeAdapterFactory(constructorConstructor));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(constructorConstructor);
        this.d = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList.add(TypeAdapters.B);
        arrayList.add(new ReflectiveTypeAdapterFactory(constructorConstructor, fieldNamingStrategy, excluder, jsonAdapterAnnotationTypeAdapterFactory));
        this.e = DesugarCollections.unmodifiableList(arrayList);
    }

    public static void a(double d) {
        if (!Double.isNaN(d) && !Double.isInfinite(d)) {
            return;
        }
        throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    }

    public final TypeAdapter b(TypeToken typeToken) {
        boolean z;
        Objects.requireNonNull(typeToken, "type must not be null");
        ConcurrentHashMap concurrentHashMap = this.b;
        TypeAdapter typeAdapter = (TypeAdapter) concurrentHashMap.get(typeToken);
        if (typeAdapter != null) {
            return typeAdapter;
        }
        ThreadLocal threadLocal = this.f12664a;
        Map map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
            z = true;
        } else {
            TypeAdapter typeAdapter2 = (TypeAdapter) map.get(typeToken);
            if (typeAdapter2 != null) {
                return typeAdapter2;
            }
            z = false;
        }
        try {
            FutureTypeAdapter futureTypeAdapter = new FutureTypeAdapter();
            map.put(typeToken, futureTypeAdapter);
            Iterator it = this.e.iterator();
            TypeAdapter typeAdapter3 = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                typeAdapter3 = ((TypeAdapterFactory) it.next()).a(this, typeToken);
                if (typeAdapter3 != null) {
                    if (futureTypeAdapter.f12668a == null) {
                        futureTypeAdapter.f12668a = typeAdapter3;
                        map.put(typeToken, typeAdapter3);
                    } else {
                        throw new AssertionError("Delegate is already set");
                    }
                }
            }
            if (z) {
                threadLocal.remove();
            }
            if (typeAdapter3 != null) {
                if (z) {
                    concurrentHashMap.putAll(map);
                }
                return typeAdapter3;
            }
            throw new IllegalArgumentException("GSON (2.13.2) cannot handle " + typeToken);
        } catch (Throwable th) {
            if (z) {
                threadLocal.remove();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0056, code lost:
    
        if (r4 == r8) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
    
        if (r4 == r8) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.gson.TypeAdapter c(com.google.gson.TypeAdapterFactory r8, com.google.gson.reflect.TypeToken r9) {
        /*
            r7 = this;
            java.lang.String r0 = "skipPast must not be null"
            j$.util.Objects.requireNonNull(r8, r0)
            java.lang.String r0 = "type must not be null"
            j$.util.Objects.requireNonNull(r9, r0)
            com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory r0 = r7.d
            r0.getClass()
            j$.util.concurrent.ConcurrentHashMap r1 = r0.f
            com.google.gson.TypeAdapterFactory r2 = com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory.g
            r3 = 1
            if (r8 != r2) goto L17
            goto L58
        L17:
            java.lang.Class r2 = r9.f12754a
            java.lang.Object r4 = r1.get(r2)
            com.google.gson.TypeAdapterFactory r4 = (com.google.gson.TypeAdapterFactory) r4
            if (r4 == 0) goto L24
            if (r4 != r8) goto L59
            goto L58
        L24:
            java.lang.Class<com.google.gson.annotations.JsonAdapter> r4 = com.google.gson.annotations.JsonAdapter.class
            java.lang.annotation.Annotation r4 = r2.getAnnotation(r4)
            com.google.gson.annotations.JsonAdapter r4 = (com.google.gson.annotations.JsonAdapter) r4
            if (r4 != 0) goto L2f
            goto L59
        L2f:
            java.lang.Class r4 = r4.value()
            java.lang.Class<com.google.gson.TypeAdapterFactory> r5 = com.google.gson.TypeAdapterFactory.class
            boolean r5 = r5.isAssignableFrom(r4)
            if (r5 != 0) goto L3c
            goto L59
        L3c:
            com.google.gson.internal.ConstructorConstructor r5 = r0.f12711c
            com.google.gson.reflect.TypeToken r6 = new com.google.gson.reflect.TypeToken
            r6.<init>(r4)
            com.google.gson.internal.ObjectConstructor r4 = r5.b(r6, r3)
            java.lang.Object r4 = r4.c()
            com.google.gson.TypeAdapterFactory r4 = (com.google.gson.TypeAdapterFactory) r4
            java.lang.Object r1 = r1.putIfAbsent(r2, r4)
            com.google.gson.TypeAdapterFactory r1 = (com.google.gson.TypeAdapterFactory) r1
            if (r1 == 0) goto L56
            r4 = r1
        L56:
            if (r4 != r8) goto L59
        L58:
            r8 = r0
        L59:
            java.util.List r0 = r7.e
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
        L60:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L79
            java.lang.Object r2 = r0.next()
            com.google.gson.TypeAdapterFactory r2 = (com.google.gson.TypeAdapterFactory) r2
            if (r1 != 0) goto L72
            if (r2 != r8) goto L60
            r1 = r3
            goto L60
        L72:
            com.google.gson.TypeAdapter r2 = r2.a(r7, r9)
            if (r2 == 0) goto L60
            return r2
        L79:
            if (r1 != 0) goto L80
            com.google.gson.TypeAdapter r8 = r7.b(r9)
            return r8
        L80:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "GSON cannot serialize or deserialize "
            r0.<init>(r1)
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.Gson.c(com.google.gson.TypeAdapterFactory, com.google.gson.reflect.TypeToken):com.google.gson.TypeAdapter");
    }

    public final JsonWriter d(Writer writer) {
        JsonWriter jsonWriter = new JsonWriter(writer);
        jsonWriter.n(this.i);
        jsonWriter.m = this.h;
        jsonWriter.o(Strictness.f);
        jsonWriter.o = false;
        return jsonWriter;
    }

    public final String e(Object obj) {
        if (obj == null) {
            StringBuilder sb = new StringBuilder();
            try {
                f(d(Streams.b(sb)));
                return sb.toString();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        Class<?> cls = obj.getClass();
        StringBuilder sb2 = new StringBuilder();
        try {
            g(obj, cls, d(Streams.b(sb2)));
            return sb2.toString();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public final void f(JsonWriter jsonWriter) {
        JsonNull jsonNull = JsonNull.f12670c;
        Strictness strictness = jsonWriter.l;
        boolean z = jsonWriter.m;
        boolean z2 = jsonWriter.o;
        jsonWriter.m = this.h;
        jsonWriter.o = false;
        if (strictness == Strictness.f) {
            jsonWriter.l = Strictness.f12675c;
        }
        try {
            try {
                try {
                    TypeAdapters.z.c(jsonWriter, jsonNull);
                    jsonWriter.o(strictness);
                    jsonWriter.m = z;
                    jsonWriter.o = z2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.13.2): " + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            jsonWriter.o(strictness);
            jsonWriter.m = z;
            jsonWriter.o = z2;
            throw th;
        }
    }

    public final void g(Object obj, Class cls, JsonWriter jsonWriter) {
        TypeAdapter b = b(new TypeToken(cls));
        Strictness strictness = jsonWriter.l;
        if (strictness == Strictness.f) {
            jsonWriter.l = Strictness.f12675c;
        }
        boolean z = jsonWriter.m;
        boolean z2 = jsonWriter.o;
        jsonWriter.m = this.h;
        jsonWriter.o = false;
        try {
            try {
                b.c(jsonWriter, obj);
            } catch (IOException e) {
                throw new RuntimeException(e);
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.13.2): " + e2.getMessage(), e2);
            }
        } finally {
            jsonWriter.o(strictness);
            jsonWriter.m = z;
            jsonWriter.o = z2;
        }
    }

    public final String toString() {
        return "{serializeNulls:false,factories:" + this.e + ",instanceCreators:" + this.f12665c + "}";
    }
}
