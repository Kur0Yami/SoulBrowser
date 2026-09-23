package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class zzgst extends zzgsu implements Map {
    @Override // com.google.android.gms.internal.ads.zzgsu
    public /* bridge */ /* synthetic */ Object a() {
        throw null;
    }

    public abstract Map c();

    @Override // java.util.Map
    public final void clear() {
        c().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return c().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return c().containsValue(obj);
    }

    @Override // java.util.Map
    public Set entrySet() {
        return c().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (obj != this && !c().equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        return c().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return c().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return c().isEmpty();
    }

    @Override // java.util.Map
    public Set keySet() {
        return c().keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return c().put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        c().putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return c().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return c().size();
    }

    @Override // java.util.Map
    public final Collection values() {
        return c().values();
    }
}
