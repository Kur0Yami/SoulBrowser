package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* loaded from: classes.dex */
abstract class zzgvp implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8265c;

    public zzgvp(Iterator it) {
        it.getClass();
        this.f8265c = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8265c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f8265c.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f8265c.remove();
    }
}
