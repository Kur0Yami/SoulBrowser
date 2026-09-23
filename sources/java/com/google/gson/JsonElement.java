package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class JsonElement {
    public boolean a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public float c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final JsonArray i() {
        if (this instanceof JsonArray) {
            return (JsonArray) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + this);
    }

    public final JsonObject k() {
        if (this instanceof JsonObject) {
            return (JsonObject) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public long m() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String p() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final String toString() {
        try {
            StringBuilder sb = new StringBuilder();
            JsonWriter jsonWriter = new JsonWriter(Streams.b(sb));
            jsonWriter.l = Strictness.f12675c;
            TypeAdapters.z.c(jsonWriter, this);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
