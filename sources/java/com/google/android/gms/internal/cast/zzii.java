package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzii extends zzhz {
    public static final Object[] m;
    public static final zzii n;
    public final transient Object[] h;
    public final transient int i;
    public final transient Object[] j;
    public final transient int k;
    public final transient int l;

    static {
        Object[] objArr = new Object[0];
        m = objArr;
        n = new zzii(objArr, objArr, 0, 0, 0);
    }

    public zzii(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        this.h = objArr;
        this.i = i;
        this.j = objArr2;
        this.k = i2;
        this.l = i3;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    /* renamed from: a */
    public final zzil iterator() {
        return m().listIterator(0);
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final Object[] c() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.j;
            if (objArr.length != 0) {
                int a2 = zzho.a(obj.hashCode());
                while (true) {
                    int i = a2 & this.k;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    a2 = i + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int g() {
        return 0;
    }

    @Override // com.google.android.gms.internal.cast.zzhz, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int i() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.cast.zzhz, com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return m().listIterator(0);
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int k(Object[] objArr) {
        Object[] objArr2 = this.h;
        int i = this.l;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // com.google.android.gms.internal.cast.zzhz
    public final zzhv q() {
        return zzhv.p(this.l, this.h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.l;
    }
}
