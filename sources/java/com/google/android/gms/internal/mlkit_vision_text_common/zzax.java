package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzax extends AbstractSet {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzba f11129c;

    public zzax(zzba zzbaVar) {
        this.f11129c = zzbaVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f11129c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f11129c.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzba zzbaVar = this.f11129c;
        Map d = zzbaVar.d();
        if (d != null) {
            return d.keySet().iterator();
        }
        return new zzar(zzbaVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        zzba zzbaVar = this.f11129c;
        Map d = zzbaVar.d();
        if (d != null) {
            return d.keySet().remove(obj);
        }
        if (zzbaVar.j(obj) == zzba.n) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f11129c.size();
    }
}
