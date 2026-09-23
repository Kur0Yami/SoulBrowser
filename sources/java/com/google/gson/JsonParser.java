package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.StringReader;

/* loaded from: classes3.dex */
public final class JsonParser {
    public static JsonElement a(JsonReader jsonReader) {
        Strictness strictness = jsonReader.f;
        if (strictness == Strictness.f) {
            jsonReader.f = Strictness.f12675c;
        }
        try {
            try {
                return Streams.a(jsonReader);
            } finally {
                jsonReader.f = strictness;
            }
        } catch (OutOfMemoryError | StackOverflowError e) {
            throw new RuntimeException("Failed parsing JSON source: " + jsonReader + " to Json", e);
        }
    }

    public static JsonElement b(String str) {
        try {
            try {
                JsonReader jsonReader = new JsonReader(new StringReader(str));
                JsonElement a2 = a(jsonReader);
                try {
                    a2.getClass();
                    if (!(a2 instanceof JsonNull) && jsonReader.W() != JsonToken.n) {
                        throw new RuntimeException("Did not consume the entire document.");
                    }
                    return a2;
                } catch (NumberFormatException e) {
                    e = e;
                    throw new RuntimeException(e);
                }
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        } catch (MalformedJsonException | NumberFormatException e3) {
            e = e3;
        }
    }
}
