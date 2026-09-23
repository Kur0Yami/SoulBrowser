package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.ToNumberPolicy;
import com.google.gson.ToNumberStrategy;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ObjectTypeAdapter extends TypeAdapter<Object> {

    /* renamed from: c, reason: collision with root package name */
    public static final TypeAdapterFactory f12721c = new AnonymousClass1(ToNumberPolicy.f12676c);

    /* renamed from: a, reason: collision with root package name */
    public final Gson f12722a;
    public final ToNumberStrategy b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.gson.internal.bind.ObjectTypeAdapter$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements TypeAdapterFactory {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ToNumberStrategy f12723c;

        public AnonymousClass1(ToNumberStrategy toNumberStrategy) {
            this.f12723c = toNumberStrategy;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            if (typeToken.f12754a == Object.class) {
                return new ObjectTypeAdapter(gson, this.f12723c);
            }
            return null;
        }
    }

    /* renamed from: com.google.gson.internal.bind.ObjectTypeAdapter$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12724a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f12724a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12724a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12724a[5] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12724a[6] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12724a[7] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12724a[8] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ObjectTypeAdapter(Gson gson, ToNumberStrategy toNumberStrategy) {
        this.f12722a = gson;
        this.b = toNumberStrategy;
    }

    public static TypeAdapterFactory d(ToNumberStrategy toNumberStrategy) {
        if (toNumberStrategy == ToNumberPolicy.f12676c) {
            return f12721c;
        }
        return new AnonymousClass1(toNumberStrategy);
    }

    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) {
        Object arrayList;
        String str;
        Serializable arrayList2;
        boolean z;
        JsonToken W = jsonReader.W();
        int ordinal = W.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                arrayList = null;
            } else {
                jsonReader.b();
                arrayList = new LinkedTreeMap(true);
            }
        } else {
            jsonReader.a();
            arrayList = new ArrayList();
        }
        if (arrayList == null) {
            return e(jsonReader, W);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (jsonReader.n()) {
                if (arrayList instanceof Map) {
                    str = jsonReader.F();
                } else {
                    str = null;
                }
                JsonToken W2 = jsonReader.W();
                int ordinal2 = W2.ordinal();
                if (ordinal2 != 0) {
                    if (ordinal2 != 2) {
                        arrayList2 = null;
                    } else {
                        jsonReader.b();
                        arrayList2 = new LinkedTreeMap(true);
                    }
                } else {
                    jsonReader.a();
                    arrayList2 = new ArrayList();
                }
                if (arrayList2 != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (arrayList2 == null) {
                    arrayList2 = e(jsonReader, W2);
                }
                if (arrayList instanceof List) {
                    ((List) arrayList).add(arrayList2);
                } else {
                    ((Map) arrayList).put(str, arrayList2);
                }
                if (z) {
                    arrayDeque.addLast(arrayList);
                    arrayList = arrayList2;
                }
            } else {
                if (arrayList instanceof List) {
                    jsonReader.f();
                } else {
                    jsonReader.i();
                }
                if (arrayDeque.isEmpty()) {
                    return arrayList;
                }
                arrayList = arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Object obj) {
        if (obj == null) {
            jsonWriter.l();
            return;
        }
        Class<?> cls = obj.getClass();
        Gson gson = this.f12722a;
        gson.getClass();
        TypeAdapter b = gson.b(new TypeToken(cls));
        if (b instanceof ObjectTypeAdapter) {
            jsonWriter.d();
            jsonWriter.i();
        } else {
            b.c(jsonWriter, obj);
        }
    }

    public final Serializable e(JsonReader jsonReader, JsonToken jsonToken) {
        int ordinal = jsonToken.ordinal();
        if (ordinal != 5) {
            if (ordinal != 6) {
                if (ordinal != 7) {
                    if (ordinal == 8) {
                        jsonReader.L();
                        return null;
                    }
                    throw new IllegalStateException("Unexpected token: " + jsonToken);
                }
                return Boolean.valueOf(jsonReader.v());
            }
            return this.b.a(jsonReader);
        }
        return jsonReader.S();
    }
}
