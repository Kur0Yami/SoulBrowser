package com.google.android.gms.internal.mlkit_vision_common;

import java.util.Iterator;

/* loaded from: classes3.dex */
final class zzx extends zzs {
    public final transient zzr g;
    public final transient zzp h;

    public zzx(zzr zzrVar, zzp zzpVar) {
        this.g = zzrVar;
        this.h = zzpVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int a(Object[] objArr) {
        return this.h.a(objArr);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (this.g.get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    /* renamed from: i */
    public final zzab iterator() {
        return this.h.listIterator(0);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzs, com.google.android.gms.internal.mlkit_vision_common.zzl, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.h.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.g.size();
    }
}
