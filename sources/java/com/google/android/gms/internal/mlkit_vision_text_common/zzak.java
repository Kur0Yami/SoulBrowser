package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class zzak extends zzai implements List {
    public final /* synthetic */ zzal j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzak(zzal zzalVar, Object obj, List list, zzai zzaiVar) {
        super(zzalVar, obj, list, zzaiVar);
        this.j = zzalVar;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        zzb();
        boolean isEmpty = this.f.isEmpty();
        ((List) this.f).add(i, obj);
        if (isEmpty) {
            a();
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
            this.f.size();
            if (size == 0) {
                a();
                return true;
            }
            return addAll;
        }
        return addAll;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzb();
        return ((List) this.f).get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        zzb();
        return ((List) this.f).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        zzb();
        return ((List) this.f).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        zzb();
        return new zzaj(this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        zzb();
        Object remove = ((List) this.f).remove(i);
        c();
        return remove;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        zzb();
        return ((List) this.f).set(i, obj);
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        zzb();
        List subList = ((List) this.f).subList(i, i2);
        zzai zzaiVar = this.g;
        if (zzaiVar == null) {
            zzaiVar = this;
        }
        boolean z = subList instanceof RandomAccess;
        Object obj = this.f11125c;
        zzal zzalVar = this.j;
        if (z) {
            return new zzak(zzalVar, obj, subList, zzaiVar);
        }
        return new zzak(zzalVar, obj, subList, zzaiVar);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        zzb();
        return new zzaj(this, i);
    }
}
