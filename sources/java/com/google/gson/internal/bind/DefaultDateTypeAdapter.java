package com.google.gson.internal.bind;

import android.support.v4.media.a;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.JavaVersion;
import com.google.gson.internal.bind.util.ISO8601Utils;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public final class DefaultDateTypeAdapter<T extends Date> extends TypeAdapter<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final TypeAdapterFactory f12706c = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.DefaultDateTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            if (typeToken.f12754a == Date.class) {
                return new DefaultDateTypeAdapter();
            }
            return null;
        }

        public final String toString() {
            return "DefaultDateTypeAdapter#DEFAULT_STYLE_FACTORY";
        }
    };

    /* renamed from: a, reason: collision with root package name */
    public final DateType f12707a;
    public final ArrayList b;

    /* loaded from: classes3.dex */
    public static abstract class DateType<T extends Date> {

        /* renamed from: a, reason: collision with root package name */
        public static final DateType f12708a = new Object();

        /* renamed from: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends DateType<Date> {
        }
    }

    public DefaultDateTypeAdapter() {
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        this.f12707a = DateType.f12708a;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (JavaVersion.f12686a >= 9) {
            arrayList.add(new SimpleDateFormat(a.D("MMM d, yyyy", " ", "h:mm:ss a"), locale));
        }
    }

    @Override // com.google.gson.TypeAdapter
    public final Object b(JsonReader jsonReader) {
        Date b;
        if (jsonReader.W() == JsonToken.m) {
            jsonReader.L();
            return null;
        }
        String S = jsonReader.S();
        synchronized (this.b) {
            try {
                ArrayList arrayList = this.b;
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    if (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        DateFormat dateFormat = (DateFormat) obj;
                        TimeZone timeZone = dateFormat.getTimeZone();
                        try {
                            try {
                                b = dateFormat.parse(S);
                                break;
                            } finally {
                                dateFormat.setTimeZone(timeZone);
                            }
                        } catch (ParseException unused) {
                            dateFormat.setTimeZone(timeZone);
                        }
                    } else {
                        try {
                            b = ISO8601Utils.b(S, new ParsePosition(0));
                            break;
                        } catch (ParseException e) {
                            StringBuilder w = a.w("Failed parsing '", S, "' as Date; at path ");
                            w.append(jsonReader.m());
                            throw new RuntimeException(w.toString(), e);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ((DateType.AnonymousClass1) this.f12707a).getClass();
        return b;
    }

    @Override // com.google.gson.TypeAdapter
    public final void c(JsonWriter jsonWriter, Object obj) {
        String format;
        Date date = (Date) obj;
        if (date == null) {
            jsonWriter.l();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.b.get(0);
        synchronized (this.b) {
            format = dateFormat.format(date);
        }
        jsonWriter.F(format);
    }

    public final String toString() {
        DateFormat dateFormat = (DateFormat) this.b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
