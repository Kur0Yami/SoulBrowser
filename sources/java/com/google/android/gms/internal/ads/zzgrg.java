package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzgrg extends zzguj {
    public final transient Map h;
    public final /* synthetic */ zzgrt i;

    public zzgrg(zzgrt zzgrtVar, Map map) {
        Objects.requireNonNull(zzgrtVar);
        this.i = zzgrtVar;
        this.h = map;
    }

    @Override // com.google.android.gms.internal.ads.zzguj
    public final Set a() {
        return new zzgre(this);
    }

    public final AbstractMap.SimpleImmutableEntry c(Map.Entry entry) {
        Object key = entry.getKey();
        return new AbstractMap.SimpleImmutableEntry(key, this.i.d((Collection) entry.getValue(), key));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Map map = this.h;
        zzgrt zzgrtVar = this.i;
        if (map == zzgrtVar.h) {
            zzgrtVar.f();
            return;
        }
        zzgrf zzgrfVar = new zzgrf(this);
        while (zzgrfVar.hasNext()) {
            zzgrfVar.next();
            zzgrfVar.remove();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map map = this.h;
        map.getClass();
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this != obj && !this.h.equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Map map = this.h;
        map.getClass();
        try {
            obj2 = map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection == null) {
            return null;
        }
        return this.i.d(collection, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.h.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzguj, java.util.AbstractMap, java.util.Map
    public Set keySet() {
        zzgrt zzgrtVar = this.i;
        Set set = zzgrtVar.f8227c;
        if (set == null) {
            Set g = zzgrtVar.g();
            zzgrtVar.f8227c = g;
            return g;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object remove(Object obj) {
        Collection collection = (Collection) this.h.remove(obj);
        if (collection == null) {
            return null;
        }
        zzgrt zzgrtVar = this.i;
        Collection e = zzgrtVar.e();
        e.addAll(collection);
        zzgrtVar.i -= collection.size();
        collection.clear();
        return e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.h.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.h.toString();
    }
}
