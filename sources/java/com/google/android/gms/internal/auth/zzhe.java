package com.google.android.gms.internal.auth;

import j$.util.DesugarCollections;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@Deprecated
/* loaded from: classes.dex */
public final class zzhe extends AbstractList implements RandomAccess, zzff {

    /* renamed from: c, reason: collision with root package name */
    public final zzfe f9568c;

    public zzhe(zzfe zzfeVar) {
        this.f9568c = zzfeVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return this.f9568c.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zzhd(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new zzhc(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f9568c.f.size();
    }

    @Override // com.google.android.gms.internal.auth.zzff
    public final zzff zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.auth.zzff
    public final List zzg() {
        return DesugarCollections.unmodifiableList(this.f9568c.f);
    }
}
