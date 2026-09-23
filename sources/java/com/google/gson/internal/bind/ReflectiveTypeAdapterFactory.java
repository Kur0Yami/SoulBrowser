package com.google.gson.internal.bind;

import android.support.v4.media.a;
import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.FieldNamingStrategy;
import com.google.gson.Gson;
import com.google.gson.ReflectionAccessFilter;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.Excluder;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.ReflectionAccessFilterHelper;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ReflectiveTypeAdapterFactory implements TypeAdapterFactory {

    /* renamed from: c, reason: collision with root package name */
    public final ConstructorConstructor f12725c;
    public final FieldNamingStrategy f;
    public final Excluder g;
    public final JsonAdapterAnnotationTypeAdapterFactory h;
    public final List i;

    /* renamed from: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends TypeAdapter<Object> {
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            jsonReader.h0();
            return null;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            jsonWriter.l();
        }

        public final String toString() {
            return "AnonymousOrNonStaticLocalClassAdapter";
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Adapter<T, A> extends TypeAdapter<T> {

        /* renamed from: a, reason: collision with root package name */
        public final FieldsData f12726a;

        public Adapter(FieldsData fieldsData) {
            this.f12726a = fieldsData;
        }

        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            if (jsonReader.W() == JsonToken.m) {
                jsonReader.L();
                return null;
            }
            Object d = d();
            Map map = this.f12726a.f12730a;
            try {
                jsonReader.b();
                while (jsonReader.n()) {
                    BoundField boundField = (BoundField) map.get(jsonReader.F());
                    if (boundField == null) {
                        jsonReader.h0();
                    } else {
                        f(d, jsonReader, boundField);
                    }
                }
                jsonReader.i();
                return e(d);
            } catch (IllegalAccessException e) {
                ReflectionHelper.RecordHelper recordHelper = ReflectionHelper.f12746a;
                throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.13.2). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
            } catch (IllegalStateException e2) {
                throw new RuntimeException(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            if (obj == null) {
                jsonWriter.l();
                return;
            }
            jsonWriter.d();
            try {
                Iterator it = this.f12726a.b.iterator();
                while (it.hasNext()) {
                    ((BoundField) it.next()).c(jsonWriter, obj);
                }
                jsonWriter.i();
            } catch (IllegalAccessException e) {
                ReflectionHelper.RecordHelper recordHelper = ReflectionHelper.f12746a;
                throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.13.2). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
            }
        }

        public abstract Object d();

        public abstract Object e(Object obj);

        public abstract void f(Object obj, JsonReader jsonReader, BoundField boundField);
    }

    /* loaded from: classes3.dex */
    public static abstract class BoundField {

        /* renamed from: a, reason: collision with root package name */
        public final String f12727a;
        public final Field b;

        /* renamed from: c, reason: collision with root package name */
        public final String f12728c;

        public BoundField(Field field, String str) {
            this.f12727a = str;
            this.b = field;
            this.f12728c = field.getName();
        }

        public abstract void a(JsonReader jsonReader, int i, Object[] objArr);

        public abstract void b(JsonReader jsonReader, Object obj);

        public abstract void c(JsonWriter jsonWriter, Object obj);
    }

    /* loaded from: classes3.dex */
    public static final class FieldReflectionAdapter<T> extends Adapter<T, T> {
        public final ObjectConstructor b;

        public FieldReflectionAdapter(ObjectConstructor objectConstructor, FieldsData fieldsData) {
            super(fieldsData);
            this.b = objectConstructor;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object d() {
            return this.b.c();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object e(Object obj) {
            return obj;
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final void f(Object obj, JsonReader jsonReader, BoundField boundField) {
            boundField.b(jsonReader, obj);
        }
    }

    /* loaded from: classes3.dex */
    public static class FieldsData {

        /* renamed from: c, reason: collision with root package name */
        public static final FieldsData f12729c = new FieldsData(Collections.EMPTY_LIST, Collections.EMPTY_MAP);

        /* renamed from: a, reason: collision with root package name */
        public final Map f12730a;
        public final List b;

        public FieldsData(List list, Map map) {
            this.f12730a = map;
            this.b = list;
        }
    }

    /* loaded from: classes3.dex */
    public static final class RecordAdapter<T> extends Adapter<T, Object[]> {
        public static final HashMap e;
        public final Constructor b;

        /* renamed from: c, reason: collision with root package name */
        public final Object[] f12731c;
        public final HashMap d;

        static {
            HashMap hashMap = new HashMap();
            hashMap.put(Byte.TYPE, (byte) 0);
            hashMap.put(Short.TYPE, (short) 0);
            hashMap.put(Integer.TYPE, 0);
            hashMap.put(Long.TYPE, 0L);
            hashMap.put(Float.TYPE, Float.valueOf(0.0f));
            hashMap.put(Double.TYPE, Double.valueOf(0.0d));
            hashMap.put(Character.TYPE, (char) 0);
            hashMap.put(Boolean.TYPE, Boolean.FALSE);
            e = hashMap;
        }

        public RecordAdapter(Class cls, FieldsData fieldsData, boolean z) {
            super(fieldsData);
            this.d = new HashMap();
            Constructor f = ReflectionHelper.f(cls);
            this.b = f;
            if (z) {
                ReflectiveTypeAdapterFactory.b(null, f);
            } else {
                ReflectionHelper.j(f);
            }
            String[] h = ReflectionHelper.h(cls);
            for (int i = 0; i < h.length; i++) {
                this.d.put(h[i], Integer.valueOf(i));
            }
            Class<?>[] parameterTypes = this.b.getParameterTypes();
            this.f12731c = new Object[parameterTypes.length];
            for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                this.f12731c[i2] = e.get(parameterTypes[i2]);
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object d() {
            return (Object[]) this.f12731c.clone();
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final Object e(Object obj) {
            Object[] objArr = (Object[]) obj;
            Constructor constructor = this.b;
            try {
                return constructor.newInstance(objArr);
            } catch (IllegalAccessException e2) {
                ReflectionHelper.RecordHelper recordHelper = ReflectionHelper.f12746a;
                throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.13.2). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
            } catch (IllegalArgumentException e3) {
                e = e3;
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.b(constructor) + "' with args " + Arrays.toString(objArr), e);
            } catch (InstantiationException e4) {
                e = e4;
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.b(constructor) + "' with args " + Arrays.toString(objArr), e);
            } catch (InvocationTargetException e5) {
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.b(constructor) + "' with args " + Arrays.toString(objArr), e5.getCause());
            }
        }

        @Override // com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.Adapter
        public final void f(Object obj, JsonReader jsonReader, BoundField boundField) {
            Object[] objArr = (Object[]) obj;
            String str = boundField.f12728c;
            Integer num = (Integer) this.d.get(str);
            if (num != null) {
                boundField.a(jsonReader, num.intValue(), objArr);
                return;
            }
            throw new IllegalStateException("Could not find the index in the constructor '" + ReflectionHelper.b(this.b) + "' for field with name '" + str + "', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");
        }
    }

    public ReflectiveTypeAdapterFactory(ConstructorConstructor constructorConstructor, FieldNamingStrategy fieldNamingStrategy, Excluder excluder, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        List list = Collections.EMPTY_LIST;
        this.f12725c = constructorConstructor;
        this.f = fieldNamingStrategy;
        this.g = excluder;
        this.h = jsonAdapterAnnotationTypeAdapterFactory;
        this.i = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(Object obj, AccessibleObject accessibleObject) {
        if (Modifier.isStatic(((Member) accessibleObject).getModifiers())) {
            obj = null;
        }
        if (ReflectionAccessFilterHelper.a(obj, accessibleObject)) {
        } else {
            throw new RuntimeException(a.k(ReflectionHelper.d(accessibleObject, true), " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."));
        }
    }

    public static void c(Class cls, String str, Field field, Field field2) {
        throw new IllegalArgumentException("Class " + cls.getName() + " declares multiple JSON fields named '" + str + "'; conflict is caused by fields " + ReflectionHelper.c(field) + " and " + ReflectionHelper.c(field2) + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("duplicate-fields"));
    }

    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object, com.google.gson.TypeAdapter] */
    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter a(Gson gson, TypeToken typeToken) {
        boolean z;
        Class cls = typeToken.f12754a;
        if (!Object.class.isAssignableFrom(cls)) {
            return null;
        }
        ReflectionHelper.RecordHelper recordHelper = ReflectionHelper.f12746a;
        if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
            return new Object();
        }
        List list = Collections.EMPTY_LIST;
        ReflectionAccessFilter.FilterResult b = ReflectionAccessFilterHelper.b(cls);
        if (b != ReflectionAccessFilter.FilterResult.h) {
            if (b == ReflectionAccessFilter.FilterResult.g) {
                z = true;
            } else {
                z = false;
            }
            if (ReflectionHelper.i(cls)) {
                return new RecordAdapter(cls, d(gson, typeToken, cls, z, true), z);
            }
            return new FieldReflectionAdapter(this.f12725c.b(typeToken, true), d(gson, typeToken, cls, z, false));
        }
        throw new RuntimeException("ReflectionAccessFilter does not permit using reflection for " + cls + ". Register a TypeAdapter for this type or adjust the access filter.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00ea  */
    /* JADX WARN: Type inference failed for: r4v11, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.FieldsData d(com.google.gson.Gson r29, com.google.gson.reflect.TypeToken r30, java.lang.Class r31, boolean r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory.d(com.google.gson.Gson, com.google.gson.reflect.TypeToken, java.lang.Class, boolean, boolean):com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$FieldsData");
    }

    public final boolean e(Field field, boolean z) {
        List list;
        boolean z2;
        Excluder excluder = this.g;
        excluder.getClass();
        if ((136 & field.getModifiers()) == 0 && !field.isSynthetic() && !excluder.b(field.getType(), z)) {
            if (z) {
                list = excluder.f12679c;
            } else {
                list = excluder.f;
            }
            if (!list.isEmpty()) {
                new FieldAttributes(field);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (((ExclusionStrategy) it.next()).b()) {
                    }
                }
            }
            z2 = false;
            return !z2;
        }
        z2 = true;
        return !z2;
    }
}
