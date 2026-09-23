package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;

/* loaded from: classes3.dex */
public abstract class TypeAdapter<T> {

    /* loaded from: classes3.dex */
    public final class NullSafeTypeAdapter extends TypeAdapter<T> {
        public NullSafeTypeAdapter() {
        }

        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            if (jsonReader.W() == JsonToken.m) {
                jsonReader.L();
                return null;
            }
            return TypeAdapter.this.b(jsonReader);
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            if (obj == null) {
                jsonWriter.l();
            } else {
                TypeAdapter.this.c(jsonWriter, obj);
            }
        }

        public final String toString() {
            return "NullSafeTypeAdapter[" + TypeAdapter.this + "]";
        }
    }

    public final TypeAdapter a() {
        if (!(this instanceof NullSafeTypeAdapter)) {
            return new NullSafeTypeAdapter();
        }
        return this;
    }

    public abstract Object b(JsonReader jsonReader);

    public abstract void c(JsonWriter jsonWriter, Object obj);
}
