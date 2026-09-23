package com.google.firebase.encoders.json;

import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
import com.google.firebase.encoders.config.EncoderConfig;
import j$.util.DesugarTimeZone;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class JsonDataEncoderBuilder implements EncoderConfig<JsonDataEncoderBuilder> {
    public static final b f;
    public static final b g;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12639a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final a f12640c;
    public boolean d;
    public static final a e = new Object();
    public static final TimestampEncoder h = new Object();

    /* loaded from: classes3.dex */
    public static final class TimestampEncoder implements ValueEncoder<Date> {

        /* renamed from: a, reason: collision with root package name */
        public static final SimpleDateFormat f12642a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f12642a = simpleDateFormat;
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        }

        @Override // com.google.firebase.encoders.ValueEncoder
        public final void a(Object obj, Object obj2) {
            ((ValueEncoderContext) obj2).b(f12642a.format((Date) obj));
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.firebase.encoders.json.a] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.firebase.encoders.json.b] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.firebase.encoders.json.b] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.firebase.encoders.json.JsonDataEncoderBuilder$TimestampEncoder, java.lang.Object] */
    static {
        final int i = 0;
        f = new ValueEncoder() { // from class: com.google.firebase.encoders.json.b
            @Override // com.google.firebase.encoders.ValueEncoder
            public final void a(Object obj, Object obj2) {
                switch (i) {
                    case 0:
                        a aVar = JsonDataEncoderBuilder.e;
                        ((ValueEncoderContext) obj2).b((String) obj);
                        return;
                    default:
                        a aVar2 = JsonDataEncoderBuilder.e;
                        ((ValueEncoderContext) obj2).c(((Boolean) obj).booleanValue());
                        return;
                }
            }
        };
        final int i2 = 1;
        g = new ValueEncoder() { // from class: com.google.firebase.encoders.json.b
            @Override // com.google.firebase.encoders.ValueEncoder
            public final void a(Object obj, Object obj2) {
                switch (i2) {
                    case 0:
                        a aVar = JsonDataEncoderBuilder.e;
                        ((ValueEncoderContext) obj2).b((String) obj);
                        return;
                    default:
                        a aVar2 = JsonDataEncoderBuilder.e;
                        ((ValueEncoderContext) obj2).c(((Boolean) obj).booleanValue());
                        return;
                }
            }
        };
    }

    public JsonDataEncoderBuilder() {
        HashMap hashMap = new HashMap();
        this.f12639a = hashMap;
        HashMap hashMap2 = new HashMap();
        this.b = hashMap2;
        this.f12640c = e;
        this.d = false;
        hashMap2.put(String.class, f);
        hashMap.remove(String.class);
        hashMap2.put(Boolean.class, g);
        hashMap.remove(Boolean.class);
        hashMap2.put(Date.class, h);
        hashMap.remove(Date.class);
    }

    @Override // com.google.firebase.encoders.config.EncoderConfig
    public final EncoderConfig a(Class cls, ObjectEncoder objectEncoder) {
        this.f12639a.put(cls, objectEncoder);
        this.b.remove(cls);
        return this;
    }

    public final DataEncoder b() {
        return new DataEncoder() { // from class: com.google.firebase.encoders.json.JsonDataEncoderBuilder.1
            @Override // com.google.firebase.encoders.DataEncoder
            public final void a(Object obj, Writer writer) {
                JsonDataEncoderBuilder jsonDataEncoderBuilder = JsonDataEncoderBuilder.this;
                JsonValueObjectEncoderContext jsonValueObjectEncoderContext = new JsonValueObjectEncoderContext(writer, jsonDataEncoderBuilder.f12639a, jsonDataEncoderBuilder.b, jsonDataEncoderBuilder.f12640c, jsonDataEncoderBuilder.d);
                jsonValueObjectEncoderContext.e(obj);
                jsonValueObjectEncoderContext.g();
                jsonValueObjectEncoderContext.b.flush();
            }

            @Override // com.google.firebase.encoders.DataEncoder
            public final String b(Object obj) {
                StringWriter stringWriter = new StringWriter();
                try {
                    a(obj, stringWriter);
                } catch (IOException unused) {
                }
                return stringWriter.toString();
            }
        };
    }
}
