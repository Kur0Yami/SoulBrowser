package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgvi extends zzgvm {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Set f8264c;
    public final /* synthetic */ Set f;

    public zzgvi(Set set, Set set2) {
        this.f8264c = set;
        this.f = set2;
    }

    @Override // com.google.android.gms.internal.ads.zzgvm, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: a */
    public final zzgvr iterator() {
        return new zzgvh(this, this.f8264c, this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzgvm
    public final int c() {
        int size;
        int size2;
        Set set = this.f8264c;
        if (set instanceof zzgvm) {
            size = ((zzgvm) set).c();
        } else {
            size = set.size();
        }
        Set set2 = this.f;
        if (set2 instanceof zzgvm) {
            size2 = ((zzgvm) set2).c();
        } else {
            size2 = set2.size();
        }
        return Math.min(size, size2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (this.f8264c.contains(obj) && this.f.contains(obj)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (this.f8264c.containsAll(collection) && this.f.containsAll(collection)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return Collections.disjoint(this.f, this.f8264c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Iterator it = this.f8264c.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.f.contains(it.next())) {
                i++;
            }
        }
        return i;
    }
}
