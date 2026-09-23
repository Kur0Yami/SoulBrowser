package com.google.gson.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class JsonToken {

    /* renamed from: c, reason: collision with root package name */
    public static final JsonToken f12757c;
    public static final JsonToken f;
    public static final JsonToken g;
    public static final JsonToken h;
    public static final JsonToken i;
    public static final JsonToken j;
    public static final JsonToken k;
    public static final JsonToken l;
    public static final JsonToken m;
    public static final JsonToken n;
    public static final /* synthetic */ JsonToken[] o;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r11v1, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r13v1, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r15v1, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.google.gson.stream.JsonToken, java.lang.Enum] */
    static {
        ?? r0 = new Enum("BEGIN_ARRAY", 0);
        f12757c = r0;
        ?? r1 = new Enum("END_ARRAY", 1);
        f = r1;
        ?? r3 = new Enum("BEGIN_OBJECT", 2);
        g = r3;
        ?? r5 = new Enum("END_OBJECT", 3);
        h = r5;
        ?? r7 = new Enum("NAME", 4);
        i = r7;
        ?? r9 = new Enum("STRING", 5);
        j = r9;
        ?? r11 = new Enum("NUMBER", 6);
        k = r11;
        ?? r13 = new Enum("BOOLEAN", 7);
        l = r13;
        ?? r15 = new Enum("NULL", 8);
        m = r15;
        ?? r2 = new Enum("END_DOCUMENT", 9);
        n = r2;
        o = new JsonToken[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2};
    }

    public static JsonToken valueOf(String str) {
        return (JsonToken) Enum.valueOf(JsonToken.class, str);
    }

    public static JsonToken[] values() {
        return (JsonToken[]) o.clone();
    }
}
