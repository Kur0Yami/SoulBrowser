package com.google.gson;

import android.support.v4.media.a;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.NumberLimits;
import com.google.gson.stream.JsonReader;
import java.io.IOException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public abstract class ToNumberPolicy implements ToNumberStrategy {

    /* renamed from: c, reason: collision with root package name */
    public static final ToNumberPolicy f12676c;
    public static final ToNumberPolicy f;
    public static final /* synthetic */ ToNumberPolicy[] g;

    static {
        ToNumberPolicy toNumberPolicy = new ToNumberPolicy() { // from class: com.google.gson.ToNumberPolicy.1
            @Override // com.google.gson.ToNumberStrategy
            public final Number a(JsonReader jsonReader) {
                return Double.valueOf(jsonReader.z());
            }
        };
        f12676c = toNumberPolicy;
        ToNumberPolicy toNumberPolicy2 = new ToNumberPolicy() { // from class: com.google.gson.ToNumberPolicy.2
            @Override // com.google.gson.ToNumberStrategy
            public final Number a(JsonReader jsonReader) {
                return new LazilyParsedNumber(jsonReader.S());
            }
        };
        f = toNumberPolicy2;
        g = new ToNumberPolicy[]{toNumberPolicy, toNumberPolicy2, new ToNumberPolicy() { // from class: com.google.gson.ToNumberPolicy.3
            public static Double b(String str, JsonReader jsonReader) {
                boolean z;
                try {
                    Double valueOf = Double.valueOf(str);
                    if (!valueOf.isInfinite()) {
                        if (valueOf.isNaN()) {
                        }
                        return valueOf;
                    }
                    if (jsonReader.f == Strictness.f12675c) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        throw new IOException("JSON forbids NaN and infinities: " + valueOf + "; at path " + jsonReader.m());
                    }
                    return valueOf;
                } catch (NumberFormatException e) {
                    StringBuilder w = a.w("Cannot parse ", str, "; at path ");
                    w.append(jsonReader.m());
                    throw new RuntimeException(w.toString(), e);
                }
            }

            @Override // com.google.gson.ToNumberStrategy
            public final Number a(JsonReader jsonReader) {
                String S = jsonReader.S();
                if (S.indexOf(46) >= 0) {
                    return b(S, jsonReader);
                }
                try {
                    return Long.valueOf(Long.parseLong(S));
                } catch (NumberFormatException unused) {
                    return b(S, jsonReader);
                }
            }
        }, new ToNumberPolicy() { // from class: com.google.gson.ToNumberPolicy.4
            @Override // com.google.gson.ToNumberStrategy
            public final Number a(JsonReader jsonReader) {
                String S = jsonReader.S();
                try {
                    return NumberLimits.b(S);
                } catch (NumberFormatException e) {
                    StringBuilder w = a.w("Cannot parse ", S, "; at path ");
                    w.append(jsonReader.m());
                    throw new RuntimeException(w.toString(), e);
                }
            }
        }};
    }

    public static ToNumberPolicy valueOf(String str) {
        return (ToNumberPolicy) Enum.valueOf(ToNumberPolicy.class, str);
    }

    public static ToNumberPolicy[] values() {
        return (ToNumberPolicy[]) g.clone();
    }
}
