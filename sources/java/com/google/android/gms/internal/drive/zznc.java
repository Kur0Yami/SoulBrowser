package com.google.android.gms.internal.drive;

import java.util.Iterator;

/* loaded from: classes.dex */
final class zznc implements Iterator<String> {

    /* renamed from: c, reason: collision with root package name */
    public Iterator f10258c;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10258c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return (String) this.f10258c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
