package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes.dex */
final class zzgrk extends zzgrn implements NavigableMap {
    public final /* synthetic */ zzgrt l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgrk(zzgrt zzgrtVar, NavigableMap navigableMap) {
        super(zzgrtVar, navigableMap);
        Objects.requireNonNull(zzgrtVar);
        this.l = zzgrtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgrn, com.google.android.gms.internal.ads.zzguj
    public final Set b() {
        return new zzgrl(this.l, (NavigableMap) ((SortedMap) this.h));
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry ceilingEntry = ((NavigableMap) ((SortedMap) this.h)).ceilingEntry(obj);
        if (ceilingEntry == null) {
            return null;
        }
        return c(ceilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.h)).ceilingKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgrn
    /* renamed from: d */
    public final SortedSet b() {
        return new zzgrl(this.l, (NavigableMap) ((SortedMap) this.h));
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new zzgrk(this.l, ((NavigableMap) ((SortedMap) this.h)).descendingMap());
    }

    @Override // com.google.android.gms.internal.ads.zzgrn
    /* renamed from: e */
    public final /* synthetic */ SortedSet keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // com.google.android.gms.internal.ads.zzgrn
    public final /* synthetic */ SortedMap f() {
        return (NavigableMap) ((SortedMap) this.h);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry firstEntry = ((NavigableMap) ((SortedMap) this.h)).firstEntry();
        if (firstEntry == null) {
            return null;
        }
        return c(firstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry floorEntry = ((NavigableMap) ((SortedMap) this.h)).floorEntry(obj);
        if (floorEntry == null) {
            return null;
        }
        return c(floorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.h)).floorKey(obj);
    }

    public final AbstractMap.SimpleImmutableEntry g(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        zzgrt zzgrtVar = this.l;
        Collection e = zzgrtVar.e();
        e.addAll((Collection) entry.getValue());
        it.remove();
        return new AbstractMap.SimpleImmutableEntry(entry.getKey(), zzgrtVar.c(e));
    }

    @Override // com.google.android.gms.internal.ads.zzgrn, java.util.SortedMap, java.util.NavigableMap
    public final /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry higherEntry = ((NavigableMap) ((SortedMap) this.h)).higherEntry(obj);
        if (higherEntry == null) {
            return null;
        }
        return c(higherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.h)).higherKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgrn, com.google.android.gms.internal.ads.zzgrg, com.google.android.gms.internal.ads.zzguj, java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry lastEntry = ((NavigableMap) ((SortedMap) this.h)).lastEntry();
        if (lastEntry == null) {
            return null;
        }
        return c(lastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry lowerEntry = ((NavigableMap) ((SortedMap) this.h)).lowerEntry(obj);
        if (lowerEntry == null) {
            return null;
        }
        return c(lowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.h)).lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return g(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return g(((zzguj) descendingMap()).entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.ads.zzgrn, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzgrn, java.util.SortedMap, java.util.NavigableMap
    public final /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z) {
        return new zzgrk(this.l, ((NavigableMap) ((SortedMap) this.h)).headMap(obj, z));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return new zzgrk(this.l, ((NavigableMap) ((SortedMap) this.h)).subMap(obj, z, obj2, z2));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z) {
        return new zzgrk(this.l, ((NavigableMap) ((SortedMap) this.h)).tailMap(obj, z));
    }
}
