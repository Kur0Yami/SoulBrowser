package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.ToNumberPolicy;
import com.google.gson.ToNumberStrategy;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

/* loaded from: classes3.dex */
public final class NumberTypeAdapter extends TypeAdapter<Number> {
    public static final TypeAdapterFactory b = d(ToNumberPolicy.f);

    /* renamed from: a, reason: collision with root package name */
    public final ToNumberStrategy f12718a;

    /* renamed from: com.google.gson.internal.bind.NumberTypeAdapter$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12720a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f12720a = iArr;
            try {
                iArr[8] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12720a[6] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12720a[5] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public NumberTypeAdapter(ToNumberStrategy toNumberStrategy) {
        this.f12718a = toNumberStrategy;
    }

    public static TypeAdapterFactory d(ToNumberStrategy toNumberStrategy) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.NumberTypeAdapter.1
            @Override // com.google.gson.TypeAdapterFactory
            public final TypeAdapter a(Gson gson, TypeToken typeToken) {
                if (typeToken.f12754a == Number.class) {
                    return NumberTypeAdapter.this;
                }
                return null;
            }
        };
    }

    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) {
        JsonToken W = jsonReader.W();
        int ordinal = W.ordinal();
        if (ordinal != 5 && ordinal != 6) {
            if (ordinal == 8) {
                jsonReader.L();
                return null;
            }
            throw new RuntimeException("Expecting number, got: " + W + "; at path " + jsonReader.k());
        }
        return this.f12718a.a(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Object obj) {
        jsonWriter.B((Number) obj);
    }
}
