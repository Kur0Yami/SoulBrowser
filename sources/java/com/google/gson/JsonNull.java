package com.google.gson;

/* loaded from: classes3.dex */
public final class JsonNull extends JsonElement {

    /* renamed from: c, reason: collision with root package name */
    public static final JsonNull f12670c = new Object();

    public final boolean equals(Object obj) {
        return obj instanceof JsonNull;
    }

    public final int hashCode() {
        return JsonNull.class.hashCode();
    }
}
