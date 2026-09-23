package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class zzgss extends zzgsu implements Collection {
    @Override // com.google.android.gms.internal.ads.zzgsu
    public /* bridge */ /* synthetic */ Object a() {
        throw null;
    }

    public boolean add(Object obj) {
        return c().add(obj);
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        return c().addAll(collection);
    }

    public abstract Collection c();

    @Override // java.util.Collection
    public final void clear() {
        c().clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return c().contains(obj);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        return c().containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return c().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return c().iterator();
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        return c().remove(obj);
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        return c().removeAll(collection);
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        return c().retainAll(collection);
    }

    @Override // java.util.Collection
    public final int size() {
        return c().size();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return c().toArray();
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return c().toArray(objArr);
    }
}
