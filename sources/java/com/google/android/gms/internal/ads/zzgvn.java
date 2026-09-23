package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes.dex */
public final class zzgvn {
    public static zzgvm a(Set set, zzgtn zzgtnVar) {
        zzgqa.h(set, "set1");
        zzgqa.h(zzgtnVar, "set2");
        return new zzgvi(set, zzgtnVar);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzgsa, java.util.Set] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzgsa, java.util.Set] */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.gms.internal.ads.zzgsa, java.util.Set] */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.google.android.gms.internal.ads.zzgsa, java.util.Set] */
    public static Set b(Set set, zzgqb zzgqbVar) {
        if (set instanceof SortedSet) {
            Collection collection = (SortedSet) set;
            if (collection instanceof zzgvj) {
                zzgvj zzgvjVar = (zzgvj) collection;
                zzgqb zzgqbVar2 = zzgvjVar.f;
                zzgqbVar2.getClass();
                return new zzgsa((SortedSet) zzgvjVar.f8229c, new zzgqc(Arrays.asList(zzgqbVar2, zzgqbVar)));
            }
            return new zzgsa(collection, zzgqbVar);
        }
        if (set instanceof zzgvj) {
            zzgvj zzgvjVar2 = (zzgvj) set;
            zzgqb zzgqbVar3 = zzgvjVar2.f;
            zzgqbVar3.getClass();
            return new zzgsa((Set) zzgvjVar2.f8229c, new zzgqc(Arrays.asList(zzgqbVar3, zzgqbVar)));
        }
        set.getClass();
        return new zzgsa(set, zzgqbVar);
    }

    public static int c(Set set) {
        int i;
        int i2 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i2 += i;
        }
        return i2;
    }

    public static boolean d(Set set, Object obj) {
        if (set != obj) {
            if (obj instanceof Set) {
                Set set2 = (Set) obj;
                try {
                    if (set.size() == set2.size()) {
                        if (set.containsAll(set2)) {
                            return true;
                        }
                        return false;
                    }
                    return false;
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public static boolean e(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof zzguu) {
            collection = ((zzguu) collection).zza();
        }
        boolean z = false;
        if ((collection instanceof Set) && collection.size() > set.size()) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            z |= set.remove(it2.next());
        }
        return z;
    }
}
