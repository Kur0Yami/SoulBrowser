package com.google.android.gms.internal.play_billing;

import java.util.Iterator;

/* loaded from: classes3.dex */
final class zzcg extends zzca {
    public final transient zzbz g;
    public final transient zzbw h;

    public zzcg(zzbz zzbzVar, zzbw zzbwVar) {
        this.g = zzbzVar;
        this.h = zzbwVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    public final int a(Object[] objArr) {
        return this.h.a(objArr);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (this.g.get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.play_billing.zzca, com.google.android.gms.internal.play_billing.zzbt
    public final zzbw i() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.play_billing.zzca, com.google.android.gms.internal.play_billing.zzbt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.h.listIterator(0);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    /* renamed from: k */
    public final zzck iterator() {
        return this.h.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.g.size();
    }
}
