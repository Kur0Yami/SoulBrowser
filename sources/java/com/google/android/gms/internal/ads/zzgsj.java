package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgsj extends AbstractCollection {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgsk f8234c;

    public /* synthetic */ zzgsj(zzgsk zzgskVar) {
        this.f8234c = zzgskVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f8234c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzgsk zzgskVar = this.f8234c;
        Map e = zzgskVar.e();
        if (e != null) {
            return e.values().iterator();
        }
        return new zzgse(zzgskVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f8234c.size();
    }
}
