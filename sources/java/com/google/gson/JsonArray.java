package com.google.gson;

import android.support.v4.media.a;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class JsonArray extends JsonElement implements Iterable<JsonElement> {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f12669c = new ArrayList();

    @Override // com.google.gson.JsonElement
    public final boolean a() {
        return r().a();
    }

    @Override // com.google.gson.JsonElement
    public final float c() {
        return r().c();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof JsonArray) || !((JsonArray) obj).f12669c.equals(this.f12669c)) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // com.google.gson.JsonElement
    public final int g() {
        return r().g();
    }

    public final int hashCode() {
        return this.f12669c.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<JsonElement> iterator() {
        return this.f12669c.iterator();
    }

    @Override // com.google.gson.JsonElement
    public final long m() {
        return r().m();
    }

    @Override // com.google.gson.JsonElement
    public final String p() {
        return r().p();
    }

    public final JsonElement q(int i) {
        return (JsonElement) this.f12669c.get(i);
    }

    public final JsonElement r() {
        ArrayList arrayList = this.f12669c;
        int size = arrayList.size();
        if (size == 1) {
            return (JsonElement) arrayList.get(0);
        }
        throw new IllegalStateException(a.e(size, "Array must have size 1, but has size "));
    }
}
