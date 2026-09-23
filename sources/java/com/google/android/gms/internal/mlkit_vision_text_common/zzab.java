package com.google.android.gms.internal.mlkit_vision_text_common;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
final class zzab extends zzbx {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzad f11121c;

    public zzab(zzad zzadVar) {
        this.f11121c = zzadVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbx
    public final Map a() {
        return this.f11121c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbx, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Set entrySet = this.f11121c.h.entrySet();
        entrySet.getClass();
        try {
            return entrySet.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzac(this.f11121c);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbx, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Object obj2;
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Objects.requireNonNull(entry);
        Object key = entry.getKey();
        Map map = this.f11121c.i.g;
        map.getClass();
        try {
            obj2 = ((zzba) map).remove(key);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection != null) {
            collection.size();
            collection.clear();
            return true;
        }
        return true;
    }
}
