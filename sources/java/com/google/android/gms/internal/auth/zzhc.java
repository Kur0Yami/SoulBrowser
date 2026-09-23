package com.google.android.gms.internal.auth;

import java.util.ListIterator;

/* loaded from: classes.dex */
final class zzhc implements ListIterator {

    /* renamed from: c, reason: collision with root package name */
    public final ListIterator f9566c;

    public zzhc(zzhe zzheVar, int i) {
        this.f9566c = zzheVar.f9568c.listIterator(i);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f9566c.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f9566c.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f9566c.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f9566c.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.f9566c.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f9566c.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
