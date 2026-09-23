package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Iterator;

/* loaded from: classes3.dex */
abstract class zzcm implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f11143c;

    public zzcm(Iterator it) {
        it.getClass();
        this.f11143c = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11143c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f11143c.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f11143c.remove();
    }
}
