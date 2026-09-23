package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgri implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public Map.Entry f8223c;
    public final /* synthetic */ Iterator f;
    public final /* synthetic */ zzgrj g;

    public zzgri(zzgrj zzgrjVar, Iterator it) {
        this.f = it;
        this.g = zzgrjVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f.next();
        this.f8223c = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        if (this.f8223c != null) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.g("no calls to next() since the last call to remove()", z);
        Collection collection = (Collection) this.f8223c.getValue();
        this.f.remove();
        this.g.f.i -= collection.size();
        collection.clear();
        this.f8223c = null;
    }
}
