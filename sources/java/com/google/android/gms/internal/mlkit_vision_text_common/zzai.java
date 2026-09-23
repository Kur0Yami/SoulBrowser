package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class zzai extends AbstractCollection {

    /* renamed from: c, reason: collision with root package name */
    public final Object f11125c;
    public Collection f;
    public final zzai g;
    public final Collection h;
    public final /* synthetic */ zzal i;

    public zzai(zzal zzalVar, Object obj, List list, zzai zzaiVar) {
        Collection collection;
        this.i = zzalVar;
        this.f11125c = obj;
        this.f = list;
        this.g = zzaiVar;
        if (zzaiVar == null) {
            collection = null;
        } else {
            collection = zzaiVar.f;
        }
        this.h = collection;
    }

    public final void a() {
        zzai zzaiVar = this.g;
        if (zzaiVar != null) {
            zzaiVar.a();
            return;
        }
        this.i.g.put(this.f11125c, this.f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        zzb();
        boolean isEmpty = this.f.isEmpty();
        boolean add = this.f.add(obj);
        if (add && isEmpty) {
            a();
            return true;
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
            this.f.size();
            if (size == 0) {
                a();
                return true;
            }
            return addAll;
        }
        return addAll;
    }

    public final void c() {
        zzai zzaiVar = this.g;
        if (zzaiVar != null) {
            zzaiVar.c();
        } else if (this.f.isEmpty()) {
            this.i.g.remove(this.f11125c);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        if (size() == 0) {
            return;
        }
        this.f.clear();
        c();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        zzb();
        return this.f.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        zzb();
        return this.f.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        zzb();
        return this.f.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        zzb();
        return this.f.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzb();
        return new zzah(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        zzb();
        boolean remove = this.f.remove(obj);
        if (remove) {
            c();
        }
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        size();
        boolean removeAll = this.f.removeAll(collection);
        if (removeAll) {
            this.f.size();
            c();
        }
        return removeAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        size();
        boolean retainAll = this.f.retainAll(collection);
        if (retainAll) {
            this.f.size();
            c();
        }
        return retainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        zzb();
        return this.f.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        zzb();
        return this.f.toString();
    }

    public final void zzb() {
        zzai zzaiVar = this.g;
        if (zzaiVar != null) {
            zzaiVar.zzb();
            if (zzaiVar.f != this.h) {
                throw new ConcurrentModificationException();
            }
            return;
        }
        if (this.f.isEmpty()) {
            Collection collection = (Collection) this.i.g.get(this.f11125c);
            if (collection != null) {
                this.f = collection;
            }
        }
    }
}
