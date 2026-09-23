package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Iterator;

/* loaded from: classes.dex */
final class zzgrv extends AbstractCollection {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgrt f8226c;

    public zzgrv(zzgrt zzgrtVar) {
        this.f8226c = zzgrtVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f8226c.f();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f8226c.b(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzgrt zzgrtVar = this.f8226c;
        zzgrtVar.getClass();
        return new zzgrh(zzgrtVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f8226c.i;
    }
}
