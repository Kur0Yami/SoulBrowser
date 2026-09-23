package com.google.android.gms.internal.measurement;

import java.util.ListIterator;

/* loaded from: classes3.dex */
final class zzmo implements ListIterator {

    /* renamed from: c, reason: collision with root package name */
    public final ListIterator f10407c;

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f10407c.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f10407c.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f10407c.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f10407c.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.f10407c.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f10407c.previousIndex();
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
