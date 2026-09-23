package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgvo extends zzgtn {
    public final transient Object h;

    public zzgvo(Object obj) {
        obj.getClass();
        this.h = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    /* renamed from: a */
    public final zzgvr iterator() {
        return new zzgtv(this.h);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.h.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgtn, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.h.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzgtn, com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzgtv(this.h);
    }

    @Override // com.google.android.gms.internal.ads.zzgtn, com.google.android.gms.internal.ads.zzgsz
    public final zzgtd k() {
        return zzgtd.r(this.h);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final boolean m() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int p(int i, Object[] objArr) {
        objArr[i] = this.h;
        return i + 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.h.toString();
        return android.support.v4.media.a.q(new StringBuilder(String.valueOf(obj).length() + 2), "[", obj, "]");
    }
}
