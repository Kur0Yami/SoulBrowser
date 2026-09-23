package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* loaded from: classes.dex */
class zzgrn extends zzgrg implements SortedMap {
    public SortedSet j;
    public final /* synthetic */ zzgrt k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgrn(zzgrt zzgrtVar, SortedMap sortedMap) {
        super(zzgrtVar, sortedMap);
        Objects.requireNonNull(zzgrtVar);
        this.k = zzgrtVar;
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return f().comparator();
    }

    @Override // com.google.android.gms.internal.ads.zzguj
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public SortedSet b() {
        return new zzgro(this.k, f());
    }

    @Override // com.google.android.gms.internal.ads.zzgrg, com.google.android.gms.internal.ads.zzguj, java.util.AbstractMap, java.util.Map
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public SortedSet keySet() {
        SortedSet sortedSet = this.j;
        if (sortedSet == null) {
            SortedSet b = b();
            this.j = b;
            return b;
        }
        return sortedSet;
    }

    public SortedMap f() {
        return (SortedMap) this.h;
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return f().firstKey();
    }

    public SortedMap headMap(Object obj) {
        return new zzgrn(this.k, f().headMap(obj));
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return f().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new zzgrn(this.k, f().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new zzgrn(this.k, f().tailMap(obj));
    }
}
