package com.google.gson.internal.sql;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

/* loaded from: classes3.dex */
final class SqlDateTypeAdapter extends TypeAdapter<Date> {
    public static final TypeAdapterFactory b = new TypeAdapterFactory() { // from class: com.google.gson.internal.sql.SqlDateTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            if (typeToken.f12754a == Date.class) {
                return new SqlDateTypeAdapter(0);
            }
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final SimpleDateFormat f12749a;

    public /* synthetic */ SqlDateTypeAdapter(int i) {
        this();
    }

    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) {
        Date date;
        if (jsonReader.W() == JsonToken.m) {
            jsonReader.L();
            return null;
        }
        String S = jsonReader.S();
        synchronized (this) {
            TimeZone timeZone = this.f12749a.getTimeZone();
            try {
                try {
                    date = new Date(this.f12749a.parse(S).getTime());
                } catch (ParseException e) {
                    throw new RuntimeException("Failed parsing '" + S + "' as SQL Date; at path " + jsonReader.m(), e);
                }
            } finally {
                this.f12749a.setTimeZone(timeZone);
            }
        }
        return date;
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Object obj) {
        String format;
        Date date = (Date) obj;
        if (date == null) {
            jsonWriter.l();
            return;
        }
        synchronized (this) {
            format = this.f12749a.format((java.util.Date) date);
        }
        jsonWriter.F(format);
    }

    private SqlDateTypeAdapter() {
        this.f12749a = new SimpleDateFormat("MMM d, yyyy");
    }
}
