package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzik extends zzhz {
    public final transient Object h;

    public zzik(Object obj) {
        this.h = obj;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    /* renamed from: a */
    public final zzil iterator() {
        return new zzia(this.h);
    }

    @Override // com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.h.equals(obj);
    }

    @Override // com.google.android.gms.internal.cast.zzhz, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.h.hashCode();
    }

    @Override // com.google.android.gms.internal.cast.zzhz, com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzia(this.h);
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int k(Object[] objArr) {
        objArr[0] = this.h;
        return 1;
    }

    @Override // com.google.android.gms.internal.cast.zzhz
    public final zzhv m() {
        throw null;
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
