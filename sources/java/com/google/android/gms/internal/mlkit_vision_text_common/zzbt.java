package com.google.android.gms.internal.mlkit_vision_text_common;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes3.dex */
final class zzbt extends AbstractSequentialList implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final List f11139c;
    public final zzu f;

    public zzbt(List list, zzu zzuVar) {
        list.getClass();
        this.f11139c = list;
        this.f = zzuVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f11139c.isEmpty();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new zzbs(this, this.f11139c.listIterator(i));
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        this.f11139c.subList(i, i2).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11139c.size();
    }
}
