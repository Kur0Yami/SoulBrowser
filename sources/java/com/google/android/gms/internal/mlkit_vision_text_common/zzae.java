package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzae implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public Map.Entry f11123c;
    public final /* synthetic */ Iterator f;

    public zzae(zzaf zzafVar, Iterator it) {
        this.f = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f.next();
        this.f11123c = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        Map.Entry entry = this.f11123c;
        if (entry != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Collection collection = (Collection) entry.getValue();
            this.f.remove();
            collection.size();
            collection.clear();
            this.f11123c = null;
            return;
        }
        throw new IllegalStateException("no calls to next() since the last call to remove()");
    }
}
