package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes.dex */
final class zzgrl extends zzgro implements NavigableSet {
    public final /* synthetic */ zzgrt h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgrl(zzgrt zzgrtVar, NavigableMap navigableMap) {
        super(zzgrtVar, navigableMap);
        Objects.requireNonNull(zzgrtVar);
        this.h = zzgrtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgro
    public final /* synthetic */ SortedMap a() {
        return (NavigableMap) ((SortedMap) this.f8258c);
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f8258c)).ceilingKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return ((zzgrj) descendingSet()).iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new zzgrl(this.h, ((NavigableMap) ((SortedMap) this.f8258c)).descendingMap());
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f8258c)).floorKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgro, java.util.SortedSet, java.util.NavigableSet
    public final /* synthetic */ SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f8258c)).higherKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f8258c)).lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        zzgri zzgriVar = (zzgri) iterator();
        if (zzgriVar.hasNext()) {
            Object next = zzgriVar.next();
            zzgriVar.remove();
            return next;
        }
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        Iterator descendingIterator = descendingIterator();
        if (descendingIterator.hasNext()) {
            Object next = descendingIterator.next();
            descendingIterator.remove();
            return next;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgro, java.util.SortedSet, java.util.NavigableSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzgro, java.util.SortedSet, java.util.NavigableSet
    public final /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        return new zzgrl(this.h, ((NavigableMap) ((SortedMap) this.f8258c)).headMap(obj, z));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return new zzgrl(this.h, ((NavigableMap) ((SortedMap) this.f8258c)).subMap(obj, z, obj2, z2));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        return new zzgrl(this.h, ((NavigableMap) ((SortedMap) this.f8258c)).tailMap(obj, z));
    }
}
