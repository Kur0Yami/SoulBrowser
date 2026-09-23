package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* loaded from: classes.dex */
final class zzgvb extends zzgtn {
    public final transient zzgtg h;
    public final transient zzgtd i;

    public zzgvb(zzgtg zzgtgVar, zzgtd zzgtdVar) {
        this.h = zzgtgVar;
        this.i = zzgtdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    /* renamed from: a */
    public final zzgvr iterator() {
        return this.i.listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (this.h.get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgtn, com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.i.listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzgtn, com.google.android.gms.internal.ads.zzgsz
    public final zzgtd k() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final boolean m() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int p(int i, Object[] objArr) {
        return this.i.p(i, objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.h.size();
    }
}
