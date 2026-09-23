package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzgrs extends zzgrq implements List {
    public final /* synthetic */ zzgrt j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgrs(zzgrt zzgrtVar, Object obj, List list, zzgrq zzgrqVar) {
        super(zzgrtVar, obj, list, zzgrqVar);
        this.j = zzgrtVar;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        a();
        boolean isEmpty = this.f.isEmpty();
        ((List) this.f).add(i, obj);
        this.j.i++;
        if (isEmpty) {
            c();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = ((List) this.f).addAll(i, collection);
        if (addAll) {
            this.j.i += this.f.size() - size;
            if (size == 0) {
                c();
                return true;
            }
            return addAll;
        }
        return addAll;
    }

    @Override // java.util.List
    public final Object get(int i) {
        a();
        return ((List) this.f).get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        a();
        return ((List) this.f).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        a();
        return ((List) this.f).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        a();
        return new zzgrr(this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        a();
        Object remove = ((List) this.f).remove(i);
        zzgrt zzgrtVar = this.j;
        zzgrtVar.i--;
        zzb();
        return remove;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        a();
        return ((List) this.f).set(i, obj);
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        a();
        List subList = ((List) this.f).subList(i, i2);
        zzgrq zzgrqVar = this.g;
        if (zzgrqVar == null) {
            zzgrqVar = this;
        }
        zzgrt zzgrtVar = this.j;
        zzgrtVar.getClass();
        boolean z = subList instanceof RandomAccess;
        Object obj = this.f8225c;
        if (z) {
            return new zzgrs(zzgrtVar, obj, subList, zzgrqVar);
        }
        return new zzgrs(zzgrtVar, obj, subList, zzgrqVar);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        a();
        return new zzgrr(this, i);
    }
}
