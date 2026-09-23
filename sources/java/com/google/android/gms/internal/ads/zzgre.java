package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
final class zzgre extends zzgug {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgrg f8220c;

    public zzgre(zzgrg zzgrgVar) {
        this.f8220c = zzgrgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgug
    public final Map a() {
        return this.f8220c;
    }

    @Override // com.google.android.gms.internal.ads.zzgug, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Set entrySet = this.f8220c.h.entrySet();
        entrySet.getClass();
        try {
            return entrySet.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzgrf(this.f8220c);
    }

    @Override // com.google.android.gms.internal.ads.zzgug, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Object obj2;
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Objects.requireNonNull(entry);
        Object key = entry.getKey();
        zzgrt zzgrtVar = this.f8220c.i;
        try {
            obj2 = zzgrtVar.h.remove(key);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzgrtVar.i -= size;
            return true;
        }
        return true;
    }
}
