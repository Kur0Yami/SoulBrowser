package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes3.dex */
class JsonElementTypeAdapter extends TypeAdapter<JsonElement> {

    /* renamed from: a, reason: collision with root package name */
    public static final JsonElementTypeAdapter f12712a = new JsonElementTypeAdapter();

    /* renamed from: com.google.gson.internal.bind.JsonElementTypeAdapter$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12713a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f12713a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12713a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12713a[5] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12713a[6] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12713a[7] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f12713a[8] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private JsonElementTypeAdapter() {
    }

    public static JsonElement d(JsonReader jsonReader, JsonToken jsonToken) {
        int ordinal = jsonToken.ordinal();
        if (ordinal != 5) {
            if (ordinal != 6) {
                if (ordinal != 7) {
                    if (ordinal == 8) {
                        jsonReader.L();
                        return JsonNull.f12670c;
                    }
                    throw new IllegalStateException("Unexpected token: " + jsonToken);
                }
                return new JsonPrimitive(Boolean.valueOf(jsonReader.v()));
            }
            return new JsonPrimitive(new LazilyParsedNumber(jsonReader.S()));
        }
        return new JsonPrimitive(jsonReader.S());
    }

    public static void e(JsonWriter jsonWriter, JsonElement jsonElement) {
        if (jsonElement != null && !(jsonElement instanceof JsonNull)) {
            boolean z = jsonElement instanceof JsonPrimitive;
            if (z) {
                if (z) {
                    JsonPrimitive jsonPrimitive = (JsonPrimitive) jsonElement;
                    Serializable serializable = jsonPrimitive.f12672c;
                    if (serializable instanceof Number) {
                        jsonWriter.B(jsonPrimitive.s());
                        return;
                    } else if (serializable instanceof Boolean) {
                        jsonWriter.G(jsonPrimitive.a());
                        return;
                    } else {
                        jsonWriter.F(jsonPrimitive.p());
                        return;
                    }
                }
                throw new IllegalStateException("Not a JSON Primitive: " + jsonElement);
            }
            if (jsonElement instanceof JsonArray) {
                jsonWriter.b();
                ArrayList arrayList = jsonElement.i().f12669c;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    e(jsonWriter, (JsonElement) obj);
                }
                jsonWriter.f();
                return;
            }
            if (jsonElement instanceof JsonObject) {
                jsonWriter.d();
                for (Map.Entry entry : jsonElement.k().f12671c.entrySet()) {
                    jsonWriter.j((String) entry.getKey());
                    e(jsonWriter, (JsonElement) entry.getValue());
                }
                jsonWriter.i();
                return;
            }
            throw new IllegalArgumentException("Couldn't write " + jsonElement.getClass());
        }
        jsonWriter.l();
    }

    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) {
        JsonElement jsonArray;
        String str;
        JsonElement jsonArray2;
        boolean z;
        if (jsonReader instanceof JsonTreeReader) {
            JsonTreeReader jsonTreeReader = (JsonTreeReader) jsonReader;
            JsonToken W = jsonTreeReader.W();
            if (W != JsonToken.i && W != JsonToken.f && W != JsonToken.h && W != JsonToken.n) {
                JsonElement jsonElement = (JsonElement) jsonTreeReader.A0();
                jsonTreeReader.h0();
                return jsonElement;
            }
            throw new IllegalStateException("Unexpected " + W + " when reading a JsonElement.");
        }
        JsonToken W2 = jsonReader.W();
        int ordinal = W2.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                jsonArray = null;
            } else {
                jsonReader.b();
                jsonArray = new JsonObject();
            }
        } else {
            jsonReader.a();
            jsonArray = new JsonArray();
        }
        if (jsonArray == null) {
            return d(jsonReader, W2);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (jsonReader.n()) {
                if (jsonArray instanceof JsonObject) {
                    str = jsonReader.F();
                } else {
                    str = null;
                }
                JsonToken W3 = jsonReader.W();
                int ordinal2 = W3.ordinal();
                if (ordinal2 != 0) {
                    if (ordinal2 != 2) {
                        jsonArray2 = null;
                    } else {
                        jsonReader.b();
                        jsonArray2 = new JsonObject();
                    }
                } else {
                    jsonReader.a();
                    jsonArray2 = new JsonArray();
                }
                if (jsonArray2 != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (jsonArray2 == null) {
                    jsonArray2 = d(jsonReader, W3);
                }
                if (jsonArray instanceof JsonArray) {
                    ((JsonArray) jsonArray).f12669c.add(jsonArray2);
                } else {
                    ((JsonObject) jsonArray).q(str, jsonArray2);
                }
                if (z) {
                    arrayDeque.addLast(jsonArray);
                    jsonArray = jsonArray2;
                }
            } else {
                if (jsonArray instanceof JsonArray) {
                    jsonReader.f();
                } else {
                    jsonReader.i();
                }
                if (arrayDeque.isEmpty()) {
                    return jsonArray;
                }
                jsonArray = (JsonElement) arrayDeque.removeLast();
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    public final /* bridge */ /* synthetic */ void c(JsonWriter jsonWriter, Object obj) {
        e(jsonWriter, (JsonElement) obj);
    }
}
