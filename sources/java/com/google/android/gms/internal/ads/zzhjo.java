package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* loaded from: classes.dex */
final class zzhjo implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8597c;
    public final Iterator f;

    public /* synthetic */ zzhjo(Iterator it, Iterator it2) {
        this.f8597c = it;
        this.f = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f8597c.hasNext() && !this.f.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Iterator it = this.f8597c;
        if (it.hasNext()) {
            return it.next();
        }
        return this.f.next();
    }
}
