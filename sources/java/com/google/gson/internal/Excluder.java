package com.google.gson.internal;

import com.google.gson.ExclusionStrategy;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class Excluder implements TypeAdapterFactory, Cloneable {
    public static final Excluder g = new Excluder();

    /* renamed from: c, reason: collision with root package name */
    public final List f12679c;
    public final List f;

    public Excluder() {
        List list = Collections.EMPTY_LIST;
        this.f12679c = list;
        this.f = list;
    }

    @Override // com.google.gson.TypeAdapterFactory
    public final TypeAdapter a(final Gson gson, final TypeToken typeToken) {
        Class cls = typeToken.f12754a;
        final boolean b = b(cls, true);
        final boolean b2 = b(cls, false);
        if (!b && !b2) {
            return null;
        }
        return new TypeAdapter<Object>() { // from class: com.google.gson.internal.Excluder.1

            /* renamed from: a, reason: collision with root package name */
            public volatile TypeAdapter f12680a;

            @Override // com.google.gson.TypeAdapter
            public final Object b(JsonReader jsonReader) {
                if (b2) {
                    jsonReader.h0();
                    return null;
                }
                TypeAdapter typeAdapter = this.f12680a;
                if (typeAdapter == null) {
                    typeAdapter = gson.c(Excluder.this, typeToken);
                    this.f12680a = typeAdapter;
                }
                return typeAdapter.b(jsonReader);
            }

            @Override // com.google.gson.TypeAdapter
            public final void c(JsonWriter jsonWriter, Object obj) {
                if (b) {
                    jsonWriter.l();
                    return;
                }
                TypeAdapter typeAdapter = this.f12680a;
                if (typeAdapter == null) {
                    typeAdapter = gson.c(Excluder.this, typeToken);
                    this.f12680a = typeAdapter;
                }
                typeAdapter.c(jsonWriter, obj);
            }
        };
    }

    public final boolean b(Class cls, boolean z) {
        List list;
        if (!z && !Enum.class.isAssignableFrom(cls)) {
            ReflectionHelper.RecordHelper recordHelper = ReflectionHelper.f12746a;
            if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
                return true;
            }
        }
        if (z) {
            list = this.f12679c;
        } else {
            list = this.f;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((ExclusionStrategy) it.next()).a()) {
                return true;
            }
        }
        return false;
    }

    public final Object clone() {
        try {
            return (Excluder) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }
}
