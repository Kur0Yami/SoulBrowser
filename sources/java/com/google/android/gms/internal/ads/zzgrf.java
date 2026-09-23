package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgrf implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8221c;
    public Collection f;
    public final /* synthetic */ zzgrg g;

    public zzgrf(zzgrg zzgrgVar) {
        Objects.requireNonNull(zzgrgVar);
        this.g = zzgrgVar;
        this.f8221c = zzgrgVar.h.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8221c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.f8221c.next();
        this.f = (Collection) entry.getValue();
        return this.g.c(entry);
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        if (this.f != null) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.g("no calls to next() since the last call to remove()", z);
        this.f8221c.remove();
        this.g.i.i -= this.f.size();
        this.f.clear();
        this.f = null;
    }
}
