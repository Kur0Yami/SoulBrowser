package com.google.android.gms.internal.mlkit_common;

import java.util.Iterator;

/* loaded from: classes3.dex */
final class zzao extends zzaj {
    public final transient zzai g;
    public final transient zzaf h;

    public zzao(zzai zzaiVar, zzaf zzafVar) {
        this.g = zzaiVar;
        this.h = zzafVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int a(Object[] objArr) {
        return this.h.a(objArr);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (this.g.get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    /* renamed from: i */
    public final zzas iterator() {
        return this.h.listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj, com.google.android.gms.internal.mlkit_common.zzab, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.h.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.g.size();
    }
}
