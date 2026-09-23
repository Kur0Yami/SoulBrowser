package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzibk implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8921c;

    public zzibk(Iterator it) {
        this.f8921c = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8921c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.f8921c.next();
        if (entry.getValue() instanceof zzibl) {
            return new zzibj(entry);
        }
        return entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f8921c.remove();
    }
}
