package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzad extends zzca {
    public final transient Map h;
    public final /* synthetic */ zzal i;

    public zzad(zzal zzalVar, Map map) {
        this.i = zzalVar;
        this.h = map;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzca
    public final Set a() {
        return new zzab(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Map map = this.i.g;
        if (this.h == map) {
            zzba zzbaVar = (zzba) map;
            Iterator it = zzbaVar.values().iterator();
            while (it.hasNext()) {
                ((Collection) it.next()).clear();
            }
            zzbaVar.clear();
            return;
        }
        zzac zzacVar = new zzac(this);
        while (zzacVar.hasNext()) {
            zzacVar.next();
            zzacVar.remove();
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
        return this.i.f(collection, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.h.hashCode();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzca, java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return this.i.zzo();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        Collection collection = (Collection) this.h.remove(obj);
        if (collection == null) {
            return null;
        }
        Collection e = this.i.e();
        e.addAll(collection);
        collection.size();
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
