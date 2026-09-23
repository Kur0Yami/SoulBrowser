package com.google.gson;

import j$.util.Objects;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class FieldAttributes {

    /* renamed from: a, reason: collision with root package name */
    public final Field f12660a;

    public FieldAttributes(Field field) {
        Objects.requireNonNull(field);
        this.f12660a = field;
    }

    public final String toString() {
        return this.f12660a.toString();
    }
}
