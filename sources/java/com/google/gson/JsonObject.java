package com.google.gson;

import com.google.gson.internal.LinkedTreeMap;

/* loaded from: classes3.dex */
public final class JsonObject extends JsonElement {

    /* renamed from: c, reason: collision with root package name */
    public final LinkedTreeMap f12671c = new LinkedTreeMap(false);

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof JsonObject) || !((JsonObject) obj).f12671c.equals(this.f12671c)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final int hashCode() {
        return this.f12671c.hashCode();
    }

    public final void q(String str, JsonElement jsonElement) {
        this.f12671c.put(str, jsonElement);
    }

    public final JsonElement r(String str) {
        return (JsonElement) this.f12671c.get(str);
    }
}
