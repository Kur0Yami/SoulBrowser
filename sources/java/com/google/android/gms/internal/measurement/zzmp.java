package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* loaded from: classes3.dex */
final class zzmp implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f10408c;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10408c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f10408c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
