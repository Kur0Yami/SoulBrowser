package com.google.android.gms.internal.drive;

import j$.util.DesugarCollections;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class zzna extends AbstractList<String> implements zzkz, RandomAccess {

    /* renamed from: c, reason: collision with root package name */
    public final zzky f10256c;

    public zzna(zzky zzkyVar) {
        this.f10256c = zzkyVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f10256c.get(i);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator, java.lang.Object, com.google.android.gms.internal.drive.zznc] */
    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        ?? obj = new Object();
        obj.f10258c = this.f10256c.iterator();
        return obj;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ListIterator, com.google.android.gms.internal.drive.zznb, java.lang.Object] */
    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        ?? obj = new Object();
        obj.f10257c = this.f10256c.listIterator(i);
        return obj;
    }

    @Override // com.google.android.gms.internal.drive.zzkz
    public final List n() {
        return DesugarCollections.unmodifiableList(this.f10256c.f);
    }

    @Override // com.google.android.gms.internal.drive.zzkz
    public final zzkz o() {
        return this;
    }

    @Override // com.google.android.gms.internal.drive.zzkz
    public final Object q0(int i) {
        return this.f10256c.f.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10256c.size();
    }
}
