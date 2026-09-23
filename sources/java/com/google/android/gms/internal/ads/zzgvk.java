package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgvk extends zzgvj implements SortedSet {
    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((SortedSet) this.f8229c).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.f8229c.iterator();
        it.getClass();
        zzgqb zzgqbVar = this.f;
        zzgqbVar.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (zzgqbVar.zza(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.android.gms.internal.ads.zzgsa] */
    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new zzgsa(((SortedSet) this.f8229c).headSet(obj), this.f);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSet = (SortedSet) this.f8229c;
        while (true) {
            Object last = sortedSet.last();
            if (this.f.zza(last)) {
                return last;
            }
            sortedSet = sortedSet.headSet(last);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.android.gms.internal.ads.zzgsa] */
    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new zzgsa(((SortedSet) this.f8229c).subSet(obj, obj2), this.f);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.android.gms.internal.ads.zzgsa] */
    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new zzgsa(((SortedSet) this.f8229c).tailSet(obj), this.f);
    }
}
