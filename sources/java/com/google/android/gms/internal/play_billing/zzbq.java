package com.google.android.gms.internal.play_billing;

import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
abstract class zzbq extends zzcl {

    /* renamed from: c, reason: collision with root package name */
    public final int f11456c;
    public int f;

    public zzbq(int i, int i2) {
        zzbj.b(i2, i);
        this.f11456c = i;
        this.f = i2;
    }

    public abstract Object a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f < this.f11456c;
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
