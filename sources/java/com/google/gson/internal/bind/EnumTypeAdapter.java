package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.lang.Enum;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes3.dex */
class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {
    public static final TypeAdapterFactory d = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.EnumTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            Class cls = typeToken.f12754a;
            if (Enum.class.isAssignableFrom(cls) && cls != Enum.class) {
                if (!cls.isEnum()) {
                    cls = cls.getSuperclass();
                }
                return new EnumTypeAdapter(cls);
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12709a = new HashMap();
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f12710c = new HashMap();

    public EnumTypeAdapter(Class cls) {
        try {
            Field[] declaredFields = cls.getDeclaredFields();
            int i = 0;
            for (Field field : declaredFields) {
                if (field.isEnumConstant()) {
                    declaredFields[i] = field;
                    i++;
                }
            }
            Field[] fieldArr = (Field[]) Arrays.copyOf(declaredFields, i);
            AccessibleObject.setAccessible(fieldArr, true);
            for (Field field2 : fieldArr) {
                Enum r4 = (Enum) field2.get(null);
                String name = r4.name();
                String str = r4.toString();
                SerializedName serializedName = (SerializedName) field2.getAnnotation(SerializedName.class);
                if (serializedName != null) {
                    name = serializedName.value();
                    for (String str2 : serializedName.alternate()) {
                        this.f12709a.put(str2, r4);
                    }
                }
                this.f12709a.put(name, r4);
                this.b.put(str, r4);
                this.f12710c.put(r4, name);
            }
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) {
        if (jsonReader.W() == JsonToken.m) {
            jsonReader.L();
            return null;
        }
        String S = jsonReader.S();
        Enum r0 = (Enum) this.f12709a.get(S);
        if (r0 == null) {
            return (Enum) this.b.get(S);
        }
        return r0;
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Object obj) {
        String str;
        Enum r3 = (Enum) obj;
        if (r3 == null) {
            str = null;
        } else {
            str = (String) this.f12710c.get(r3);
        }
        jsonWriter.F(str);
    }
}
