package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzgsa extends AbstractCollection {

    /* renamed from: c, reason: collision with root package name */
    public final Collection f8229c;
    public final zzgqb f;

    public zzgsa(Collection collection, zzgqb zzgqbVar) {
        this.f8229c = collection;
        this.f = zzgqbVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        zzgqa.a(this.f.zza(obj));
        return this.f8229c.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            zzgqa.a(this.f.zza(it.next()));
        }
        return this.f8229c.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        Collection collection = this.f8229c;
        boolean z = collection instanceof RandomAccess;
        zzgqb zzgqbVar = this.f;
        if (z && (collection instanceof List)) {
            List list = (List) collection;
            zzgqbVar.getClass();
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object obj = list.get(i2);
                if (!zzgqbVar.zza(obj)) {
                    if (i2 > i) {
                        try {
                            list.set(i, obj);
                        } catch (IllegalArgumentException unused) {
                            zzgtr.b(list, zzgqbVar, i, i2);
                            return;
                        } catch (UnsupportedOperationException unused2) {
                            zzgtr.b(list, zzgqbVar, i, i2);
                            return;
                        }
                    }
                    i++;
                }
            }
            list.subList(i, list.size()).clear();
            return;
        }
        Iterator it = collection.iterator();
        zzgqbVar.getClass();
        while (it.hasNext()) {
            if (zzgqbVar.zza(it.next())) {
                it.remove();
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        boolean z;
        Collection collection = this.f8229c;
        collection.getClass();
        try {
            z = collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            z = false;
        }
        if (!z) {
            return false;
        }
        return this.f.zza(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        Iterator it = this.f8229c.iterator();
        zzgqb zzgqbVar = this.f;
        zzgqa.h(zzgqbVar, "predicate");
        int i = 0;
        while (it.hasNext()) {
            if (zzgqbVar.zza(it.next())) {
                if (i != -1) {
                    return false;
                }
                return true;
            }
            i++;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Iterator it = this.f8229c.iterator();
        it.getClass();
        zzgqb zzgqbVar = this.f;
        zzgqbVar.getClass();
        return new zzgts(it, zzgqbVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        if (contains(obj) && this.f8229c.remove(obj)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it = this.f8229c.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f.zza(next) && collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Iterator it = this.f8229c.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f.zza(next) && !collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        Iterator it = this.f8229c.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.f.zza(it.next())) {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return zzgud.a((zzgvr) iterator()).toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return zzgud.a((zzgvr) iterator()).toArray(objArr);
    }
}
