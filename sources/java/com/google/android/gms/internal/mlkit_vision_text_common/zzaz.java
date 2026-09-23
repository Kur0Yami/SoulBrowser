package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzaz extends AbstractCollection {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzba f11131c;

    public zzaz(zzba zzbaVar) {
        this.f11131c = zzbaVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f11131c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzba zzbaVar = this.f11131c;
        Map d = zzbaVar.d();
        if (d != null) {
            return d.values().iterator();
        }
        return new zzat(zzbaVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f11131c.size();
    }
}
