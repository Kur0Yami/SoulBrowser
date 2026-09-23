package com.google.android.gms.internal.drive;

import java.util.ListIterator;

/* loaded from: classes.dex */
final class zznb implements ListIterator<String> {

    /* renamed from: c, reason: collision with root package name */
    public ListIterator f10257c;

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f10257c.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f10257c.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return (String) this.f10257c.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f10257c.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return (String) this.f10257c.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f10257c.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
