package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class zzgrh implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8222c;
    public Collection f = null;
    public Iterator g = zzgtu.f8252c;
    public final /* synthetic */ zzgrt h;

    public zzgrh(zzgrt zzgrtVar) {
        this.h = zzgrtVar;
        this.f8222c = zzgrtVar.h.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f8222c.hasNext() && !this.g.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.g.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f8222c.next();
            entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f = collection;
            this.g = collection.iterator();
        }
        return this.g.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.g.remove();
        Collection collection = this.f;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.f8222c.remove();
        }
        zzgrt zzgrtVar = this.h;
        zzgrtVar.i--;
    }
}
