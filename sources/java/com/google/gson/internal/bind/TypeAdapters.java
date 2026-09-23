package com.google.gson.internal.bind;

import android.support.v4.media.a;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.NumberLimits;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes3.dex */
public final class TypeAdapters {
    public static final TypeAdapterFactory A;
    public static final TypeAdapterFactory B;

    /* renamed from: a, reason: collision with root package name */
    public static final TypeAdapterFactory f12736a = new AnonymousClass29(Class.class, new TypeAdapter<Class>() { // from class: com.google.gson.internal.bind.TypeAdapters.1
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("java-lang-class-unsupported"));
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + ((Class) obj).getName() + ". Forgot to register a type adapter?\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("java-lang-class-unsupported"));
        }
    }.a());
    public static final TypeAdapterFactory b = new AnonymousClass29(BitSet.class, new TypeAdapter<BitSet>() { // from class: com.google.gson.internal.bind.TypeAdapters.2
        @Override // com.google.gson.TypeAdapter
        public final Object b(JsonReader jsonReader) {
            boolean z2;
            BitSet bitSet = new BitSet();
            jsonReader.a();
            JsonToken W = jsonReader.W();
            int i2 = 0;
            while (W != JsonToken.f) {
                int ordinal = W.ordinal();
                if (ordinal != 5 && ordinal != 6) {
                    if (ordinal == 7) {
                        z2 = jsonReader.v();
                    } else {
                        throw new RuntimeException("Invalid bitset value type: " + W + "; at path " + jsonReader.k());
                    }
                } else {
                    int A2 = jsonReader.A();
                    if (A2 == 0) {
                        z2 = false;
                    } else if (A2 == 1) {
                        z2 = true;
                    } else {
                        StringBuilder s2 = a.s(A2, "Invalid bitset value ", ", expected 0 or 1; at path ");
                        s2.append(jsonReader.m());
                        throw new RuntimeException(s2.toString());
                    }
                }
                if (z2) {
                    bitSet.set(i2);
                }
                i2++;
                W = jsonReader.W();
            }
            jsonReader.f();
            return bitSet;
        }

        @Override // com.google.gson.TypeAdapter
        public final void c(JsonWriter jsonWriter, Object obj) {
            BitSet bitSet = (BitSet) obj;
            jsonWriter.b();
            int length = bitSet.length();
            for (int i2 = 0; i2 < length; i2++) {
                jsonWriter.z(bitSet.get(i2) ? 1L : 0L);
            }
            jsonWriter.f();
        }
    }.a());

    /* renamed from: c, reason: collision with root package name */
    public static final TypeAdapter f12737c;
    public static final TypeAdapterFactory d;
    public static final TypeAdapterFactory e;
    public static final TypeAdapterFactory f;
    public static final TypeAdapterFactory g;
    public static final TypeAdapterFactory h;
    public static final TypeAdapterFactory i;
    public static final TypeAdapterFactory j;
    public static final TypeAdapter k;
    public static final TypeAdapterFactory l;
    public static final TypeAdapter m;
    public static final TypeAdapter n;
    public static final TypeAdapter o;
    public static final TypeAdapterFactory p;
    public static final TypeAdapterFactory q;
    public static final TypeAdapterFactory r;
    public static final TypeAdapterFactory s;
    public static final TypeAdapterFactory t;
    public static final TypeAdapterFactory u;
    public static final TypeAdapterFactory v;
    public static final TypeAdapterFactory w;
    public static final TypeAdapterFactory x;
    public static final TypeAdapterFactory y;
    public static final TypeAdapter z;

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$28, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass28 implements TypeAdapterFactory {
        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            typeToken.equals(null);
            return null;
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$29, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass29 implements TypeAdapterFactory {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Class f12738c;
        public final /* synthetic */ TypeAdapter f;

        public AnonymousClass29(Class cls, TypeAdapter typeAdapter) {
            this.f12738c = cls;
            this.f = typeAdapter;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            if (typeToken.f12754a == this.f12738c) {
                return this.f;
            }
            return null;
        }

        public final String toString() {
            return "Factory[type=" + this.f12738c.getName() + ",adapter=" + this.f + "]";
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$30, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass30 implements TypeAdapterFactory {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Class f12739c;
        public final /* synthetic */ Class f;
        public final /* synthetic */ TypeAdapter g;

        public AnonymousClass30(Class cls, Class cls2, TypeAdapter typeAdapter) {
            this.f12739c = cls;
            this.f = cls2;
            this.g = typeAdapter;
        }

        @Override // com.google.gson.TypeAdapterFactory
        public final TypeAdapter a(Gson gson, TypeToken typeToken) {
            Class cls = typeToken.f12754a;
            if (cls != this.f12739c && cls != this.f) {
                return null;
            }
            return this.g;
        }

        public final String toString() {
            return "Factory[type=" + this.f.getName() + "+" + this.f12739c.getName() + ",adapter=" + this.g + "]";
        }
    }

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$33, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass33 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12743a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f12743a = iArr;
            try {
                iArr[6] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12743a[5] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12743a[7] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        TypeAdapter<Boolean> typeAdapter = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.3
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                JsonToken W = jsonReader.W();
                if (W == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                if (W == JsonToken.j) {
                    return Boolean.valueOf(Boolean.parseBoolean(jsonReader.S()));
                }
                return Boolean.valueOf(jsonReader.v());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                jsonWriter.A((Boolean) obj);
            }
        };
        f12737c = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.4
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                return Boolean.valueOf(jsonReader.S());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                String bool;
                Boolean bool2 = (Boolean) obj;
                if (bool2 == null) {
                    bool = "null";
                } else {
                    bool = bool2.toString();
                }
                jsonWriter.F(bool);
            }
        };
        d = new AnonymousClass30(Boolean.TYPE, Boolean.class, typeAdapter);
        e = new AnonymousClass30(Byte.TYPE, Byte.class, new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.5
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                try {
                    int A2 = jsonReader.A();
                    if (A2 <= 255 && A2 >= -128) {
                        return Byte.valueOf((byte) A2);
                    }
                    StringBuilder s2 = a.s(A2, "Lossy conversion from ", " to byte; at path ");
                    s2.append(jsonReader.m());
                    throw new RuntimeException(s2.toString());
                } catch (NumberFormatException e2) {
                    throw new RuntimeException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                if (((Number) obj) == null) {
                    jsonWriter.l();
                } else {
                    jsonWriter.z(r4.byteValue());
                }
            }
        });
        f = new AnonymousClass30(Short.TYPE, Short.class, new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.6
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                try {
                    int A2 = jsonReader.A();
                    if (A2 <= 65535 && A2 >= -32768) {
                        return Short.valueOf((short) A2);
                    }
                    StringBuilder s2 = a.s(A2, "Lossy conversion from ", " to short; at path ");
                    s2.append(jsonReader.m());
                    throw new RuntimeException(s2.toString());
                } catch (NumberFormatException e2) {
                    throw new RuntimeException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                if (((Number) obj) == null) {
                    jsonWriter.l();
                } else {
                    jsonWriter.z(r4.shortValue());
                }
            }
        });
        g = new AnonymousClass30(Integer.TYPE, Integer.class, new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.7
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                try {
                    return Integer.valueOf(jsonReader.A());
                } catch (NumberFormatException e2) {
                    throw new RuntimeException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                if (((Number) obj) == null) {
                    jsonWriter.l();
                } else {
                    jsonWriter.z(r4.intValue());
                }
            }
        });
        h = new AnonymousClass29(AtomicInteger.class, new TypeAdapter<AtomicInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.8
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                try {
                    return new AtomicInteger(jsonReader.A());
                } catch (NumberFormatException e2) {
                    throw new RuntimeException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                jsonWriter.z(((AtomicInteger) obj).get());
            }
        }.a());
        i = new AnonymousClass29(AtomicBoolean.class, new TypeAdapter<AtomicBoolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.9
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                return new AtomicBoolean(jsonReader.v());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                jsonWriter.G(((AtomicBoolean) obj).get());
            }
        }.a());
        j = new AnonymousClass29(AtomicIntegerArray.class, new TypeAdapter<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.TypeAdapters.10
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                ArrayList arrayList = new ArrayList();
                jsonReader.a();
                while (jsonReader.n()) {
                    try {
                        arrayList.add(Integer.valueOf(jsonReader.A()));
                    } catch (NumberFormatException e2) {
                        throw new RuntimeException(e2);
                    }
                }
                jsonReader.f();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                jsonWriter.b();
                int length = ((AtomicIntegerArray) obj).length();
                for (int i2 = 0; i2 < length; i2++) {
                    jsonWriter.z(r6.get(i2));
                }
                jsonWriter.f();
            }
        }.a());
        k = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.11
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                try {
                    return Long.valueOf(jsonReader.B());
                } catch (NumberFormatException e2) {
                    throw new RuntimeException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                Number number = (Number) obj;
                if (number == null) {
                    jsonWriter.l();
                } else {
                    jsonWriter.z(number.longValue());
                }
            }
        };
        new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.12
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                return Float.valueOf((float) jsonReader.z());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                Number number = (Number) obj;
                if (number == null) {
                    jsonWriter.l();
                    return;
                }
                if (!(number instanceof Float)) {
                    number = Float.valueOf(number.floatValue());
                }
                jsonWriter.B(number);
            }
        };
        new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.13
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                return Double.valueOf(jsonReader.z());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                Number number = (Number) obj;
                if (number == null) {
                    jsonWriter.l();
                } else {
                    jsonWriter.v(number.doubleValue());
                }
            }
        };
        l = new AnonymousClass30(Character.TYPE, Character.class, new TypeAdapter<Character>() { // from class: com.google.gson.internal.bind.TypeAdapters.14
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                String S = jsonReader.S();
                if (S.length() == 1) {
                    return Character.valueOf(S.charAt(0));
                }
                StringBuilder w2 = a.w("Expecting character, got: ", S, "; at ");
                w2.append(jsonReader.m());
                throw new RuntimeException(w2.toString());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                String valueOf;
                Character ch = (Character) obj;
                if (ch == null) {
                    valueOf = null;
                } else {
                    valueOf = String.valueOf(ch);
                }
                jsonWriter.F(valueOf);
            }
        });
        TypeAdapter<String> typeAdapter2 = new TypeAdapter<String>() { // from class: com.google.gson.internal.bind.TypeAdapters.15
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                JsonToken W = jsonReader.W();
                if (W == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                if (W == JsonToken.l) {
                    return Boolean.toString(jsonReader.v());
                }
                return jsonReader.S();
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                jsonWriter.F((String) obj);
            }
        };
        m = new TypeAdapter<BigDecimal>() { // from class: com.google.gson.internal.bind.TypeAdapters.16
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                String S = jsonReader.S();
                try {
                    return NumberLimits.b(S);
                } catch (NumberFormatException e2) {
                    StringBuilder w2 = a.w("Failed parsing '", S, "' as BigDecimal; at path ");
                    w2.append(jsonReader.m());
                    throw new RuntimeException(w2.toString(), e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                jsonWriter.B((BigDecimal) obj);
            }
        };
        n = new TypeAdapter<BigInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.17
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                String S = jsonReader.S();
                try {
                    NumberLimits.a(S);
                    return new BigInteger(S);
                } catch (NumberFormatException e2) {
                    StringBuilder w2 = a.w("Failed parsing '", S, "' as BigInteger; at path ");
                    w2.append(jsonReader.m());
                    throw new RuntimeException(w2.toString(), e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                jsonWriter.B((BigInteger) obj);
            }
        };
        o = new TypeAdapter<LazilyParsedNumber>() { // from class: com.google.gson.internal.bind.TypeAdapters.18
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                return new LazilyParsedNumber(jsonReader.S());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                jsonWriter.B((LazilyParsedNumber) obj);
            }
        };
        p = new AnonymousClass29(String.class, typeAdapter2);
        q = new AnonymousClass29(StringBuilder.class, new TypeAdapter<StringBuilder>() { // from class: com.google.gson.internal.bind.TypeAdapters.19
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                return new StringBuilder(jsonReader.S());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                String sb;
                StringBuilder sb2 = (StringBuilder) obj;
                if (sb2 == null) {
                    sb = null;
                } else {
                    sb = sb2.toString();
                }
                jsonWriter.F(sb);
            }
        });
        r = new AnonymousClass29(StringBuffer.class, new TypeAdapter<StringBuffer>() { // from class: com.google.gson.internal.bind.TypeAdapters.20
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                return new StringBuffer(jsonReader.S());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                String stringBuffer;
                StringBuffer stringBuffer2 = (StringBuffer) obj;
                if (stringBuffer2 == null) {
                    stringBuffer = null;
                } else {
                    stringBuffer = stringBuffer2.toString();
                }
                jsonWriter.F(stringBuffer);
            }
        });
        s = new AnonymousClass29(URL.class, new TypeAdapter<URL>() { // from class: com.google.gson.internal.bind.TypeAdapters.21
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                String S = jsonReader.S();
                if (S.equals("null")) {
                    return null;
                }
                return new URL(S);
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                String externalForm;
                URL url = (URL) obj;
                if (url == null) {
                    externalForm = null;
                } else {
                    externalForm = url.toExternalForm();
                }
                jsonWriter.F(externalForm);
            }
        });
        t = new AnonymousClass29(URI.class, new TypeAdapter<URI>() { // from class: com.google.gson.internal.bind.TypeAdapters.22
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                try {
                    String S = jsonReader.S();
                    if (S.equals("null")) {
                        return null;
                    }
                    return new URI(S);
                } catch (URISyntaxException e2) {
                    throw new RuntimeException(e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                String aSCIIString;
                URI uri = (URI) obj;
                if (uri == null) {
                    aSCIIString = null;
                } else {
                    aSCIIString = uri.toASCIIString();
                }
                jsonWriter.F(aSCIIString);
            }
        });
        final TypeAdapter<InetAddress> typeAdapter3 = new TypeAdapter<InetAddress>() { // from class: com.google.gson.internal.bind.TypeAdapters.23
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                return InetAddress.getByName(jsonReader.S());
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                String hostAddress;
                InetAddress inetAddress = (InetAddress) obj;
                if (inetAddress == null) {
                    hostAddress = null;
                } else {
                    hostAddress = inetAddress.getHostAddress();
                }
                jsonWriter.F(hostAddress);
            }
        };
        final Class<InetAddress> cls = InetAddress.class;
        u = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.32
            @Override // com.google.gson.TypeAdapterFactory
            public final TypeAdapter a(Gson gson, TypeToken typeToken) {
                final Class<?> cls2 = typeToken.f12754a;
                if (!cls.isAssignableFrom(cls2)) {
                    return null;
                }
                return new TypeAdapter<Object>() { // from class: com.google.gson.internal.bind.TypeAdapters.32.1
                    @Override // com.google.gson.TypeAdapter
                    public final Object b(JsonReader jsonReader) {
                        Object b2 = typeAdapter3.b(jsonReader);
                        if (b2 != null) {
                            Class cls3 = cls2;
                            if (!cls3.isInstance(b2)) {
                                throw new RuntimeException("Expected a " + cls3.getName() + " but was " + b2.getClass().getName() + "; at path " + jsonReader.m());
                            }
                        }
                        return b2;
                    }

                    @Override // com.google.gson.TypeAdapter
                    public final void c(JsonWriter jsonWriter, Object obj) {
                        typeAdapter3.c(jsonWriter, obj);
                    }
                };
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + typeAdapter3 + "]";
            }
        };
        v = new AnonymousClass29(UUID.class, new TypeAdapter<UUID>() { // from class: com.google.gson.internal.bind.TypeAdapters.24
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                String S = jsonReader.S();
                try {
                    return UUID.fromString(S);
                } catch (IllegalArgumentException e2) {
                    StringBuilder w2 = a.w("Failed parsing '", S, "' as UUID; at path ");
                    w2.append(jsonReader.m());
                    throw new RuntimeException(w2.toString(), e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                String uuid;
                UUID uuid2 = (UUID) obj;
                if (uuid2 == null) {
                    uuid = null;
                } else {
                    uuid = uuid2.toString();
                }
                jsonWriter.F(uuid);
            }
        });
        w = new AnonymousClass29(Currency.class, new TypeAdapter<Currency>() { // from class: com.google.gson.internal.bind.TypeAdapters.25
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                String S = jsonReader.S();
                try {
                    return Currency.getInstance(S);
                } catch (IllegalArgumentException e2) {
                    StringBuilder w2 = a.w("Failed parsing '", S, "' as Currency; at path ");
                    w2.append(jsonReader.m());
                    throw new RuntimeException(w2.toString(), e2);
                }
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                jsonWriter.F(((Currency) obj).getCurrencyCode());
            }
        }.a());
        final TypeAdapter<Calendar> typeAdapter4 = new TypeAdapter<Calendar>() { // from class: com.google.gson.internal.bind.TypeAdapters.26
            /* JADX WARN: Failed to find 'out' block for switch in B:10:0x002f. Please report as an issue. */
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                jsonReader.b();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (jsonReader.W() != JsonToken.h) {
                    String F = jsonReader.F();
                    int A2 = jsonReader.A();
                    F.getClass();
                    char c2 = 65535;
                    switch (F.hashCode()) {
                        case -1181204563:
                            if (F.equals("dayOfMonth")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1074026988:
                            if (F.equals("minute")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case -906279820:
                            if (F.equals("second")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 3704893:
                            if (F.equals("year")) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case 104080000:
                            if (F.equals("month")) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 985252545:
                            if (F.equals("hourOfDay")) {
                                c2 = 5;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            i4 = A2;
                            break;
                        case 1:
                            i6 = A2;
                            break;
                        case 2:
                            i7 = A2;
                            break;
                        case 3:
                            i2 = A2;
                            break;
                        case 4:
                            i3 = A2;
                            break;
                        case 5:
                            i5 = A2;
                            break;
                    }
                }
                jsonReader.i();
                return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                if (((Calendar) obj) == null) {
                    jsonWriter.l();
                    return;
                }
                jsonWriter.d();
                jsonWriter.j("year");
                jsonWriter.z(r4.get(1));
                jsonWriter.j("month");
                jsonWriter.z(r4.get(2));
                jsonWriter.j("dayOfMonth");
                jsonWriter.z(r4.get(5));
                jsonWriter.j("hourOfDay");
                jsonWriter.z(r4.get(11));
                jsonWriter.j("minute");
                jsonWriter.z(r4.get(12));
                jsonWriter.j("second");
                jsonWriter.z(r4.get(13));
                jsonWriter.i();
            }
        };
        x = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.31
            @Override // com.google.gson.TypeAdapterFactory
            public final TypeAdapter a(Gson gson, TypeToken typeToken) {
                Class cls2 = typeToken.f12754a;
                if (cls2 != Calendar.class && cls2 != GregorianCalendar.class) {
                    return null;
                }
                return TypeAdapter.this;
            }

            public final String toString() {
                return "Factory[type=" + Calendar.class.getName() + "+" + GregorianCalendar.class.getName() + ",adapter=" + TypeAdapter.this + "]";
            }
        };
        y = new AnonymousClass29(Locale.class, new TypeAdapter<Locale>() { // from class: com.google.gson.internal.bind.TypeAdapters.27
            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                String str;
                String str2;
                String str3 = null;
                if (jsonReader.W() == JsonToken.m) {
                    jsonReader.L();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.S(), "_");
                if (stringTokenizer.hasMoreElements()) {
                    str = stringTokenizer.nextToken();
                } else {
                    str = null;
                }
                if (stringTokenizer.hasMoreElements()) {
                    str2 = stringTokenizer.nextToken();
                } else {
                    str2 = null;
                }
                if (stringTokenizer.hasMoreElements()) {
                    str3 = stringTokenizer.nextToken();
                }
                if (str2 == null && str3 == null) {
                    return new Locale(str);
                }
                if (str3 == null) {
                    return new Locale(str, str2);
                }
                return new Locale(str, str2, str3);
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                String locale;
                Locale locale2 = (Locale) obj;
                if (locale2 == null) {
                    locale = null;
                } else {
                    locale = locale2.toString();
                }
                jsonWriter.F(locale);
            }
        });
        final JsonElementTypeAdapter jsonElementTypeAdapter = JsonElementTypeAdapter.f12712a;
        z = jsonElementTypeAdapter;
        final Class<JsonElement> cls2 = JsonElement.class;
        A = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.32
            @Override // com.google.gson.TypeAdapterFactory
            public final TypeAdapter a(Gson gson, TypeToken typeToken) {
                final Class cls22 = typeToken.f12754a;
                if (!cls2.isAssignableFrom(cls22)) {
                    return null;
                }
                return new TypeAdapter<Object>() { // from class: com.google.gson.internal.bind.TypeAdapters.32.1
                    @Override // com.google.gson.TypeAdapter
                    public final Object b(JsonReader jsonReader) {
                        Object b2 = jsonElementTypeAdapter.b(jsonReader);
                        if (b2 != null) {
                            Class cls3 = cls22;
                            if (!cls3.isInstance(b2)) {
                                throw new RuntimeException("Expected a " + cls3.getName() + " but was " + b2.getClass().getName() + "; at path " + jsonReader.m());
                            }
                        }
                        return b2;
                    }

                    @Override // com.google.gson.TypeAdapter
                    public final void c(JsonWriter jsonWriter, Object obj) {
                        jsonElementTypeAdapter.c(jsonWriter, obj);
                    }
                };
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls2.getName() + ",adapter=" + jsonElementTypeAdapter + "]";
            }
        };
        B = EnumTypeAdapter.d;
    }

    public static TypeAdapterFactory a(Class cls, TypeAdapter typeAdapter) {
        return new AnonymousClass29(cls, typeAdapter);
    }

    public static TypeAdapterFactory b(Class cls, Class cls2, TypeAdapter typeAdapter) {
        return new AnonymousClass30(cls, cls2, typeAdapter);
    }
}
