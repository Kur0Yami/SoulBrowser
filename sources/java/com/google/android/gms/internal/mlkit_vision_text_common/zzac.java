package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzac implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f11122c;
    public Collection f;
    public final /* synthetic */ zzad g;

    public zzac(zzad zzadVar) {
        this.g = zzadVar;
        this.f11122c = zzadVar.h.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11122c.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.f11122c.next();
        this.f = (Collection) entry.getValue();
        Object key = entry.getKey();
        return new zzbg(this.g.i.f((Collection) entry.getValue(), key), key);
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        if (this.f != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            this.f11122c.remove();
            this.f.size();
            this.f.clear();
            this.f = null;
            return;
        }
        throw new IllegalStateException("no calls to next() since the last call to remove()");
    }
}
