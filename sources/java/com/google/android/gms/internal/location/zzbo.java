package com.google.android.gms.internal.location;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
abstract class zzbo<E> extends zzbv<E> {

    /* renamed from: c, reason: collision with root package name */
    public final int f10358c;
    public int f;

    public zzbo(int i, int i2) {
        if (i2 >= 0 && i2 <= i) {
            this.f10358c = i;
            this.f = i2;
            return;
        }
        throw new IndexOutOfBoundsException(zzbm.c(i2, i, "index"));
    }

    public abstract Object a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f < this.f10358c;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i = this.f;
            this.f = i + 1;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i = this.f - 1;
            this.f = i;
            return a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f - 1;
    }
}
