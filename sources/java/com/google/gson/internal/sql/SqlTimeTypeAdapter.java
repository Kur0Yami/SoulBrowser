package com.google.gson.internal.sql;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes3.dex */
final class SqlTimeTypeAdapter extends TypeAdapter<Time> {
    public static final TypeAdapterFactory b = new TypeAdapterFactory() { // from class: com.google.gson.internal.sql.SqlTimeTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            if (typeToken.f12754a == Time.class) {
                return new SqlTimeTypeAdapter(0);
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f12750a;

    public /* synthetic */ SqlTimeTypeAdapter(int i) {
        this();
    }

    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) {
        Time time;
        if (jsonReader.W() == JsonToken.m) {
            jsonReader.L();
            return null;
        }
        String S = jsonReader.S();
        synchronized (this) {
            TimeZone timeZone = this.f12750a.getTimeZone();
            try {
                try {
                    time = new Time(this.f12750a.parse(S).getTime());
                } catch (ParseException e) {
                    throw new RuntimeException("Failed parsing '" + S + "' as SQL Time; at path " + jsonReader.m(), e);
                }
            } finally {
                this.f12750a.setTimeZone(timeZone);
            }
        }
        return time;
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Object obj) {
        String format;
        Time time = (Time) obj;
        if (time == null) {
            jsonWriter.l();
            return;
        }
        synchronized (this) {
            format = this.f12750a.format((Date) time);
        }
        jsonWriter.F(format);
    }

    private SqlTimeTypeAdapter() {
        this.f12750a = new SimpleDateFormat("hh:mm:ss a");
    }
}
