package com.google.android.gms.internal.fido;

import j$.util.SortedSet;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;

/* loaded from: classes3.dex */
public abstract class zzck extends zzcf implements NavigableSet, zzda, SortedSet {
    public final transient Comparator h;
    public transient zzck i;

    public zzck(Comparator comparator) {
        this.h = comparator;
    }

    public static zzcv x(Comparator comparator) {
        if (zzcq.f10288c.equals(comparator)) {
            return zzcv.k;
        }
        zzdd zzddVar = zzcc.f;
        return new zzcv(zzct.i, comparator);
    }

    public final void addFirst(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final void addLast(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public Object ceiling(Object obj) {
        obj.getClass();
        zzbu zzbuVar = (zzbu) ((zzcv) w(obj, true)).j.listIterator(0);
        if (zzbuVar.hasNext()) {
            return zzbuVar.next();
        }
        return null;
    }

    @Override // java.util.SortedSet, com.google.android.gms.internal.fido.zzda
    public final Comparator comparator() {
        return this.h;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        zzck zzckVar = this.i;
        if (zzckVar == null) {
            zzck t = t();
            this.i = t;
            t.i = this;
            return t;
        }
        return zzckVar;
    }

    @Override // java.util.SortedSet
    public Object first() {
        return iterator().next();
    }

    @Override // java.util.NavigableSet
    public Object floor(Object obj) {
        obj.getClass();
        zzdc descendingIterator = u(obj, true).descendingIterator();
        if (descendingIterator.hasNext()) {
            return descendingIterator.next();
        }
        return null;
    }

    public final Object getFirst() {
        return first();
    }

    public final Object getLast() {
        return last();
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* synthetic */ java.util.SortedSet headSet(Object obj) {
        obj.getClass();
        return u(obj, false);
    }

    @Override // java.util.NavigableSet
    public Object higher(Object obj) {
        obj.getClass();
        zzbu zzbuVar = (zzbu) ((zzcv) w(obj, false)).j.listIterator(0);
        if (zzbuVar.hasNext()) {
            return zzbuVar.next();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.fido.zzcf, com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.SortedSet
    public Object last() {
        return ((zzbu) descendingIterator()).next();
    }

    @Override // java.util.NavigableSet
    public Object lower(Object obj) {
        obj.getClass();
        zzdc descendingIterator = u(obj, false).descendingIterator();
        if (descendingIterator.hasNext()) {
            return descendingIterator.next();
        }
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    public final Object removeFirst() {
        throw new UnsupportedOperationException();
    }

    public final Object removeLast() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        if (this.h.compare(obj, obj2) <= 0) {
            return v(obj, z, obj2, z2);
        }
        throw new IllegalArgumentException();
    }

    public abstract zzck t();

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* synthetic */ java.util.SortedSet tailSet(Object obj) {
        obj.getClass();
        return w(obj, true);
    }

    public abstract zzck u(Object obj, boolean z);

    public abstract zzck v(Object obj, boolean z, Object obj2, boolean z2);

    public abstract zzck w(Object obj, boolean z);

    @Override // java.util.NavigableSet
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public abstract zzdc descendingIterator();

    @Override // java.util.NavigableSet
    public final /* synthetic */ NavigableSet headSet(Object obj, boolean z) {
        obj.getClass();
        return u(obj, z);
    }

    @Override // java.util.NavigableSet
    public final /* synthetic */ NavigableSet tailSet(Object obj, boolean z) {
        obj.getClass();
        return w(obj, z);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final java.util.SortedSet subSet(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        if (this.h.compare(obj, obj2) <= 0) {
            return v(obj, true, obj2, false);
        }
        throw new IllegalArgumentException();
    }
}
