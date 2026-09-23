package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgsh extends AbstractSet {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgsk f8232c;

    public /* synthetic */ zzgsh(zzgsk zzgskVar) {
        this.f8232c = zzgskVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f8232c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f8232c.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzgsk zzgskVar = this.f8232c;
        Map e = zzgskVar.e();
        if (e != null) {
            return e.keySet().iterator();
        }
        return new zzgsc(zzgskVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        zzgsk zzgskVar = this.f8232c;
        Map e = zzgskVar.e();
        if (e != null) {
            return e.keySet().remove(obj);
        }
        if (zzgskVar.j(obj) == zzgsk.n) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8232c.size();
    }
}
