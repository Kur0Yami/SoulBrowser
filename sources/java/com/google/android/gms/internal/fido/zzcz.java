package com.google.android.gms.internal.fido;

import android.support.v4.media.a;
import java.util.Iterator;

/* loaded from: classes3.dex */
final class zzcz extends zzcf {
    public final transient Object h;

    public zzcz(Object obj) {
        this.h = obj;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int a(Object[] objArr) {
        objArr[0] = this.h;
        return 1;
    }

    @Override // com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.h.equals(obj);
    }

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.h.hashCode();
    }

    @Override // com.google.android.gms.internal.fido.zzby
    /* renamed from: i */
    public final zzdc iterator() {
        return new zzcm(this.h);
    }

    @Override // com.google.android.gms.internal.fido.zzcf, com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzcm(this.h);
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc r() {
        Object[] objArr = {this.h};
        for (int i = 0; i < 1; i++) {
            zzdd zzddVar = zzcc.f;
            if (objArr[i] == null) {
                throw new NullPointerException(a.e(i, "at index "));
            }
        }
        return zzcc.q(1, objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return a.l("[", this.h.toString(), "]");
    }
}
