package com.google.firebase.encoders;

import j$.util.DesugarCollections;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class FieldDescriptor {

    /* renamed from: a, reason: collision with root package name */
    public final String f12637a;
    public final Map b;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final String f12638a;
        public HashMap b = null;

        public Builder(String str) {
            this.f12638a = str;
        }

        public final FieldDescriptor a() {
            Map unmodifiableMap;
            if (this.b == null) {
                unmodifiableMap = Collections.EMPTY_MAP;
            } else {
                unmodifiableMap = DesugarCollections.unmodifiableMap(new HashMap(this.b));
            }
            return new FieldDescriptor(this.f12638a, unmodifiableMap);
        }

        public final void b(Annotation annotation) {
            if (this.b == null) {
                this.b = new HashMap();
            }
            this.b.put(annotation.annotationType(), annotation);
        }
    }

    public FieldDescriptor(String str, Map map) {
        this.f12637a = str;
        this.b = map;
    }

    public static Builder a(String str) {
        return new Builder(str);
    }

    public static FieldDescriptor c(String str) {
        return new FieldDescriptor(str, Collections.EMPTY_MAP);
    }

    public final Annotation b(Class cls) {
        return (Annotation) this.b.get(cls);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FieldDescriptor)) {
            return false;
        }
        FieldDescriptor fieldDescriptor = (FieldDescriptor) obj;
        if (this.f12637a.equals(fieldDescriptor.f12637a) && this.b.equals(fieldDescriptor.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f12637a.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f12637a + ", properties=" + this.b.values() + "}";
    }
}
