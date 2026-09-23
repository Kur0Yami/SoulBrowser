package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class zzgrq extends AbstractCollection {

    /* renamed from: c, reason: collision with root package name */
    public final Object f8225c;
    public Collection f;
    public final zzgrq g;
    public final Collection h;
    public final /* synthetic */ zzgrt i;

    public zzgrq(zzgrt zzgrtVar, Object obj, List list, zzgrq zzgrqVar) {
        Collection collection;
        this.i = zzgrtVar;
        this.f8225c = obj;
        this.f = list;
        this.g = zzgrqVar;
        if (zzgrqVar == null) {
            collection = null;
        } else {
            collection = zzgrqVar.f;
        }
        this.h = collection;
    }

    public final void a() {
        zzgrq zzgrqVar = this.g;
        if (zzgrqVar != null) {
            zzgrqVar.a();
            if (zzgrqVar.f != this.h) {
                throw new ConcurrentModificationException();
            }
            return;
        }
        if (this.f.isEmpty()) {
            Collection collection = (Collection) this.i.h.get(this.f8225c);
            if (collection != null) {
                this.f = collection;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        a();
        boolean isEmpty = this.f.isEmpty();
        boolean add = this.f.add(obj);
        if (add) {
            this.i.i++;
            if (isEmpty) {
                c();
                return true;
            }
        }
        return add;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = this.f.addAll(collection);
        if (addAll) {
            this.i.i += this.f.size() - size;
            if (size == 0) {
                c();
                return true;
            }
            return addAll;
        }
        return addAll;
    }

    public final void c() {
        zzgrq zzgrqVar = this.g;
        if (zzgrqVar != null) {
            zzgrqVar.c();
        } else {
            this.i.h.put(this.f8225c, this.f);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.f.clear();
        this.i.i -= size;
        zzb();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        a();
        return this.f.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        a();
        return this.f.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        a();
        return this.f.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        a();
        return this.f.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        a();
        return new zzgrp(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        a();
        boolean remove = this.f.remove(obj);
        if (remove) {
            zzgrt zzgrtVar = this.i;
            zzgrtVar.i--;
            zzb();
        }
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean removeAll = this.f.removeAll(collection);
        if (removeAll) {
            this.i.i += this.f.size() - size;
            zzb();
        }
        return removeAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean retainAll = this.f.retainAll(collection);
        if (retainAll) {
            this.i.i += this.f.size() - size;
            zzb();
        }
        return retainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        a();
        return this.f.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        a();
        return this.f.toString();
    }

    public final void zzb() {
        zzgrq zzgrqVar = this.g;
        if (zzgrqVar != null) {
            zzgrqVar.zzb();
        } else if (this.f.isEmpty()) {
            this.i.h.remove(this.f8225c);
        }
    }
}
