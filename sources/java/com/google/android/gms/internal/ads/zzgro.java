package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes.dex */
class zzgro extends zzgrj implements SortedSet {
    public final /* synthetic */ zzgrt g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgro(zzgrt zzgrtVar, SortedMap sortedMap) {
        super(zzgrtVar, sortedMap);
        Objects.requireNonNull(zzgrtVar);
        this.g = zzgrtVar;
    }

    public SortedMap a() {
        return (SortedMap) this.f8258c;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return a().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return a().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new zzgro(this.g, a().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return a().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new zzgro(this.g, a().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new zzgro(this.g, a().tailMap(obj));
    }
}
