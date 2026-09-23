package com.google.android.gms.internal.auth;

import java.util.Iterator;

/* loaded from: classes.dex */
final class zzhd implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f9567c;

    public zzhd(zzhe zzheVar) {
        this.f9567c = zzheVar.f9568c.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f9567c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f9567c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
