package com.google.api.client.json.gson;

import android.support.v4.media.a;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.gson.Strictness;
import com.google.gson.stream.JsonReader;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class GsonParser extends JsonParser {
    public final JsonReader g;
    public final GsonFactory h;
    public final ArrayList i = new ArrayList();
    public JsonToken j;
    public String k;

    /* renamed from: com.google.api.client.json.gson.GsonParser$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12086a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[com.google.gson.stream.JsonToken.values().length];
            b = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[7] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[8] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[5] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[6] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[4] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr2 = new int[JsonToken.values().length];
            f12086a = iArr2;
            try {
                iArr2[0] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f12086a[2] = 2;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public GsonParser(GsonFactory gsonFactory, JsonReader jsonReader) {
        Strictness strictness;
        this.h = gsonFactory;
        this.g = jsonReader;
        if (gsonFactory.getReadLeniency()) {
            strictness = Strictness.f12675c;
        } else {
            strictness = Strictness.f;
        }
        jsonReader.f = strictness;
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonParser G() {
        JsonToken jsonToken = this.j;
        if (jsonToken != null) {
            int ordinal = jsonToken.ordinal();
            JsonReader jsonReader = this.g;
            if (ordinal != 0) {
                if (ordinal == 2) {
                    jsonReader.h0();
                    this.k = "}";
                    this.j = JsonToken.h;
                    return this;
                }
            } else {
                jsonReader.h0();
                this.k = "]";
                this.j = JsonToken.f;
            }
        }
        return this;
    }

    public final void T() {
        JsonToken jsonToken = this.j;
        if (jsonToken != JsonToken.k && jsonToken != JsonToken.l) {
            throw new IOException("Token is not a number");
        }
    }

    @Override // com.google.api.client.json.JsonParser
    public final BigInteger a() {
        T();
        return new BigInteger(this.k);
    }

    @Override // com.google.api.client.json.JsonParser
    public final byte b() {
        T();
        return Byte.parseByte(this.k);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.g.close();
    }

    @Override // com.google.api.client.json.JsonParser
    public final String e() {
        ArrayList arrayList = this.i;
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String) a.c(1, arrayList);
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonToken f() {
        return this.j;
    }

    @Override // com.google.api.client.json.JsonParser
    public final BigDecimal i() {
        T();
        return new BigDecimal(this.k);
    }

    @Override // com.google.api.client.json.JsonParser
    public final double j() {
        T();
        return Double.parseDouble(this.k);
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonFactory k() {
        return this.h;
    }

    @Override // com.google.api.client.json.JsonParser
    public final float l() {
        T();
        return Float.parseFloat(this.k);
    }

    @Override // com.google.api.client.json.JsonParser
    public final int m() {
        T();
        return Integer.parseInt(this.k);
    }

    @Override // com.google.api.client.json.JsonParser
    public final long n() {
        T();
        return Long.parseLong(this.k);
    }

    @Override // com.google.api.client.json.JsonParser
    public final short o() {
        T();
        return Short.parseShort(this.k);
    }

    @Override // com.google.api.client.json.JsonParser
    public final String u() {
        return this.k;
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonToken v() {
        com.google.gson.stream.JsonToken jsonToken;
        JsonToken jsonToken2;
        JsonToken jsonToken3 = this.j;
        ArrayList arrayList = this.i;
        JsonReader jsonReader = this.g;
        if (jsonToken3 != null) {
            int ordinal = jsonToken3.ordinal();
            if (ordinal != 0) {
                if (ordinal == 2) {
                    jsonReader.b();
                    arrayList.add(null);
                }
            } else {
                jsonReader.a();
                arrayList.add(null);
            }
        }
        try {
            jsonToken = jsonReader.W();
        } catch (EOFException unused) {
            jsonToken = com.google.gson.stream.JsonToken.n;
        }
        switch (jsonToken.ordinal()) {
            case 0:
                this.k = "[";
                this.j = JsonToken.f12083c;
                break;
            case 1:
                this.k = "]";
                this.j = JsonToken.f;
                arrayList.remove(arrayList.size() - 1);
                jsonReader.f();
                break;
            case 2:
                this.k = "{";
                this.j = JsonToken.g;
                break;
            case 3:
                this.k = "}";
                this.j = JsonToken.h;
                arrayList.remove(arrayList.size() - 1);
                jsonReader.i();
                break;
            case 4:
                this.k = jsonReader.F();
                this.j = JsonToken.i;
                arrayList.set(arrayList.size() - 1, this.k);
                break;
            case 5:
                this.k = jsonReader.S();
                this.j = JsonToken.j;
                break;
            case 6:
                String S = jsonReader.S();
                this.k = S;
                if (S.indexOf(46) == -1) {
                    jsonToken2 = JsonToken.k;
                } else {
                    jsonToken2 = JsonToken.l;
                }
                this.j = jsonToken2;
                break;
            case 7:
                if (jsonReader.v()) {
                    this.k = "true";
                    this.j = JsonToken.m;
                    break;
                } else {
                    this.k = "false";
                    this.j = JsonToken.n;
                    break;
                }
            case 8:
                this.k = "null";
                this.j = JsonToken.o;
                jsonReader.L();
                break;
            default:
                this.k = null;
                this.j = null;
                break;
        }
        return this.j;
    }
}
